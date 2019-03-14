echo "manual" > /sys/class/drm/card0/device/power_dpm_force_performance_level

echo "s 0 852 800" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "s 1 991 900" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "s 2 1084 910" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "s 3 1138 930" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "s 4 1200 960" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "s 5 1401 965" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "s 6 1512 975" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "s 7 1612 1020" > /sys/class/drm/card0/device/pp_od_clk_voltage
 
echo "m 0 167 800" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "m 1 500 900" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "m 2 800 910" > /sys/class/drm/card0/device/pp_od_clk_voltage
echo "m 3 1050 965" > /sys/class/drm/card0/device/pp_od_clk_voltage
 
echo "c" > /sys/class/drm/card0/device/pp_od_clk_voltage
