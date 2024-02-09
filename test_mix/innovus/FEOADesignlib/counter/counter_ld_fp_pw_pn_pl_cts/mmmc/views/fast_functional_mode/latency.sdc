set_clock_latency 0.8  [get_clocks {CLK}]
set_clock_latency -source -early -min -rise  0.49515 [get_ports {clk}] -clock CLK 
set_clock_latency -source -early -min -fall  0.46665 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -rise  0.49515 [get_ports {clk}] -clock CLK 
set_clock_latency -source -late -min -fall  0.46665 [get_ports {clk}] -clock CLK 
