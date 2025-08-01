set_clock_latency 0.8  [get_clocks {CLK}]
set_clock_latency -source -early -max -rise  0.117037 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -max -fall  0.0784371 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -rise  0.117037 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -max -fall  0.0784371 [get_ports {clk}] -clock CLK 
