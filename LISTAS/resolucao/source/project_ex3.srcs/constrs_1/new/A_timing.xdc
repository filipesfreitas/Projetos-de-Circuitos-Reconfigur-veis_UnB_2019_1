### Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name clk_in -period 9.00 -waveform {0 4.5} [get_ports clk]


set_input_delay -clock clkin -max 2.5 [get_ports reset]
set_input_delay -clock clkin -min 1.5 [get_ports reset]

set_input_delay -clock clkin -max 1.750 [get_ports start]
set_input_delay -clock clkin -min 0.500 [get_ports start]



