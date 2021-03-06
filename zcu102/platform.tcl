# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /tmp/git_export1/zcu102/platform.tcl
# 
# OR launch xsct and run below command.
# source /tmp/git_export1/zcu102/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zcu102}\
-hw {/proj/xbuilds/2020.2_daily_latest/installs/lin64/Vitis/2020.2/data/embeddedsw/lib/fixed_hwplatforms/zcu102.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/tmp/git_export1}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {zcu102}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
