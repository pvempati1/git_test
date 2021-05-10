# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /tmp/git_export1/zc702/platform.tcl
# 
# OR launch xsct and run below command.
# source /tmp/git_export1/zc702/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zc702}\
-hw {/proj/xbuilds/2020.2_daily_latest/installs/lin64/Vitis/2020.2/data/embeddedsw/lib/fixed_hwplatforms/zc702.xsa}\
-no-boot-bsp -fsbl-target {psu_cortexa53_0} -out {/tmp/git_export1}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {zc702}
platform generate -quick
platform generate
