# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Load common and sub-module ruckus.tcl files
loadRuckusTcl $::env(TOP_DIR)/submodules/surf
loadRuckusTcl $::env(TOP_DIR)/submodules/atlas-rd53-fw-lib
loadRuckusTcl $::env(TOP_DIR)/submodules/axi-pcie-core/hardware/XilinxKc705
loadRuckusTcl $::env(TOP_DIR)/common/fmc

# Load local source Code and constraints
loadSource      -dir "$::DIR_PATH/hdl"
loadConstraints -dir "$::DIR_PATH/hdl"

# Load the simulation testbed
loadSource -sim_only -dir "$::DIR_PATH/tb"
set_property top {AtlasRd53FmcXilinxKc705PcieTb} [get_filesets sim_1]
