open_hw
connect_hw_server
open_hw_target
current_hw_device [get_hw_devices xcvu9p_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xcvu9p_0] 0]
set_property PROBES.FILE {../../VCU118_Aparajit_bitfiles/bitfile_24aug/engine_ethernet.fpgaTop.vcu118.ltx} [get_hw_devices xcvu9p_0]
refresh_hw_device [lindex [get_hw_devices xcvu9p_0] 0]

set_property OUTPUT_VALUE 1 [get_hw_probes RESET_TO_PROCESSOR -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
commit_hw_vio [get_hw_probes {RESET_TO_PROCESSOR} -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
set_property OUTPUT_VALUE 0 [get_hw_probes RESET_TO_PROCESSOR -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
commit_hw_vio [get_hw_probes {RESET_TO_PROCESSOR} -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
set_property OUTPUT_VALUE 1 [get_hw_probes RESET_TO_NIC -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
commit_hw_vio [get_hw_probes {RESET_TO_NIC} -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
set_property OUTPUT_VALUE 0 [get_hw_probes RESET_TO_NIC -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
commit_hw_vio [get_hw_probes {RESET_TO_NIC} -of_objects [get_hw_vios -of_objects [get_hw_devices xcvu9p_0] -filter {CELL_NAME=~"vio_inst"}]]
