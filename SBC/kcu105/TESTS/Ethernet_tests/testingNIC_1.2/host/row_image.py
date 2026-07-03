import socket
import struct
import time
import select
import numpy as np
from PIL import Image

# --------- Configuration ---------
INTERFACE = "enp2s0"
DESTINATION_MAC = "00:0a:35:1d:6e:a8"
SOURCE_MAC = "bc:fc:e7:14:57:a8"
ETHERTYPE = 0x88B5
IMAGE_PATH = "gray.png"
OUTPUT_IMAGE_PATH = "gray_received.png"
# ---------------------------------

def mac_to_bytes(mac_address):
    return struct.pack('!6B', *[int(x, 16) for x in mac_address.split(':')])

def send_ethernet_frame(s, destination_mac, source_mac, ethertype, payload):
    ethernet_header = struct.pack('!6s6sH',
                                 mac_to_bytes(destination_mac),
                                 mac_to_bytes(source_mac),
                                 ethertype)
    frame = ethernet_header + payload
    s.send(frame)

def receive_packet(s, timeout=1.0):
    ready_to_read, _, _ = select.select([s], [], [], timeout)
    if ready_to_read:
        data, addr = s.recvfrom(1514)
        return data
    return None

def calculate_image_rtt():
    # Load grayscale image
    img = Image.open(IMAGE_PATH).convert("L")
    img_np = np.array(img)
    rows, cols = img_np.shape
    print(f"Image loaded: {rows} rows x {cols} cols")

    rtt_times = []
    received_rows = []
    packets_transmitted = 0
    packets_received = 0
    start_time_total = time.time()

    with socket.socket(socket.AF_PACKET, socket.SOCK_RAW, socket.htons(ETHERTYPE)) as s_recv:
        s_recv.bind((INTERFACE, 0))

        with socket.socket(socket.AF_PACKET, socket.SOCK_RAW, socket.htons(ETHERTYPE)) as s_send:
            s_send.bind((INTERFACE, 0))

            for i in range(rows):
                row_payload = bytes(img_np[i, :])

                start_time = time.time()
                send_ethernet_frame(s_send, DESTINATION_MAC, SOURCE_MAC, ETHERTYPE, row_payload)
                packets_transmitted += 1

                received_data = receive_packet(s_recv)

                if received_data:
                    end_time = time.time()
                    rtt = (end_time - start_time) * 1000
                    rtt_times.append(rtt)
                    packets_received += 1

                    # Strip Ethernet header (first 14 bytes) to get the payload
                    payload_data = received_data[14:]
                    if len(payload_data) >= cols:
                        received_rows.append(payload_data[:cols])
                    else:
                        print(f"Warning: Received row {i+1} has insufficient data.")
                        received_rows.append(b'\x00' * cols)

                    print(f"Row {i+1}/{rows} sent and received. RTT: {rtt:.3f} ms")
                else:
                    print(f"Row {i+1}/{rows} sent. Timeout waiting for response.")
                    received_rows.append(b'\x00' * cols)  # Fill with black row on timeout

    end_time_total = time.time()
    total_time = (end_time_total - start_time_total) * 1000
    packet_loss = ((packets_transmitted - packets_received) / packets_transmitted) * 100 if packets_transmitted > 0 else 0

    print("\n--- Image Transmission Statistics ---")
    print(f"Packets (rows) transmitted: {packets_transmitted}")
    print(f"Packets (rows) received: {packets_received}")
    print(f"Packet loss: {packet_loss:.2f}%")
    print(f"Total time: {total_time/1000:.3f} s")

    if rtt_times:
        min_rtt = min(rtt_times)
        max_rtt = max(rtt_times)
        avg_rtt = sum(rtt_times) / len(rtt_times)
        stdev_rtt = np.std(rtt_times)
        print(f"RTT min/avg/max/stdev = {min_rtt:.3f}/{avg_rtt:.3f}/{max_rtt:.3f}/{stdev_rtt:.3f} ms")
    else:
        print("No RTT data available.")

    # Save received image
    if received_rows:
        received_img_np = np.array([list(row) for row in received_rows], dtype=np.uint8)
        Image.fromarray(received_img_np, mode='L').save(OUTPUT_IMAGE_PATH)
        print(f"\n✅ Received image saved as: {OUTPUT_IMAGE_PATH}")
    else:
        print("❌ No image data received to reconstruct.")

if __name__ == "__main__":
    calculate_image_rtt()
