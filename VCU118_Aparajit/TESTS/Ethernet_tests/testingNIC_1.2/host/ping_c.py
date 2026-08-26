
import socket
import struct
import time
import select
import argparse
import numpy as np
#sudo python3 ping_kcu105.py -i enp2s0 -n 10
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

def calculate_rtt(interface, dest_mac, src_mac, ethertype, payload, packets_to_send=10):
    rtt_times = []
    packets_transmitted = 0
    packets_received = 0
    start_time_total = time.time()

    with socket.socket(socket.AF_PACKET, socket.SOCK_RAW, socket.htons(ethertype)) as s_recv:
        s_recv.bind((interface, 0))
        with socket.socket(socket.AF_PACKET, socket.SOCK_RAW, socket.htons(ethertype)) as s_send:
            s_send.bind((interface, 0))

            for i in range(packets_to_send):
                start_time = time.time()
                send_ethernet_frame(s_send, dest_mac, src_mac, ethertype, payload)
                packets_transmitted += 1

                received_data = receive_packet(s_recv)

                if received_data:
                    end_time = time.time()
                    rtt = (end_time - start_time) * 1000
                    rtt_times.append(rtt)
                    packets_received += 1

                    # Decode and print received payload for verification
                    rx_payload = received_data[14:]  # strip 14-byte Ethernet header
                    print(f"Packet {i+1}: RTT={rtt:.3f}ms | "
                          f"RX payload (hex): {rx_payload[:16].hex()}")
                else:
                    print(f"Packet {i+1}: TIMEOUT — no response from KCU105")

    end_time_total = time.time()
    total_time = end_time_total - start_time_total
    packet_loss = ((packets_transmitted - packets_received) / packets_transmitted) * 100

    print("\n--- KCU105 SGMII Ping Statistics ---")
    print(f"Interface:            {interface}")
    print(f"Destination MAC:      {dest_mac}")
    print(f"Ethertype:            0x{ethertype:04X}")
    print(f"Packets transmitted:  {packets_transmitted}")
    print(f"Packets received:     {packets_received}")
    print(f"Packet loss:          {packet_loss:.2f}%")
    print(f"Total time:           {total_time:.3f}s")

    if rtt_times:
        print(f"RTT min/avg/max/stdev = "
              f"{min(rtt_times):.3f}/"
              f"{sum(rtt_times)/len(rtt_times):.3f}/"
              f"{max(rtt_times):.3f}/"
              f"{np.std(rtt_times):.3f} ms")
    else:
        print("No RTT data — check physical connection and IP config.")

def generate_default_payload(payload_length):
    base = "0123456789ABCDEF"
    return ((base * ((payload_length // len(base)) + 1))[:payload_length])

if __name__ == "__main__":
    # -----------------------------------------------
    # KCU105-specific defaults
    # -----------------------------------------------
    DEFAULT_INTERFACE    = "enp2s0"          # <- change to your PC interface
    DEFAULT_DEST_MAC     = "00:0A:35:1D:6E:A8"  # KCU105 fpga_core local_mac
    DEFAULT_SRC_MAC      = "bc:fc:e7:14:57:a8"  # your PC NIC MAC
    DEFAULT_ETHERTYPE    = 0x88B5
    DEFAULT_PAYLOAD_LEN  = 58
    DEFAULT_PACKETS      = 10

    parser = argparse.ArgumentParser(description="KCU105 SGMII raw Ethernet ping test")
    parser.add_argument("-i", "--interface",   default=DEFAULT_INTERFACE)
    parser.add_argument("-d", "--destination", default=DEFAULT_DEST_MAC)
    parser.add_argument("-s", "--source",      default=DEFAULT_SRC_MAC)
    parser.add_argument("-e", "--ethertype",   type=lambda x: int(x,16),
                                               default=DEFAULT_ETHERTYPE)
    parser.add_argument("-l", "--length",      type=int, default=DEFAULT_PAYLOAD_LEN)
    parser.add_argument("-n", "--packets",     type=int, default=DEFAULT_PACKETS)
    args = parser.parse_args()

    payload_str = generate_default_payload(args.length)
    payload = payload_str.encode('utf-8')

    calculate_rtt(args.interface, args.destination, args.source,
                  args.ethertype, payload, args.packets)
