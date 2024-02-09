###############################################################
#  Generated by:      Cadence Innovus 21.18-s099_1
#  OS:                Linux x86_64(Host ID phoenix)
#  Generated on:      Sat Feb  3 13:59:04 2024
#  Design:            counter
#  Command:           saveDesign counter_ld_fp_pw_pn_pl
###############################################################
current_design counter
set_clock_gating_check -rise -setup 0 
set_clock_gating_check -fall -setup 0 
create_clock [get_ports {clk}]  -name CLK -period 10.000000 -waveform {0.000000 5.000000}
set_load -pin_load -max  1  [get_ports {out[7]}]
set_load -pin_load -min  0.01  [get_ports {out[7]}]
set_load -pin_load -max  1  [get_ports {out[6]}]
set_load -pin_load -min  0.01  [get_ports {out[6]}]
set_load -pin_load -max  1  [get_ports {out[5]}]
set_load -pin_load -min  0.01  [get_ports {out[5]}]
set_load -pin_load -max  1  [get_ports {out[4]}]
set_load -pin_load -min  0.01  [get_ports {out[4]}]
set_load -pin_load -max  1  [get_ports {out[3]}]
set_load -pin_load -min  0.01  [get_ports {out[3]}]
set_load -pin_load -max  1  [get_ports {out[2]}]
set_load -pin_load -min  0.01  [get_ports {out[2]}]
set_load -pin_load -max  1  [get_ports {out[1]}]
set_load -pin_load -min  0.01  [get_ports {out[1]}]
set_load -pin_load -max  1  [get_ports {out[0]}]
set_load -pin_load -min  0.01  [get_ports {out[0]}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {enable}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {enable}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {enable}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {enable}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {clk}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {clk}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {clk}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {clk}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -min -pin Q [get_ports {reset}]
set_driving_cell -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -min -pin Q [get_ports {reset}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -rise -max -pin Q [get_ports {reset}]
set_driving_cell -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -fall -max -pin Q [get_ports {reset}]
set_wire_load_mode enclosed
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {enable}]
set_input_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {enable}]
set_input_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {reset}]
set_input_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {reset}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[6]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[6]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[4]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[4]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[2]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[2]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[0]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[0]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[7]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[7]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[5]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[5]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[3]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[3]}]
set_output_delay -add_delay 0.1 -min -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[1]}]
set_output_delay -add_delay 2 -max -network_latency_included -clock [get_clocks {CLK}] [get_ports {out[1]}]
set_clock_uncertainty 0.4 -hold [get_clocks {CLK}]
set_clock_uncertainty 1 -setup [get_clocks {CLK}]
