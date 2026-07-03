# =============================================================================
# KCU105 Reset Sequencing Script
#
# Required Behaviour:
#
# 1. After bitstream programming:
#       rst_125mhz_int_uc = 1
#
# 2. Wait 8 seconds for DDR calibration
#
# 3. Pulse RESET_TO_PROCESSOR:
#       0 -> 1 -> 0
#
# 4. Pulse RESET_TO_NIC:
#       0 -> 1 -> 0
#
# 5. Finally release rst_125mhz_int_uc:
#       1 -> 0
#
# IMPORTANT:
# We EXPLICITLY force rst_125mhz_int_uc = 1 after programming
# because Vivado VIO may retain previous programmed state.
#
# =============================================================================

# =============================================================================
# Configuration
# =============================================================================

set BITSTREAM_PATH \
"../vivado_synth/processor_1x1x32.fpgaTop.kcu105.bit"
#path_to_bitstream
set LTX_PATH \
"../vivado_synth/processor_1x1x32.fpgaTop.kcu105.ltx"

# Delay after programming for DDR calibration
set DRAM_CAL_DELAY_MS 8000

# Reset pulse width
set PULSE_DELAY_MS 500

# VIO instance names
set VIO_ETH  "hw_vio_1"
set VIO_MAIN "hw_vio_2"


open_hw_manager

puts "Connecting to hw_server..."

connect_hw_server

puts "Opening hardware target..."

open_hw_target

# =============================================================================
# Step 1 : Get Device
# =============================================================================

puts "Fetching hardware device..."

set device [lindex [get_hw_devices] 0]

current_hw_device $device
refresh_hw_device $device

puts "Connected device:"
puts $device

# =============================================================================
# Step 2 : Program FPGA
# =============================================================================

puts "Programming FPGA..."

set_property PROGRAM.FILE $BITSTREAM_PATH $device
set_property PROBES.FILE  $LTX_PATH       $device

program_hw_devices $device

refresh_hw_device $device

puts "FPGA programmed successfully."

# =============================================================================
# Step 3 : Get VIO Handles
# =============================================================================

puts "Fetching VIO handles..."

set vio_eth  [get_hw_vios -of_objects $device $VIO_ETH]
set vio_main [get_hw_vios -of_objects $device $VIO_MAIN]

puts "vio_eth  = $vio_eth"
puts "vio_main = $vio_main"

# =============================================================================
# Step 4 : Get Probe Handles
# =============================================================================

puts "Fetching probe handles..."

set probe_rst_uc \
[get_hw_probes -of_objects $vio_eth \
"ETH_TOP_inst/fpga_top_kcu105_inst/rst_125mhz_int_uc"]

set probe_rst_proc \
[get_hw_probes -of_objects $vio_main RESET_TO_PROCESSOR]

set probe_rst_nic \
[get_hw_probes -of_objects $vio_main RESET_TO_NIC]

puts "probe_rst_uc   = $probe_rst_uc"
puts "probe_rst_proc = $probe_rst_proc"
puts "probe_rst_nic  = $probe_rst_nic"

# =============================================================================
# Step 5 : FORCE rst_125mhz_int_uc HIGH
# =============================================================================

puts "Forcing rst_125mhz_int_uc HIGH..."

# IMPORTANT:
# Explicitly drive HIGH after programming.
# Prevents old VIO latched state from previous run.

set_property OUTPUT_VALUE {1} $probe_rst_uc
commit_hw_vio $vio_eth

after 200

# =============================================================================
# Step 6 : Wait for DRAM Calibration
# =============================================================================

puts "Waiting 2 seconds for DRAM calibration..."

after $DRAM_CAL_DELAY_MS

puts "DRAM calibration wait complete."

# =============================================================================
# Step 7 : Pulse RESET_TO_PROCESSOR
# =============================================================================

puts "Pulsing RESET_TO_PROCESSOR..."

# 0
set_property OUTPUT_VALUE {0} $probe_rst_proc
commit_hw_vio $vio_main
after $PULSE_DELAY_MS

# 1
set_property OUTPUT_VALUE {1} $probe_rst_proc
commit_hw_vio $vio_main
after $PULSE_DELAY_MS

# 0
set_property OUTPUT_VALUE {0} $probe_rst_proc
commit_hw_vio $vio_main
after $PULSE_DELAY_MS

puts "RESET_TO_PROCESSOR pulse complete."

# =============================================================================
# Step 8 : Pulse RESET_TO_NIC
# =============================================================================

puts "Pulsing RESET_TO_NIC..."

# 0
set_property OUTPUT_VALUE {0} $probe_rst_nic
commit_hw_vio $vio_main
after $PULSE_DELAY_MS

# 1
set_property OUTPUT_VALUE {1} $probe_rst_nic
commit_hw_vio $vio_main
after $PULSE_DELAY_MS

# 0
set_property OUTPUT_VALUE {0} $probe_rst_nic
commit_hw_vio $vio_main
after $PULSE_DELAY_MS

puts "RESET_TO_NIC pulse complete."

# =============================================================================
# Step 9 : Release rst_125mhz_int_uc
# =============================================================================

puts "Releasing rst_125mhz_int_uc LOW..."

set_property OUTPUT_VALUE {0} $probe_rst_uc
commit_hw_vio $vio_eth

after 200

puts "rst_125mhz_int_uc released LOW."

# =============================================================================
# Done
# =============================================================================

puts "Reset sequence completed successfully."

# =============================================================================
# End
# =============================================================================
