######################################################################

# Created by Genus(TM) Synthesis Solution 21.18-s082_1 on Sat Feb 03 10:53:10 EST 2024

# This file contains the Genus script for design:counter

######################################################################

set_db -quiet information_level 9
set_db -quiet init_lib_search_path ../liberty/LIBERTY_STD_CELLS
set_db -quiet design_mode_process no_value
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_route_early_global false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 34 0.0 5.0} {to_generic 1 35 0 6} {first_condense 0 35 0 6} {PBS_Generic_Opt-Post 1 35 0.9930680000000001 5.993068} {{PBS_Generic-Postgen HBO Optimizations} 0 35 0.0 5.993068} {PBS_TechMap-Start 0 35 0.0 5.993068} {{PBS_TechMap-Premap HBO Optimizations} 0 35 0.0 5.993068} {second_condense 1 36 0 6} {reify 0 36 0 6} {global_incr_map 0 36 0 6} {{PBS_Techmap-Global Mapping} 1 36 -0.024168999999999663 5.968899} {{PBS_TechMap-Datapath Postmap Operations} 0 36 1.0 6.968899} {{PBS_TechMap-Postmap HBO Optimizations} 0 36 0.0 6.968899} {{PBS_TechMap-Postmap Clock Gating} 0 36 0.0 6.968899} {{PBS_TechMap-Postmap Cleanup} 0 36 0.0 6.968899} {PBS_Techmap-Post_MBCI 0 36 0.0 6.968899} {incr_opt 1 37 0 7} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet hdl_error_on_latch true
set_db -quiet hdl_error_on_blackbox true
set_db -quiet tinfo_tstamp_file .rs_saul.tstamp
set_db -quiet metric_enable true
set_db -quiet flow_metrics_snapshot_uuid faf50b36-33a2-4fa1-ac29-1e3344ecb10d
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet interconnect_mode wireload
set_db -quiet wireload_mode enclosed
set_db -quiet operating_conditions operating_condition:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/slow_3_00V_125C
set_db -quiet wireload_selection wireload_selection:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/4_metls_routing
set_db -quiet operating_condition:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/slow_3_00V_125C .tree_type worst_case_tree
set_db -quiet operating_condition:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name CLK -domain domain_1 -period 10000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:counter port:counter/clk
set_db -quiet clock:counter/CLK .clock_network_early_latency {800.0 800.0 800.0 800.0}
set_db -quiet clock:counter/CLK .clock_network_late_latency {800.0 800.0 800.0 800.0}
set_db -quiet clock:counter/CLK .clock_setup_uncertainty {1000.0 1000.0}
set_db -quiet clock:counter/CLK .clock_hold_uncertainty {400.0 400.0}
define_cost_group -design design:counter -name CLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:counter/CLK -name create_clock_delay_domain_1_CLK_R_0 port:counter/clk
set_db -quiet external_delay:counter/create_clock_delay_domain_1_CLK_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:counter/CLK -edge_fall -name create_clock_delay_domain_1_CLK_F_0 port:counter/clk
set_db -quiet external_delay:counter/create_clock_delay_domain_1_CLK_F_0 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del {{port:counter/out[7]}}
set_db -quiet external_delay:counter/ou_del .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del_1_1 {{port:counter/out[6]}}
set_db -quiet external_delay:counter/ou_del_1_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del_2_1 {{port:counter/out[5]}}
set_db -quiet external_delay:counter/ou_del_2_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del_3_1 {{port:counter/out[4]}}
set_db -quiet external_delay:counter/ou_del_3_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del_4_1 {{port:counter/out[3]}}
set_db -quiet external_delay:counter/ou_del_4_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del_5_1 {{port:counter/out[2]}}
set_db -quiet external_delay:counter/ou_del_5_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del_6_1 {{port:counter/out[1]}}
set_db -quiet external_delay:counter/ou_del_6_1 .clock_network_latency_included true
external_delay -accumulate -output {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name ou_del_7_1 {{port:counter/out[0]}}
set_db -quiet external_delay:counter/ou_del_7_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_8_1 {{port:counter/out[7]}}
set_db -quiet external_delay:counter/ou_del_8_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_9_1 {{port:counter/out[6]}}
set_db -quiet external_delay:counter/ou_del_9_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_10_1 {{port:counter/out[5]}}
set_db -quiet external_delay:counter/ou_del_10_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_11_1 {{port:counter/out[4]}}
set_db -quiet external_delay:counter/ou_del_11_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_12_1 {{port:counter/out[3]}}
set_db -quiet external_delay:counter/ou_del_12_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_13_1 {{port:counter/out[2]}}
set_db -quiet external_delay:counter/ou_del_13_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_14_1 {{port:counter/out[1]}}
set_db -quiet external_delay:counter/ou_del_14_1 .clock_network_latency_included true
external_delay -accumulate -output {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name ou_del_15_1 {{port:counter/out[0]}}
set_db -quiet external_delay:counter/ou_del_15_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name in_del port:counter/enable
set_db -quiet external_delay:counter/in_del .clock_network_latency_included true
external_delay -accumulate -input {no_value no_value 2000.0 2000.0} -clock clock:counter/CLK -name in_del_15_1 port:counter/reset
set_db -quiet external_delay:counter/in_del_15_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name in_del_16_1 port:counter/enable
set_db -quiet external_delay:counter/in_del_16_1 .clock_network_latency_included true
external_delay -accumulate -input {100.0 100.0 no_value no_value} -clock clock:counter/CLK -name in_del_17_1 port:counter/reset
set_db -quiet external_delay:counter/in_del_17_1 .clock_network_latency_included true
path_group -paths [specify_paths -lenient -to clock:counter/CLK]  -name CLK -group cost_group:counter/CLK -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:counter .seq_reason_deleted_internal {}
set_db -quiet design:counter .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 943} {cell_count 25} {utilization  0.00} {runtime 1 35 0 6} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 1176} {cell_count 36} {utilization  0.00} {runtime 0 35 0 6} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 1176} {cell_count 36} {utilization  0.00} {runtime 1 36 0 6} }{reify {wns 2496} {tns 0} {vep 0} {area 1094} {cell_count 47} {utilization  0.00} {runtime 0 36 0 6} }{global_incr_map {wns 2120} {tns 0} {vep 0} {area 1058} {cell_count 47} {utilization  0.00} {runtime 0 36 0 6} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 948} {cell_count 43} {utilization  0.00} {runtime 1 37 0 7} }}
set_db -quiet design:counter .seq_mbci_coverage 0.0
set_db -quiet design:counter .hdl_filelist {{default -v2001 {SYNTHESIS} {../src/counter.v} {} {}}}
set_db -quiet design:counter .hdl_user_name counter
set_db -quiet design:counter .verification_directory fv/counter
set_db -quiet design:counter .lp_clock_gating_max_flops inf
set_db -quiet port:counter/enable .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:counter/enable .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:counter/enable .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:counter/enable .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:counter/enable .original_name enable
set_db -quiet port:counter/clk .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:counter/clk .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:counter/clk .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:counter/clk .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:counter/clk .original_name clk
set_db -quiet port:counter/reset .driver_pin_rise_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:counter/reset .driver_pin_fall_min lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX2/Q
set_db -quiet port:counter/reset .driver_pin_rise_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:counter/reset .driver_pin_fall_max lib_pin:default_emulate_libset_max/D_CELLS_JI3V_LPMOS_MOS3LP_slow_3_00V_125C/BUJI3VX16/Q
set_db -quiet port:counter/reset .original_name reset
set_db -quiet {port:counter/out[7]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[7]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[7]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[7]} .original_name {out[7]}
set_db -quiet {port:counter/out[7]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:counter/out[6]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[6]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[6]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[6]} .original_name {out[6]}
set_db -quiet {port:counter/out[6]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:counter/out[5]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[5]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[5]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[5]} .original_name {out[5]}
set_db -quiet {port:counter/out[5]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:counter/out[4]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[4]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[4]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[4]} .original_name {out[4]}
set_db -quiet {port:counter/out[4]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:counter/out[3]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[3]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[3]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[3]} .original_name {out[3]}
set_db -quiet {port:counter/out[3]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:counter/out[2]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[2]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[2]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[2]} .original_name {out[2]}
set_db -quiet {port:counter/out[2]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:counter/out[1]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[1]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[1]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[1]} .original_name {out[1]}
set_db -quiet {port:counter/out[1]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {port:counter/out[0]} .external_pin_cap_min 10.0
set_db -quiet {port:counter/out[0]} .external_capacitance_max {1000.0 1000.0}
set_db -quiet {port:counter/out[0]} .external_capacitance_min 10.0
set_db -quiet {port:counter/out[0]} .original_name {out[0]}
set_db -quiet {port:counter/out[0]} .external_pin_cap {1000.0 1000.0}
set_db -quiet {inst:counter/out_reg[7]} .original_name {{out[7]}}
set_db -quiet {inst:counter/out_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[7]} .single_bit_orig_name {out[7]}
set_db -quiet {inst:counter/out_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[7]/Q} .original_name {out[7]/q}
set_db -quiet {inst:counter/out_reg[6]} .original_name {{out[6]}}
set_db -quiet {inst:counter/out_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[6]} .single_bit_orig_name {out[6]}
set_db -quiet {inst:counter/out_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[6]/Q} .original_name {out[6]/q}
set_db -quiet {inst:counter/out_reg[5]} .original_name {{out[5]}}
set_db -quiet {inst:counter/out_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[5]} .single_bit_orig_name {out[5]}
set_db -quiet {inst:counter/out_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[5]/Q} .original_name {out[5]/q}
set_db -quiet {inst:counter/out_reg[4]} .original_name {{out[4]}}
set_db -quiet {inst:counter/out_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[4]} .single_bit_orig_name {out[4]}
set_db -quiet {inst:counter/out_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[4]/Q} .original_name {out[4]/q}
set_db -quiet {inst:counter/out_reg[3]} .original_name {{out[3]}}
set_db -quiet {inst:counter/out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[3]} .single_bit_orig_name {out[3]}
set_db -quiet {inst:counter/out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[3]/Q} .original_name {out[3]/q}
set_db -quiet {inst:counter/out_reg[2]} .original_name {{out[2]}}
set_db -quiet {inst:counter/out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[2]} .single_bit_orig_name {out[2]}
set_db -quiet {inst:counter/out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[2]/Q} .original_name {out[2]/q}
set_db -quiet {inst:counter/out_reg[1]} .original_name {{out[1]}}
set_db -quiet {inst:counter/out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[1]} .single_bit_orig_name {out[1]}
set_db -quiet {inst:counter/out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[1]/Q} .original_name {out[1]/q}
set_db -quiet {inst:counter/out_reg[0]} .original_name {{out[0]}}
set_db -quiet {inst:counter/out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:counter/out_reg[0]} .single_bit_orig_name {out[0]}
set_db -quiet {inst:counter/out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:counter/out_reg[0]/Q} .original_name {out[0]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 21.18-s082_1
## flowkit v21.12-s019_1
## Written on 10:53:10 03-Feb 2024
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_db flow_write_db_common false}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid faf50b36-33a2-4fa1-ac29-1e3344ecb10d}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}

#############################################################
#####   User Defined Attributes   ###########################

