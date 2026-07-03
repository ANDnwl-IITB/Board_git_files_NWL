NUM_COPIES = 4

# Read original file
with open("data.map", "r") as f:
    lines = [line.strip() for line in f if line.strip()]

# Parse addresses and data
entries = []
for line in lines:
    addr_str, value = line.split(":")
    addr = int(addr_str.strip(), 16)  # hex address
    entries.append((addr, value.strip()))

# Determine size of one copy
start_addr = entries[0][0]
end_addr = entries[-1][0]
n_entries = end_addr - start_addr + 1

# Write replicated file
with open("data_4threads.map", "w") as f:
    for copy in range(NUM_COPIES):
        offset = copy * n_entries

        for addr, value in entries:
            new_addr = addr + offset
            f.write(f"{new_addr:x}: {value}\n")

print(f"Generated data_4threads.map with {NUM_COPIES} copies.")
print(f"Entries per copy : {n_entries}")
print(f"Total entries     : {n_entries * NUM_COPIES}")
