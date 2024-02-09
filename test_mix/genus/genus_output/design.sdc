# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.18-s082_1 on Sat Feb 03 10:53:10 EST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design counter

create_clock -name "CLK" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_load -pin_load -min 0.01 [get_ports {out[7]}]
set_load -pin_load -max 1.0 [get_ports {out[7]}]
set_load -pin_load -min 0.01 [get_ports {out[6]}]
set_load -pin_load -max 1.0 [get_ports {out[6]}]
set_load -pin_load -min 0.01 [get_ports {out[5]}]
set_load -pin_load -max 1.0 [get_ports {out[5]}]
set_load -pin_load -min 0.01 [get_ports {out[4]}]
set_load -pin_load -max 1.0 [get_ports {out[4]}]
set_load -pin_load -min 0.01 [get_ports {out[3]}]
set_load -pin_load -max 1.0 [get_ports {out[3]}]
set_load -pin_load -min 0.01 [get_ports {out[2]}]
set_load -pin_load -max 1.0 [get_ports {out[2]}]
set_load -pin_load -min 0.01 [get_ports {out[1]}]
set_load -pin_load -max 1.0 [get_ports {out[1]}]
set_load -pin_load -min 0.01 [get_ports {out[0]}]
set_load -pin_load -max 1.0 [get_ports {out[0]}]
set_clock_gating_check -setup 0.0 
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[7]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[6]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[5]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[4]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[3]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[2]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[1]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports {out[0]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[7]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[6]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[5]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[4]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[3]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[2]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[1]}]
set_output_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports {out[0]}]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports enable]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -max 2.0 [get_ports reset]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports enable]
set_input_delay -clock [get_clocks CLK] -network_latency_included -add_delay -min 0.1 [get_ports reset]
set_operating_conditions slow_3_00V_125C
set_driving_cell -min -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [get_ports enable]
set_driving_cell -max -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [get_ports enable]
set_driving_cell -min -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [get_ports clk]
set_driving_cell -max -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [get_ports clk]
set_driving_cell -min -lib_cell BUJI3VX2 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [get_ports reset]
set_driving_cell -max -lib_cell BUJI3VX16 -library D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C -pin "Q" [get_ports reset]
set_wire_load_mode "enclosed"
set_clock_latency  0.8 [get_clocks CLK]
set_clock_uncertainty -setup 1.0 [get_clocks CLK]
set_clock_uncertainty -hold 0.4 [get_clocks CLK]
