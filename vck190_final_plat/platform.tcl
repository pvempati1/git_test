# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /tmp/git_export2/vck190_final_plat/platform.tcl
# 
# OR launch xsct and run below command.
# source /tmp/git_export2/vck190_final_plat/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vck190_final_plat}\
-hw {/proj/xbuilds/2020.2_daily_latest/installs/lin64/Vitis/2020.2/data/embeddedsw/lib/fixed_hwplatforms/vck190.xsa}\
-proc {psv_cortexa72_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/tmp/git_export2}

platform write
platform generate -domains 
platform active {vck190_final_plat}
platform generate
