set_property PACKAGE_PIN AC19 [get_ports clk]
set_property PACKAGE_PIN Y3 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports clk]


create_clock -period 10.000 -name abc -waveform {0.000 5.000} [get_ports clk]