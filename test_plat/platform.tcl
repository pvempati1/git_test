# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /tmp/xrt_api223fff/test_plat/platform.tcl
# 
# OR launch xsct and run below command.
# source /tmp/xrt_api223fff/test_plat/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {test_plat}\
-hw {/proj/xbuilds/SWIP/2021.1_0510_2201/installs/lin64/Vitis/2021.1/data/embeddedsw/lib/fixed_hwplatforms/zc702.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/tmp/xrt_api223fff}

platform write
platform generate -domains 
platform active {test_plat}
platform generate
