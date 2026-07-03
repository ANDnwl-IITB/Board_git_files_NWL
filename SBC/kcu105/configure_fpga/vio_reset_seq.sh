#!/bin/bash

# =============================================================================
# Run Vivado TCL Reset Script
# =============================================================================
pkill hw_server
# Vivado installation path
source path_to_folder/settings64.sh        #ex: /home/user_name/Vivado/2019.2/settings64.sh

# Path to TCL script
TCL_SCRIPT="path_to_folder/vio_reset_seq.tcl"

# Run Vivado in TCL batch mode
vivado -mode batch -source $TCL_SCRIPT
