##############################################################################################################
#####  
#####                                         PVS LVS COMPARISON
#####  
#####  Version                       :   23.10-p043
#####  NVN Run Start                 :   Fri Feb  9 20:04:31 2024
#####  ERC Summary File              :   ioring.sum
#####  Extraction Report File        :   ioring_lvs.sum
#####  Comparison Report File        :   ioring_lvs.sum.cls
#####  Top Cell                      :   ioring  <vs>  ioring
#####  
#####                                :      @     @
#####                                :       @   @ 
#####                                :        @ @  
#####  Run Result                    :     MISMATCH
#####                                :        @ @  
#####                                :       @   @ 
#####                                :      @     @
#####  
#####  Run Summary                   :   [ERROR] Connectivity Mismatches
#####                                :   [ERROR] Parameter Mismatches
#####                                :   [WARN]  Extraction Warnings (refer to Extraction Report File)
#####                                :   [INFO]  ERC Results: Empty
#####  
#####  Layout Design                 :   IORING ioring layout
#####  Schematic File                :   /home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/PvsLVS/ioring/ioring.cdl (cdl)
#####  Rules File                    :   /home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/PvsLVS/ioring/.config.rul
#####                                :   /home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/PvsLVS/ioring/.technology.rul
#####  Pin Swap File                 :   ioring_lvs.sum.cps
#####  
#####  Extraction CPU Time           :   0h 0m 2s - (2s)
#####  Extraction Exec Time          :   0h 0m 3s - (3s)
#####  Extraction Peak Memory Usage  :   70.00MB
#####  NVN CPU Time                  :   0h 0m 0s - (0s)                 
#####  NVN Exec Time                 :   0h 0m 0s - (0s)                 
#####  NVN Peak Memory Usage         :   280.65MB
#####  LVS Total CPU Time            :   0h 0m 2s - (2s)                 
#####  LVS Total Exec Time           :   0h 0m 3s - (3s)                 
#####  LVS Total Peak Memory Usage   :   280.65MB
#####  
##############################################################################################################


##############################################################################################################
#
#                                            CELL MATCH STATISTICS                                            
#
##############################################################################################################

Cell Statistic Descriptions                  | Count
---------------------------------------------+----------
Cells matched                                |         0
Cells expanded                               |         0
Cells not run                                |         0
Cells which mismatch                         |         1
---------------------------------------------+----------
Total                                        |         1


Cell Statistic Detail                        | Count
---------------------------------------------+----------
Cells with parameter mismatches              |         1
Cells with mismatched instance subtypes      |         0
Cells that have been blackboxed              |         0


##############################################################################################################
#
#                                             CELL MATCH SUMMARY                                              
#
##############################################################################################################

           |     Initial Pins     |     Compare Pins     |              | 
Cell       |   lay    :    sch    |   lay    :    sch    | Status       | Detail
-----------+----------+-----------+----------+-----------+--------------+-----------
ioring     |       28 :        28 |       28 :        28 | mismatch     | 


##############################################################################################################
#
#                                                  LVS RULES                                                  
#
##############################################################################################################

Command Line LVS Rule Values
----------------------------

    layout_primary                          ioring {-top_cell ioring}
    schematic_primary                       ioring {-source_top_cell ioring}

LVS Rules Given in the Rules File
---------------------------------

    lvs_abort                               -softchk                               no  
    lvs_abort                               -supply_error                          no  
    lvs_abort                               -check_device_for_property_rule        no  
    layout_path                             /home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/PvsLVS/ioring/ioring.gds
    layout_format                           gdsii
    schematic_path                          /home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/PvsLVS/ioring/ioring.cdl
    schematic_format                        cdl
    lvs_write_netlist                       -layout netlistLAYOUT
    lvs_write_netlist                       -schematic netlistSOURCE
    lvs_spice                               yes -replicate_devices
    lvs_spice                               yes -allow_unquoted_strings
    lvs_spice_multiplier_name               M 
                                             
    lvs_power_name                          VDD? DVDD VCC VDDA VDDB ADVDD VDDM 
    lvs_ground_name                         GND? DVSS VSS GROUND AGND DGND VSSM 
    lvs_device_type                         NMOS NEI_6
    lvs_device_type                         NMOS NEI_M_6
    lvs_device_type                         NMOS NELI_6
    lvs_device_type                         NMOS NELI_M_6
    lvs_device_type                         NMOS NELNAI_6
    lvs_device_type                         NMOS NELNAI_M_6
    lvs_device_type                         NMOS NESVTI_6
    lvs_device_type                         NMOS NESVTI_M_6
    lvs_device_type                         PMOS PE_5
    lvs_device_type                         PMOS PEL_5
    lvs_device_type                         PMOS PEI_5
    lvs_device_type                         PMOS PEI_M_5
    lvs_device_type                         PMOS PELI_5
    lvs_device_type                         PMOS PELI_M_5
    lvs_device_type                         PMOS PESVT_5
    lvs_device_type                         PMOS PESVTI_5
    lvs_device_type                         PMOS PESVTI_M_5
    lvs_device_type                         PMOS PMMA_BJT
    lvs_device_type                         PMOS PMA_BJT
    lvs_device_type                         PMOS PMMC_BJT
    lvs_device_type                         PMOS PHHV_BJT
    lvs_device_type                         LDDPMOS PMC_BJT
    lvs_device_type                         LDDPMOS PHV_BJT
    lvs_device_type                         NMOS NE3I_6
    lvs_device_type                         NMOS NE3I_M_6
    lvs_device_type                         NMOS ND3I_6
    lvs_device_type                         NMOS ND3I_M_6
    lvs_device_type                         NMOS NE3LNAI_6
    lvs_device_type                         NMOS NE3LNAI_M_6
    lvs_device_type                         PMOS PE3_5
    lvs_device_type                         PMOS PE3LN_5
    lvs_device_type                         PMOS PE3I_5
    lvs_device_type                         PMOS PE3I_M_5
    lvs_device_type                         PMOS PE3LNI_5
    lvs_device_type                         PMOS PE3LNI_M_5
    lvs_device_type                         PMOS PE3LNA_5
    lvs_device_type                         PMOS PE3LNAI_5
    lvs_device_type                         PMOS PE3LNAI_M_5
    lvs_all_cap_pins_swappable              no  
    lvs_ignore_ports                        no  
    lvs_compare_port_names                  yes 
    lvs_find_shorts                         no  
    lvs_break_ambig_max                     32
    lvs_filter                              no  -bipolar
    lvs_filter                              no  -mos
    lvs_filter                              no  -resistors
    lvs_filter                              no  -diodes
    lvs_filter                              no  -capacitors
    lvs_filter_device                       D ( p_dn ) -open
    lvs_filter_device                       D ( p_dbn ) -open
    lvs_filter_device                       D ( p_dp ) -open
    lvs_filter_device                       D ( p_dpndf ) -open
    lvs_filter_device                       D ( p_dnw ) -open
    lvs_filter_device                       D ( p_dhnw ) -open
    lvs_filter_device                       D ( p_dhpw ) -open
    lvs_filter_device                       D ( p_ddnw ) -open
    lvs_filter_device                       D ( p_ddnwmv ) -open
    lvs_filter_device                       D ( p_dipdnw ) -open
    lvs_filter_device                       D ( p_dipdnwmv ) -open
    lvs_filter_device                       D ( p_ddpldnw ) -open
    lvs_filter_device                       D ( p_dndf ) -open
    lvs_filter_device                       D ( p_dpdwhn ) -open
    lvs_filter_device                       D ( p_dwhn ) -open
    lvs_filter_device                       D ( p_dpdddnw ) -open
    lvs_filter_device                       D ( p_dnhpw ) -open
    lvs_filter_device                       D ( p_dphnw ) -open
    lvs_filter_device                       D ( p_dpdnwmv ) -open
    lvs_filter_device                       D ( p_dpdnw ) -open
    lvs_filter_device                       D ( p_dpwhn ) -open
    lvs_filter_device                       D ( p_dn3 ) -open
    lvs_filter_device                       D ( p_dnn3 ) -open
    lvs_filter_device                       D ( p_dn3dpl ) -open
    lvs_filter_device                       D ( p_dp3 ) -open
    lvs_filter_device                       D ( p_dnw3 ) -open
    lvs_reduce_split_gates                  no  
    lvs_recognize_gates                     -none
    lvs_reduce                              no  -parallel_bipolar
    lvs_reduce                              no  -parallel_caps
    lvs_reduce                              yes -parallel_diodes ...
    lvs_reduce                              yes -parallel_mos ...
    lvs_reduce                              no  -series_mos
    lvs_reduce                              no  -parallel_resistors
    lvs_reduce                              no  -series_caps
    lvs_reduce                              no  -series_resistors
    lvs_reduce_device                       MOSVC -parallel yes ...
    lvs_reduce_device                       MOSVCI -parallel yes ...
    lvs_reduce_device                       MOSVCI_M -parallel yes ...
    lvs_reduce_device                       MOSVC3 -parallel yes ...
    lvs_reduce_device                       MOSVC3I -parallel yes ...
    lvs_reduce_device                       MOSVC3I_M -parallel yes ...
    lvs_reduce_device                       tag_25v -parallel yes 
    lvs_reduce_device                       tag_60v -parallel yes 
    lvs_expand_cell_on_error                no  
    lvs_check_property                      MN W W -tolerance 1
    lvs_check_property                      MN L L -tolerance 1
    lvs_check_property                      MP W W -tolerance 1
    lvs_check_property                      MP L L -tolerance 1
    lvs_check_property                      NEI_6 W W -tolerance 1
    lvs_check_property                      NEI_6 L L -tolerance 1
    lvs_check_property                      NEI_M_6 W W -tolerance 1
    lvs_check_property                      NEI_M_6 L L -tolerance 1
    lvs_check_property                      NELI_6 W W -tolerance 1
    lvs_check_property                      NELI_6 L L -tolerance 1
    lvs_check_property                      NELI_M_6 W W -tolerance 1
    lvs_check_property                      NELI_M_6 L L -tolerance 1
    lvs_check_property                      NELNAI_6 W W -tolerance 1
    lvs_check_property                      NELNAI_6 L L -tolerance 1
    lvs_check_property                      NELNAI_M_6 W W -tolerance 1
    lvs_check_property                      NELNAI_M_6 L L -tolerance 1
    lvs_check_property                      NESVTI_6 W W -tolerance 1
    lvs_check_property                      NESVTI_6 L L -tolerance 1
    lvs_check_property                      NESVTI_M_6 W W -tolerance 1
    lvs_check_property                      NESVTI_M_6 L L -tolerance 1
    lvs_check_property                      NE3I_6 W W -tolerance 1
    lvs_check_property                      NE3I_6 L L -tolerance 1
    lvs_check_property                      NE3I_M_6 W W -tolerance 1
    lvs_check_property                      NE3I_M_6 L L -tolerance 1
    lvs_check_property                      ND3I_6 W W -tolerance 1
    lvs_check_property                      ND3I_6 L L -tolerance 1
    lvs_check_property                      ND3I_M_6 W W -tolerance 1
    lvs_check_property                      ND3I_M_6 L L -tolerance 1
    lvs_check_property                      NE3LNAI_6 W W -tolerance 1
    lvs_check_property                      NE3LNAI_6 L L -tolerance 1
    lvs_check_property                      NE3LNAI_M_6 W W -tolerance 1
    lvs_check_property                      NE3LNAI_M_6 L L -tolerance 1
    lvs_check_property                      PE_5 W W -tolerance 1
    lvs_check_property                      PE_5 L L -tolerance 1
    lvs_check_property                      PEL_5 W W -tolerance 1
    lvs_check_property                      PEL_5 L L -tolerance 1
    lvs_check_property                      PE3_5 W W -tolerance 1
    lvs_check_property                      PE3_5 L L -tolerance 1
    lvs_check_property                      PE3LN_5 W W -tolerance 1
    lvs_check_property                      PE3LN_5 L L -tolerance 1
    lvs_check_property                      PEI_5 W W -tolerance 1
    lvs_check_property                      PEI_5 L L -tolerance 1
    lvs_check_property                      PEI_M_5 W W -tolerance 1
    lvs_check_property                      PEI_M_5 L L -tolerance 1
    lvs_check_property                      PELI_5 W W -tolerance 1
    lvs_check_property                      PELI_5 L L -tolerance 1
    lvs_check_property                      PELI_M_5 W W -tolerance 1
    lvs_check_property                      PELI_M_5 L L -tolerance 1
    lvs_check_property                      PESVT_5 W W -tolerance 1
    lvs_check_property                      PESVT_5 L L -tolerance 1
    lvs_check_property                      PESVTI_5 W W -tolerance 1
    lvs_check_property                      PESVTI_5 L L -tolerance 1
    lvs_check_property                      PESVTI_M_5 W W -tolerance 1
    lvs_check_property                      PESVTI_M_5 L L -tolerance 1
    lvs_check_property                      PE3I_5 W W -tolerance 1
    lvs_check_property                      PE3I_5 L L -tolerance 1
    lvs_check_property                      PE3I_M_5 W W -tolerance 1
    lvs_check_property                      PE3I_M_5 L L -tolerance 1
    lvs_check_property                      PE3LNI_5 W W -tolerance 1
    lvs_check_property                      PE3LNI_5 L L -tolerance 1
    lvs_check_property                      PE3LNI_M_5 W W -tolerance 1
    lvs_check_property                      PE3LNI_M_5 L L -tolerance 1
    lvs_check_property                      PE3LNA_5 W W -tolerance 1
    lvs_check_property                      PE3LNA_5 L L -tolerance 1
    lvs_check_property                      PE3LNAI_5 W W -tolerance 1
    lvs_check_property                      PE3LNAI_5 L L -tolerance 1
    lvs_check_property                      PE3LNAI_M_5 W W -tolerance 1
    lvs_check_property                      PE3LNAI_M_5 L L -tolerance 1
    lvs_check_property                      PMC_BJT W W -tolerance 1
    lvs_check_property                      PMC_BJT L L -tolerance 1
    lvs_check_property                      PHV_BJT W W -tolerance 1
    lvs_check_property                      PHV_BJT L L -tolerance 1
    lvs_check_property                      PMA_BJT W W -tolerance 1
    lvs_check_property                      PMA_BJT L L -tolerance 1
    lvs_check_property                      PMMA_BJT W W -tolerance 1
    lvs_check_property                      PMMA_BJT L L -tolerance 1
    lvs_check_property                      PMMC_BJT W W -tolerance 1
    lvs_check_property                      PMMC_BJT L L -tolerance 1
    lvs_check_property                      PHHV_BJT W W -tolerance 1
    lvs_check_property                      PHHV_BJT L L -tolerance 1
    lvs_check_property                      MOSVC W W -tolerance 1
    lvs_check_property                      MOSVC L L -tolerance 1
    lvs_check_property                      MOSVCI W W -tolerance 1
    lvs_check_property                      MOSVCI L L -tolerance 1
    lvs_check_property                      MOSVCI_M W W -tolerance 1
    lvs_check_property                      MOSVCI_M L L -tolerance 1
    lvs_check_property                      MOSVC3 W W -tolerance 1
    lvs_check_property                      MOSVC3 L L -tolerance 1
    lvs_check_property                      MOSVC3I W W -tolerance 1
    lvs_check_property                      MOSVC3I L L -tolerance 1
    lvs_check_property                      MOSVC3I_M W W -tolerance 1
    lvs_check_property                      MOSVC3I_M L L -tolerance 1
    lvs_check_property                      LDDN W W -tolerance 1
    lvs_check_property                      LDDN L L -tolerance 1
    lvs_check_property                      LDDP W W -tolerance 1
    lvs_check_property                      LDDP L L -tolerance 1
    lvs_check_property                      Q ( qnva ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvb ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvba ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvc ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvca ) LE LE -tolerance 0
    lvs_check_property                      Q ( qnvz ) LE LE -tolerance 0
    lvs_check_property                      Q ( qpvascr ) LE LE -tolerance 0
    lvs_check_property                      Q ( qpvhscr ) LE LE -tolerance 0
    lvs_check_property                      Q ( qpvhbscr ) LE LE -tolerance 0
    lvs_check_property                      R ( s_res ) R R -tolerance 0
    lvs_check_property                      R W W -tolerance 1
    lvs_check_property                      R L L -tolerance 1
    lvs_check_property                      C AREA AREA -tolerance 1
    lvs_check_property                      C PERIMETER PERIMETER -tolerance 1
    lvs_check_property                      D A A -tolerance 5
    lvs_check_property                      D P P -tolerance 5
    lvs_check_property                      DPHOC area area -tolerance 1
    lvs_check_property                      DPHOC perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOCFP area area -tolerance 1
    lvs_check_property                      DPHOCFP perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOC0 area area -tolerance 1
    lvs_check_property                      DPHOC0 perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOD area area -tolerance 1
    lvs_check_property                      DPHOD perimeter perimeter -tolerance 1
    lvs_check_property                      DPHODFP area area -tolerance 1
    lvs_check_property                      DPHODFP perimeter perimeter -tolerance 1
    lvs_check_property                      DPHOD0 area area -tolerance 1
    lvs_check_property                      DPHOD0 perimeter perimeter -tolerance 1
    lvs_check_property                      DAPB area area -tolerance 1
    lvs_check_property                      DAPB perimeter perimeter -tolerance 1
    lvs_check_property                      DAPB0 area area -tolerance 1
    lvs_check_property                      DAPB0 perimeter perimeter -tolerance 1
    lvs_check_property                      DSPB area area -tolerance 1
    lvs_check_property                      DSPB perimeter perimeter -tolerance 1
    lvs_check_property                      DSPB0 area area -tolerance 1
    lvs_check_property                      DSPB0 perimeter perimeter -tolerance 1
    lvs_check_property                      DSPBFEP area area -tolerance 1
    lvs_check_property                      DSPBFEP perimeter perimeter -tolerance 1
    lvs_report_file                         ioring_lvs.sum
    lvs_report_max                          1000 -mismatched_net_limit 100 
    unit                                    -length u
    unit                                    -capacitance ff
    unit                                    -resistance ohm
    input_scale                             1000
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    virtual_connect                         no  -report
    virtual_connect                         -depth primary
    text_depth                              -primary

Default LVS Rule Values
-----------------------

    lvs_abort                               -missing_hcell no
    lvs_abort                               -erc_error yes
    lvs_abort                               -inconsistent_reduction yes
    layout_case_sensitive                   no
    // layout_cpf_file                       
    // schematic_cpf_file                    
    schematic_case_sensitive                no
    // hcell_file                            
    // hcell                                 
    // lvs_exclude_hcell                     
    // lvs_delete_cell                       
    lvs_push_devices                        yes
    lvs_push_devices_properties             no
    lvs_netlist                             yes -substrate_comment
    lvs_netlist                             yes -box_contents
    lvs_netlist                             yes -unnamed_box_pins
    lvs_netlist                             no -allow_inconsistent_model
    lvs_netlist                             yes -properties_comment
    // lvs_write_netlist_reduced             
    // lvs_delete_cell_pin                   
    // lvs_black_box                         
    // lvs_interposer                        
    lvs_spice                               yes -allow_floating_pins
    lvs_spice                               yes -allow_duplicate_subcircuit_names
    lvs_spice                               no  -conditional_ldd
    lvs_spice                               no  -prefer_pins
    lvs_spice                               no  -override_globals
    lvs_spice                               no  -redefine_param
    lvs_spice                               no  -replicate_devices_enhanced
    lvs_spice                               yes -slash_is_space
    lvs_spice                               yes -keep_back_slash
    lvs_spice                               no  -allow_inline_parameters
    lvs_spice                               no  -calculate_mos_area
    lvs_spice                               no  -strict_wl
    lvs_spice                               no  -cull_primitive_subcircuits
    lvs_spice                               no  -ignore_option_scale
    lvs_spice                               no  -show_neg_param_warning
    lvs_spice                               no  -scale_x_parameters
    lvs_spice                               yes -strict_subckts_order
    // lvs_spice_option                      
    lvs_reverse_wl                          no
                                             
    lvs_compare_case                        no
    lvs_cname                               no  -cell
    lvs_cname                               yes -pin
    lvs_cname                               yes -net
    lvs_cname                               no  -instance
    lvs_non_user_name                       -port "^[0-9]+$"
    lvs_non_user_name                       -net  "^[0-9]+$"
    // lvs_non_user_name                    -instance 
    lvs_out_of_range_exclude_zero           no
    // lvs_group_models                      
    lvs_strict_subtypes                     no
    lvs_exact_subtypes                      no
    lvs_preserve_box_ports                  no
    // lvs_cpoint                            
    // lvs_cell_list                         
    lvs_auto_pin_swap                       yes -swap_threshold 4000000
    lvs_swap_non_cpoint_pins                yes
    // lvs_swap_pins                         
    lvs_builtin_device_pin_swap             yes
    // lvs_join_nets                         
    lvs_global_sigs_are_ports               yes
    lvs_discard_pins                        no
    // lvs_filter_option                     
    // lvs_filter_device_keep_net            
    lvs_reduction_priority                  -parallel
    lvs_derive_logic                        yes -sram
    lvs_derive_logic                        no  -dram
    lvs_derive_logic                        no  -rom
    // lvs_recognize_gates_tolerance         
    lvs_reduce                              no  -series_diodes
    // lvs_reduce_do_not_merge               
    lvs_expand_on_device_climbing           no
    lvs_expand_unbalanced_cells             yes
    // lvs_check_all_properties_by_name      
    // lvs_property_map                      
    // lvs_transfer_property                 
    lvs_warn_max                            50
    lvs_inconsistent_reduction_threshold    1000000
    // lvs_report_opt                        
    lvs_report_units                        yes
    lvs_keep_data                           no
    lvs_keep_source_cells                   no
    lvs_create_match_db                     no
    // lvs_map_device                        
    lvs_verilog_bus_map_by_position         no
    lvs_verilog_keep_backslash              no
    lvs_verilog_detect_buses                no
    lvs_do_not_normalize                    no
    // lvs_generic_device                    
    virtual_connect                         no  -colon
    virtual_connect                         yes -semicolon_as_colon
    // virtual_connect                      -name 
    virtual_connect                         no -report
    virtual_connect                         no -incremental
    lvs_preserve_parameterized_cells        no
    lvs_check_color                         no
    // lvs_schematic_color_path              
    // lvs_assign_conflict_layer             
    // lvs_conflict_layer_check             
    lvs_check_color_label                   no
    // lvs_preserve_cells                    
    port                                    -depth -primary

Effective LVS Rule Values
-------------------------

    lvs_swap_non_cpoint_pins                yes -unbound_pin_threshold 10000
    lvs_derive_logic                        no   -sram
    virtual_connect                         no  -report


Recommended LVS Rule Values
---------------------------

    lvs_break_ambig_max                     100


##############################################################################################################
#
#                                               CELL COMPARISON                                               
#
##############################################################################################################

                              ##################################################
                              #                                                #
                              #       ------->>> $ MISMATCH $ <<<-------       #
                              #                                                #
                              #              ioring  <vs>  ioring              #
                              #                                                #
                              #            CONNECTIVITY MISMATCHES             #
                              #              PARAMETER MISMATCHES              #
                              #                                                #
                              ##################################################

+===[ioring]==================================================================================================
|                                       COMPARISON WARNINGS AND ERRORS                                        
+=============================================================================================================

Number | Type      | Message
-------+-----------+------------------------------------------------------------------------------------------
1      | Ambiguous | The number of ambiguous instances for instance model 'MP' in cell 'ioring' is 70, which
       |           | exceeds the specified thresholds of 32. Once this threshold is exceeded, subtype and
       |           | parameter comparisons will not be used to break ambiguities. 
-------+-----------+------------------------------------------------------------------------------------------
2      | Ambiguous | The number of ambiguous instances for instance model 'R' in cell 'ioring' is 50, which
       |           | exceeds the specified thresholds of 32. Once this threshold is exceeded, subtype and
       |           | parameter comparisons will not be used to break ambiguities. 
-------+-----------+------------------------------------------------------------------------------------------
3      | Ambiguous | The number of ambiguous instances for instance model 'MN' in cell 'ioring' is 96, which
       |           | exceeds the specified thresholds of 32. Once this threshold is exceeded, subtype and
       |           | parameter comparisons will not be used to break ambiguities. 
-------+-----------+------------------------------------------------------------------------------------------


+===[ioring]==================================================================================================
|                                                 STATISTICS                                                  
+=============================================================================================================


                           |      Original      |      Filtered       |       Reduced       |    Unmatched    
Cell                       |   lay   :   sch    |   lay    :   sch    |   lay    :   sch    |  lay   :  sch
---------------------------+---------+----------+----------+----------+----------+----------+--------+--------
MP [4 pins]                |         :          |          :          |          :          |        :        
 MP(PE3I)                  |    *734 :      710 |     *734 :      710 |      631 :      631 |     32 :      32
 MP(PMB)                   |     450 :      450 |      450 :      450 |      450 :      450 |      0 :       0
MN [4 pins]   .  .  .  .  .|.  .  .  :.  .  .   |.  .  .   :.  .  .   |.  .  .   :.  .  .   |.  .  . :.  .  . 
 MN(NE3I)                  |    *648 :      630 |     *648 :      630 |      576 :      576 |      0 :       0
R [3 pins] .  .  .  .  .  .|.  .  .  :.  .  .   |.  .  .   :.  .  .   |.  .  .   :.  .  .   |.  .  . :.  .  . 
 R(RDN3)                   |     512 :      512 |      512 :      512 |      512 :      512 |      0 :       0
 R(RDP3)   .  .  .  .  .  .|.  . 597 :.  .  597 |.  .  597 :.  .  597 |.  .  597 :.  .  597 |.  . 32 :.  .  32
 R(RDP_IO)                 |     450 :      450 |      450 :      450 |      450 :      450 |      0 :       0
R [2 pins] .  .  .  .  .  .|.  .  .  :.  .  .   |.  .  .   :.  .  .   |.  .  .   :.  .  .   |.  .  . :.  .  . 
 R(RPP1)                   |       4 :        4 |        4 :        4 |        4 :        4 |      0 :       0
 R(RNP1)   .  .  .  .  .  .|.  .   3 :.  .  . 3 |.  .  . 3 :.  .  . 3 |.  .  . 3 :.  .  . 3 |.  .  0 :.  .   0
 R(RPP1S)                  |       1 :        1 |        1 :        1 |        1 :        1 |      0 :       0
 R(S_RES)  .  .  .  .  .  .|.  .   1 :.  .  . 1 |.  .  . 1 :.  .  . 1 |.  .  . 1 :.  .  . 1 |.  .  0 :.  .   0
D [2 pins]                 |         :          |          :          |          :          |        :        
 D(DN3) .  .  .  .  .  .  .|.   *256 :.  .  512 |.  . *256 :.  .  512 |.  .   19 :.  .   19 |.  .  0 :.  .   0
 D(DDNWMV)                 |      35 :       35 |       35 :       35 |        4 :        4 |      0 :       0
 D(DIPDNWMV)  .  .  .  .  .|.  .  53 :.  .   53 |.  .   53 :.  .   53 |.  .   *4 :.  .  . 5 |.  . *0 :.  .   1
 D(DP3)                    |     192 :      192 |      192 :      192 |        9 :        9 |      0 :       0
 D(DDNW)   .  .  .  .  .  .|.  .  20 :.  .   20 |.  .   20 :.  .   20 |.  .   16 :.  .   16 |.  .  0 :.  .   0
 D(DHPW)                   |      12 :       12 |       12 :       12 |        6 :        6 |      0 :       0
 D(DPHNW)  .  .  .  .  .  .|.   *225 :.  .  450 |.  . *225 :.  .  450 |.  .  . 9 :.  .  . 9 |.  .  0 :.  .   0
 D(DNPDD_SCR)              |      *2 :        1 |       *2 :        1 |        1 :        1 |      0 :       0
 D(DPDD_SCR)  .  .  .  .  .|.  .  *2 :.  .  . 1 |.  .   *2 :.  .  . 1 |.  .  . 1 :.  .  . 1 |.  .  0 :.  .   0
 D(DPDNW)                  |       4 :        4 |        4 :        4 |        1 :        1 |      0 :       0
 D(P_DNW3) .  .  .  .  .  .|.  . *12 :.  .  . 0 |.  .  . 0 :.  .  . 0 |.  .  . 0 :.  .  . 0 |.  .  0 :.  .   0
 D(P_DP3)                  |    *266 :        0 |        0 :        0 |        0 :        0 |      0 :       0
 D(P_DDNWMV)  .  .  .  .  .|.  . *21 :.  .  . 0 |.  .  . 0 :.  .  . 0 |.  .  . 0 :.  .  . 0 |.  .  0 :.  .   0
(-, ACORNERFP4 [2 pins])   |         :          |          :          |          :          |        :        
 (-, ACORNERFP4())  .  .  .|.  .  *0 :.  .  . 2 |.  .   *0 :.  .  . 2 |.  .   *0 :.  .  . 2 |.  . *0 :.  .   2
(-, FILLER200F [2 pins])   |         :          |          :          |          :          |        :        
 (-, FILLER200F())  .  .  .|.  .  *0 :.  .  . 1 |.  .   *0 :.  .  . 1 |.  .   *0 :.  .  . 1 |.  . *0 :.  .   1
(-, FILLER70PC [7 pins])   |         :          |          :          |          :          |        :        
 (-, FILLER70PC())         |      *0 :        2 |       *0 :        2 |       *0 :        2 |     *0 :       2
---------------------------+---------+----------+----------+----------+----------+----------+--------+--------
Total                      |   4,500 :    4,643 |    4,201 :    4,643 |    3,295 :    3,301 |     64 :      70
===========================+=========+==========+==========+==========+==========+==========+========+========
Pins                       |         :          |          :          |       28 :       28 |      0 :       0
Nets                       |         :          |          :          |    1,643 :    1,643 |     32 :      32
===========================+=========+==========+==========+==========+==========+==========+========+========

+===[ioring]==================================================================================================
|                                      DEVICES REMOVED DURING REDUCTION                                       
+=============================================================================================================


                  |     Parallel      |      Series       |     Deleted Nets     
Cell              |   lay   :   sch   |   lay   :   sch   |    lay    :   sch
------------------+---------+---------+---------+---------+-----------+----------
MP [4 pins]       |         :         |         :         |           :          
 MP(PE3I)         |     103 :      79 |       - :       - |         0 :         0
MN [4 pins]       |         :         |         :         |           :          
 MN(NE3I)  .  .  .|.  .  72 :.  .  54 |.  .   - :.  .   - |.  .  .  0 :.  .  .  0
D [2 pins]        |         :         |         :         |           :          
 D(DN3) .  .  .  .|.  . 237 :.  . 493 |.  .   - :.  .   - |.  .  .  0 :.  .  .  0
 D(DDNWMV)        |      31 :      31 |       - :       - |         0 :         0
 D(DIPDNWMV)  .  .|.  .  49 :.  .  48 |.  .   - :.  .   - |.  .  .  0 :.  .  .  0
 D(DP3)           |     183 :     183 |       - :       - |         0 :         0
 D(DDNW)   .  .  .|.  .   4 :.  .   4 |.  .   - :.  .   - |.  .  .  0 :.  .  .  0
 D(DHPW)          |       6 :       6 |       - :       - |         0 :         0
 D(DPHNW)  .  .  .|.  . 216 :.  . 441 |.  .   - :.  .   - |.  .  .  0 :.  .  .  0
 D(DNPDD_SCR)     |       1 :       - |       - :       - |         0 :         0
 D(DPDD_SCR)      |       1 :       - |       - :       - |         0 :         0
 D(DPDNW)         |       3 :       3 |       - :       - |         0 :         0
------------------+---------+---------+---------+---------+-----------+----------

+===[ioring]==================================================================================================
|                                           INITIAL CORRESPONDENCES                                           
+=============================================================================================================

Type | Name
-----+--------------------------------------------------------------------------------------------------------
Pin  | CLK clk_core ENABLE enable_core GNDA GNDD GNDHV GNDOHV GNDOR GNDORA INL inl_core OUT0 out0_core OUT1
     | out1_core OUT2 out2_core OUTHV OUTL PSUB RESET reset_core VDDA VDDD VDDHV VDDOR VDDORA


+===[ioring]==================================================================================================
|                                               MISMATCHED NETS                                               
+=============================================================================================================
                                                                                               
                                                                                               
Layout Pin: VDDOR                                      | Schematic Pin: VDDOR
=======================================================+=================================(mn 1)
Terminal: Layout Instance                              | Terminal: Schematic Instance
-------------------------------------------------------+---------------------------------------
** missing connection **                               | PLUS: XI21/RR0  R(RDP3)
** missing connection **                               | B: XI21/RR0  R(RDP3)
** missing connection **                               | B: XI21/RR11  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| MINUS: XI21/XI157/DD1  D(DIPDNWMV)
** missing connection **                               | B: XI21/XIP<1>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<1>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<1>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<2>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<2>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<2>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<3>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<3>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<3>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<4>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<4>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<4>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<5>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<5>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<5>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<6>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<6>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<6>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<7>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<7>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<7>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<8>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<8>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<8>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<9>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<9>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<9>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<10>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<10>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<10>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<11>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<11>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<11>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<12>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<12>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<12>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<13>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<13>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<13>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<14>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<14>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<14>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<15>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<15>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<15>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<16>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<16>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<16>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<17>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<17>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<17>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<18>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<18>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<18>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<19>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<19>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<19>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<20>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<20>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<20>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<21>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<21>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<21>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<22>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<22>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<22>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<23>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<23>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<23>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<24>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<24>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<24>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<25>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<25>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<25>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<26>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<26>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<26>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<27>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<27>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<27>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<28>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<28>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<28>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<29>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<29>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<29>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<30>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<30>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<30>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<31>/RR1  R(RDP3)
** missing connection **   .  .  .  .  .  .  .  .  .  .| S: XI21/XIP<31>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<31>/MM0  MP(PE3I)
** missing connection **   .  .  .  .  .  .  .  .  .  .| B: XI21/XIP<32>/RR1  R(RDP3)
** missing connection **                               | S: XI21/XIP<32>/MM0  MP(PE3I)
** missing connection **                               | B: XI21/XIP<32>/MM0  MP(PE3I)
-------------------------------------------------------+---------------------(truncated next 2)
                                                                                               
                                                                                               
Layout Pin: VDDORA                                     | Schematic Pin: VDDORA
=======================================================+=================================(mn 2)
Terminal: Layout Instance                              | Terminal: Schematic Instance
-------------------------------------------------------+---------------------------------------
B: X18/X0/R0 @(161.830,592.780)  R(RDP3)               | ** missing connection **
B: X18/X0/R1 @(161.830,532.170)  R(RDP3)               | ** missing connection **
B: X18/X0/X129/X151/R0 @(160.925,583.890)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X151/R1 @(160.925,586.695)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X152/R0 @(194.725,583.890)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X152/R1 @(194.725,586.695)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X153/R0 @(160.925,577.290)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X153/R1 @(160.925,580.095)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X154/R0 @(194.725,577.290)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X154/R1 @(194.725,580.095)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X155/R0 @(160.925,570.690)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X155/R1 @(160.925,573.495)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X156/R0 @(194.725,570.690)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X156/R1 @(194.725,573.495)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X157/R0 @(160.925,564.090)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X157/R1 @(160.925,566.895)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X158/R0 @(194.725,564.090)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X158/R1 @(194.725,566.895)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X159/R0 @(160.925,560.420)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X159/R1 @(160.925,557.615)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X160/R0 @(194.725,560.420)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X160/R1 @(194.725,557.615)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X161/R0 @(160.925,553.820)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X161/R1 @(160.925,551.015)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X162/R0 @(194.725,553.820)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X162/R1 @(194.725,551.015)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X163/R0 @(160.925,547.220)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X163/R1 @(160.925,544.415)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X164/R0 @(194.725,547.220)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X164/R1 @(194.725,544.415)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X165/R0 @(160.925,540.620)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X165/R1 @(160.925,537.815)  R(RDP3) .  .| ** missing connection **
B: X18/X0/X129/X166/R0 @(194.725,540.620)  R(RDP3)     | ** missing connection **
B: X18/X0/X129/X166/R1 @(194.725,537.815)  R(RDP3) .  .| ** missing connection **
S: X18/X0/X129/M0 @(160.925,589.195)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M0 @(160.925,589.195)  MP(PE3I)  .  .  .| ** missing connection **
S: X18/X0/X129/M1 @(194.725,589.195)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M1 @(194.725,589.195)  MP(PE3I)  .  .  .| ** missing connection **
D: X18/X0/X129/M2 @(160.925,583.885)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M2 @(160.925,583.885)  MP(PE3I)  .  .  .| ** missing connection **
D: X18/X0/X129/M3 @(194.725,583.885)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M3 @(194.725,583.885)  MP(PE3I)  .  .  .| ** missing connection **
S: X18/X0/X129/M4 @(160.925,582.595)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M4 @(160.925,582.595)  MP(PE3I)  .  .  .| ** missing connection **
S: X18/X0/X129/M5 @(194.725,582.595)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M5 @(194.725,582.595)  MP(PE3I)  .  .  .| ** missing connection **
D: X18/X0/X129/M6 @(160.925,577.285)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M6 @(160.925,577.285)  MP(PE3I)  .  .  .| ** missing connection **
D: X18/X0/X129/M7 @(194.725,577.285)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M7 @(194.725,577.285)  MP(PE3I)  .  .  .| ** missing connection **
S: X18/X0/X129/M8 @(160.925,575.995)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M8 @(160.925,575.995)  MP(PE3I)  .  .  .| ** missing connection **
S: X18/X0/X129/M9 @(194.725,575.995)  MP(PE3I)         | ** missing connection **
B: X18/X0/X129/M9 @(194.725,575.995)  MP(PE3I)  .  .  .| ** missing connection **
D: X18/X0/X129/M10 @(160.925,570.685)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M10 @(160.925,570.685)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M11 @(194.725,570.685)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M11 @(194.725,570.685)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M12 @(160.925,569.395)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M12 @(160.925,569.395)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M13 @(194.725,569.395)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M13 @(194.725,569.395)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M14 @(160.925,564.085)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M14 @(160.925,564.085)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M15 @(194.725,564.085)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M15 @(194.725,564.085)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M16 @(160.925,560.775)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M16 @(160.925,560.775)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M17 @(194.725,560.775)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M17 @(194.725,560.775)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M18 @(160.925,555.465)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M18 @(160.925,555.465)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M19 @(194.725,555.465)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M19 @(194.725,555.465)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M20 @(160.925,554.175)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M20 @(160.925,554.175)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M21 @(194.725,554.175)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M21 @(194.725,554.175)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M22 @(160.925,548.865)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M22 @(160.925,548.865)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M23 @(194.725,548.865)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M23 @(194.725,548.865)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M24 @(160.925,547.575)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M24 @(160.925,547.575)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M25 @(194.725,547.575)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M25 @(194.725,547.575)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M26 @(160.925,542.265)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M26 @(160.925,542.265)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M27 @(194.725,542.265)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M27 @(194.725,542.265)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M28 @(160.925,540.975)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M28 @(160.925,540.975)  MP(PE3I) .  .  .| ** missing connection **
S: X18/X0/X129/M29 @(194.725,540.975)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M29 @(194.725,540.975)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M30 @(160.925,535.665)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M30 @(160.925,535.665)  MP(PE3I) .  .  .| ** missing connection **
D: X18/X0/X129/M31 @(194.725,535.665)  MP(PE3I)        | ** missing connection **
B: X18/X0/X129/M31 @(194.725,535.665)  MP(PE3I) .  .  .| ** missing connection **
** missing connection **                               | VDDOI: XI42  FILLER70PC
** missing connection **                               | VDDRI: XI42  FILLER70PC
-------------------------------------------------------+---------------------(truncated next 1)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/35                             | Schematic Net: ** missing net **
=======================================================+=================================(mn 3)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<30>/net6
=======================================================+=================================(mn 4)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<14>/net6
=======================================================+=================================(mn 5)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<6>/net6
=======================================================+=================================(mn 6)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<2>/net6
=======================================================+=================================(mn 7)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<31>/net6
=======================================================+=================================(mn 8)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/36                             | Schematic Net: ** missing net **
=======================================================+=================================(mn 9)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/34                             | Schematic Net: ** missing net **
=======================================================+================================(mn 10)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<29>/net6
=======================================================+================================(mn 11)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/30                             | Schematic Net: ** missing net **
=======================================================+================================(mn 12)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<13>/net6
=======================================================+================================(mn 13)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/32                             | Schematic Net: ** missing net **
=======================================================+================================(mn 14)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<27>/net6
=======================================================+================================(mn 15)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/26                             | Schematic Net: ** missing net **
=======================================================+================================(mn 16)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<5>/net6
=======================================================+================================(mn 17)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/28                             | Schematic Net: ** missing net **
=======================================================+================================(mn 18)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<25>/net6
=======================================================+================================(mn 19)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/22                             | Schematic Net: ** missing net **
=======================================================+================================(mn 20)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<11>/net6
=======================================================+================================(mn 21)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/24                             | Schematic Net: ** missing net **
=======================================================+================================(mn 22)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<23>/net6
=======================================================+================================(mn 23)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/18                             | Schematic Net: ** missing net **
=======================================================+================================(mn 24)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<1>/net6
=======================================================+================================(mn 25)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/20                             | Schematic Net: ** missing net **
=======================================================+================================(mn 26)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<21>/net6
=======================================================+================================(mn 27)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/14                             | Schematic Net: ** missing net **
=======================================================+================================(mn 28)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<9>/net6
=======================================================+================================(mn 29)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/16                             | Schematic Net: ** missing net **
=======================================================+================================(mn 30)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<19>/net6
=======================================================+================================(mn 31)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/10                             | Schematic Net: ** missing net **
=======================================================+================================(mn 32)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<3>/net6
=======================================================+================================(mn 33)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/12                             | Schematic Net: ** missing net **
=======================================================+================================(mn 34)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<17>/net6
=======================================================+================================(mn 35)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/6                              | Schematic Net: ** missing net **
=======================================================+================================(mn 36)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<7>/net6
=======================================================+================================(mn 37)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/8                              | Schematic Net: ** missing net **
=======================================================+================================(mn 38)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<15>/net6
=======================================================+================================(mn 39)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/29                             | Schematic Net: ** missing net **
=======================================================+================================(mn 40)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/33                             | Schematic Net: ** missing net **
=======================================================+================================(mn 41)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<28>/net6
=======================================================+================================(mn 42)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/25                             | Schematic Net: ** missing net **
=======================================================+================================(mn 43)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<12>/net6
=======================================================+================================(mn 44)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/21                             | Schematic Net: ** missing net **
=======================================================+================================(mn 45)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<24>/net6
=======================================================+================================(mn 46)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/17                             | Schematic Net: ** missing net **
=======================================================+================================(mn 47)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<4>/net6
=======================================================+================================(mn 48)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/13                             | Schematic Net: ** missing net **
=======================================================+================================(mn 49)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<20>/net6
=======================================================+================================(mn 50)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/9                              | Schematic Net: ** missing net **
=======================================================+================================(mn 51)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<8>/net6
=======================================================+================================(mn 52)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/5                              | Schematic Net: ** missing net **
=======================================================+================================(mn 53)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<16>/net6
=======================================================+================================(mn 54)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/31                             | Schematic Net: ** missing net **
=======================================================+================================(mn 55)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<32>/net6
=======================================================+================================(mn 56)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<26>/net6
=======================================================+================================(mn 57)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/23                             | Schematic Net: ** missing net **
=======================================================+================================(mn 58)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<10>/net6
=======================================================+================================(mn 59)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/15                             | Schematic Net: ** missing net **
=======================================================+================================(mn 60)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<18>/net6
=======================================================+================================(mn 61)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/27                             | Schematic Net: ** missing net **
=======================================================+================================(mn 62)
                                                                                               
                                                                                               
Layout Net: ** missing net **                          | Schematic Net: XI21/XIP<22>/net6
=======================================================+================================(mn 63)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/19                             | Schematic Net: ** missing net **
=======================================================+================================(mn 64)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/7                              | Schematic Net: ** missing net **
=======================================================+================================(mn 65)
                                                                                               
                                                                                               
Layout Net: X18/X0/X129/11                             | Schematic Net: ** missing net **
=======================================================+================================(mn 66)


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++ Truncated to 100 entries, to adjust this use the -mismatched_net_limit option in the lvs_report_max rule 
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+===[ioring]==================================================================================================
|                                            MISMATCHED INSTANCES                                             
+=============================================================================================================
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XI157/DD1
Layout Model:                                            | Schematic Model: D(DIPDNWMV)
=========================================================+==================================(mi 1)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<1>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+==================================(mi 2)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<1>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+==================================(mi 3)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<2>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+==================================(mi 4)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<2>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+==================================(mi 5)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<3>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+==================================(mi 6)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<3>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+==================================(mi 7)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<4>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+==================================(mi 8)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<4>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+==================================(mi 9)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<5>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 10)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<5>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 11)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<6>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 12)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<6>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 13)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<7>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 14)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<7>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 15)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<8>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 16)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<8>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 17)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<9>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 18)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<9>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 19)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<10>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 20)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<10>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 21)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<11>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 22)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<11>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 23)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<12>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 24)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<12>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 25)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<13>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 26)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<13>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 27)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<14>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 28)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<14>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 29)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<15>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 30)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<15>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 31)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<16>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 32)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<16>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 33)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<17>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 34)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<17>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 35)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<18>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 36)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<18>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 37)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<19>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 38)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<19>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 39)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<20>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 40)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<20>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 41)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<21>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 42)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<21>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 43)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<22>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 44)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<22>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 45)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<23>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 46)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<23>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 47)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<24>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 48)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<24>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 49)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<25>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 50)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<25>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 51)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<26>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 52)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<26>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 53)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<27>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 54)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<27>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 55)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<28>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 56)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<28>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 57)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<29>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 58)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<29>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 59)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<30>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 60)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<30>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 61)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<31>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 62)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<31>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 63)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<32>/RR1
Layout Model:                                            | Schematic Model: R(RDP3)
=========================================================+=================================(mi 64)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI21/XIP<32>/MM0
Layout Model:                                            | Schematic Model: MP(PE3I)
=========================================================+=================================(mi 65)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI41
Layout Model:                                            | Schematic Model: ACORNERFP4
=========================================================+=================================(mi 66)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI37
Layout Model:                                            | Schematic Model: ACORNERFP4
=========================================================+=================================(mi 67)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI43
Layout Model:                                            | Schematic Model: FILLER70PC
=========================================================+=================================(mi 68)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI42
Layout Model:                                            | Schematic Model: FILLER70PC
=========================================================+=================================(mi 69)
                                                                                                  
                                                                                                  
Layout Inst : ** missing inst **                         | Schematic Inst : XI47
Layout Model:                                            | Schematic Model: FILLER200F
=========================================================+=================================(mi 70)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X151/R0 @(160.925,583.890)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 71)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X151/R1 @(160.925,586.695)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 72)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X152/R0 @(194.725,583.890)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 73)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X152/R1 @(194.725,586.695)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 74)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X153/R0 @(160.925,577.290)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 75)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X153/R1 @(160.925,580.095)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 76)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X154/R0 @(194.725,577.290)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 77)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X154/R1 @(194.725,580.095)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 78)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X155/R0 @(160.925,570.690)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 79)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X155/R1 @(160.925,573.495)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 80)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X156/R0 @(194.725,570.690)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 81)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X156/R1 @(194.725,573.495)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 82)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X157/R0 @(160.925,564.090)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 83)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X157/R1 @(160.925,566.895)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 84)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X158/R0 @(194.725,564.090)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 85)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X158/R1 @(194.725,566.895)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 86)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X159/R0 @(160.925,560.420)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 87)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X159/R1 @(160.925,557.615)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 88)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X160/R0 @(194.725,560.420)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 89)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X160/R1 @(194.725,557.615)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 90)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X161/R0 @(160.925,553.820)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 91)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X161/R1 @(160.925,551.015)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 92)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X162/R0 @(194.725,553.820)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 93)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X162/R1 @(194.725,551.015)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 94)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X163/R0 @(160.925,547.220)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 95)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X163/R1 @(160.925,544.415)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 96)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X164/R0 @(194.725,547.220)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 97)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X164/R1 @(194.725,544.415)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 98)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X165/R0 @(160.925,540.620)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+=================================(mi 99)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X165/R1 @(160.925,537.815)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+================================(mi 100)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X166/R0 @(194.725,540.620)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+================================(mi 101)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/X166/R1 @(194.725,537.815)     | Schematic Inst : ** missing inst **
Layout Model: R(RDP3)                                    | Schematic Model: 
=========================================================+================================(mi 102)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M0 @(160.925,589.195)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 103)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M1 @(194.725,589.195)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 104)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M2 @(160.925,583.885)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 105)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M3 @(194.725,583.885)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 106)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M4 @(160.925,582.595)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 107)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M5 @(194.725,582.595)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 108)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M6 @(160.925,577.285)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 109)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M7 @(194.725,577.285)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 110)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M8 @(160.925,575.995)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 111)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M9 @(194.725,575.995)          | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 112)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M10 @(160.925,570.685)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 113)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M11 @(194.725,570.685)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 114)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M12 @(160.925,569.395)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 115)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M13 @(194.725,569.395)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 116)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M14 @(160.925,564.085)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 117)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M15 @(194.725,564.085)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 118)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M16 @(160.925,560.775)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 119)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M17 @(194.725,560.775)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 120)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M18 @(160.925,555.465)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 121)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M19 @(194.725,555.465)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 122)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M20 @(160.925,554.175)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 123)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M21 @(194.725,554.175)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 124)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M22 @(160.925,548.865)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 125)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M23 @(194.725,548.865)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 126)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M24 @(160.925,547.575)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 127)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M25 @(194.725,547.575)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 128)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M26 @(160.925,542.265)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 129)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M27 @(194.725,542.265)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 130)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M28 @(160.925,540.975)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 131)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M29 @(194.725,540.975)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 132)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M30 @(160.925,535.665)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 133)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/X129/M31 @(194.725,535.665)         | Schematic Inst : ** missing inst **
Layout Model: MP(PE3I)                                   | Schematic Model: 
=========================================================+================================(mi 134)
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/R0 @(161.830,592.780)               | Schematic Inst : XI21/RR0
Layout Model: R(RDP3)                                    | Schematic Model: R(RDP3)
=========================================================+================================(mi 135)
Terminal: Layout Net                                     | Terminal: Schematic Net
---------------------------------------------------------+----------------------------------------
B: VDDORA                                                | ** VDDORA **
** VDDOR **                                              | B: VDDOR
                                                         | 
MINUS: VDDORA .  .  .  .  .  .  .  .  .  .  .  .  .  .  .| ** VDDORA **
** VDDOR **                                              | PLUS: VDDOR
                                                         | 
PLUS: X18/X0/9                                           | MINUS: XI21/pg
                                                                                                  
                                                                                                  
Layout Inst : X18/X0/R1 @(161.830,532.170)               | Schematic Inst : XI21/RR11
Layout Model: R(RDP3)                                    | Schematic Model: R(RDP3)
=========================================================+================================(mi 136)
Terminal: Layout Net                                     | Terminal: Schematic Net
---------------------------------------------------------+----------------------------------------
B: VDDORA                                                | ** VDDORA **
** VDDOR **                                              | B: VDDOR
                                                         | 
PLUS: X18/X0/10  .  .  .  .  .  .  .  .  .  .  .  .  .  .| PLUS: XI21/ng
MINUS: GNDORA                                            | MINUS: GNDORA


+===[ioring]==================================================================================================
|                                       MISMATCHED INSTANCE PARAMETERS                                        
+=============================================================================================================


                   Merged Instance Detail                   
=========+========================+=========================
         |                        | 
Side     | Master Instance        | Instances
---------+------------------------+-----------------(midl 1)
Lay      | <X16/X125/D24>         | X16/X125/D24
         |                        +-------------------------
         |                        | X14/X60/D24
         |                        +-------------------------
         |                        | X18/X0/X128/D24
         |                        +-------------------------
         |                        | X32/X225/D24
         |                        +-------------------------
         |                        | X21/X0/X128/D24
         |                        +-------------------------
         |                        | X37/X433/D24
         |                        +-------------------------
         |                        | X32/D29
         |                        +-------------------------
         |                        | X33/X128/D24
         |                        +-------------------------
         |                        | X37/X432/D24
---------+------------------------+-----------------(midl 2)
Lay      | <X18/X0/X128/D25>      | X18/X0/X128/D25
         |                        +-------------------------
         |                        | X32/D33
         |                        +-------------------------
         |                        | X32/X225/D25
         |                        +-------------------------
         |                        | X16/X125/D25
         |                        +-------------------------
         |                        | X14/X60/D25
         |                        +-------------------------
         |                        | X32/D32
         |                        +-------------------------
         |                        | X33/X128/D25
         |                        +-------------------------
         |                        | X21/X0/X128/D25
         |                        +-------------------------
         |                        | X37/X432/D25
         |                        +-------------------------
         |                        | X37/X433/D25
---------+------------------------+-----------------(midl 3)
Lay      | <X29/X421/D0>          | X29/X421/D0
         |                        +-------------------------
         |                        | X38/X432/D24
         |                        +-------------------------
         |                        | X38/X433/D24
         |                        +-------------------------
         |                        | X30/X421/D0
         |                        +-------------------------
         |                        | X31/X421/D0
         |                        +-------------------------
         |                        | X24/X415/D1
         |                        +-------------------------
         |                        | X30/X421/X3/D24
         |                        +-------------------------
         |                        | X17/X125/D24
         |                        +-------------------------
         |                        | X25/X415/X3/D24
         |                        +-------------------------
         |                        | X22/X0/X128/D24
         |                        +-------------------------
         |                        | X25/X415/D0
         |                        +-------------------------
         |                        | X25/X415/D1
         |                        +-------------------------
         |                        | X30/X421/D1
         |                        +-------------------------
         |                        | X15/X60/D24
         |                        +-------------------------
         |                        | X29/X421/D1
         |                        +-------------------------
         |                        | X24/X415/D0
         |                        +-------------------------
         |                        | X23/X415/X3/D24
         |                        +-------------------------
         |                        | X23/X415/D0
         |                        +-------------------------
         |                        | X31/X421/D1
         |                        +-------------------------
         |                        | X19/X0/X128/D24
         |                        +-------------------------
         |                        | X29/X421/X3/D24
         |                        +-------------------------
         |                        | X23/X415/D1
         |                        +-------------------------
         |                        | X24/X415/X3/D24
         |                        +-------------------------
         |                        | X31/X421/X3/D24
---------+------------------------+-----------------(mids 1)
Sch      | <XI20/XI157/DD3>       | XI20/XI157/DD3
         |                        +-------------------------
         |                        | XI18/XI157/DD3
         |                        +-------------------------
         |                        | XI40/XI1<2>/DD3
         |                        +-------------------------
         |                        | XI22/XI157/DD0
         |                        +-------------------------
         |                        | XI22/XI157/DD6
         |                        +-------------------------
         |                        | XI40/XI1<1>/DD3
         |                        +-------------------------
         |                        | XI23/XI157/DD3
         |                        +-------------------------
         |                        | XI19/XI157/DD3
---------+------------------------+-----------------(mids 2)
Sch      | <XI20/XI157/DD1>       | XI20/XI157/DD1
         |                        +-------------------------
         |                        | XI40/XI1<2>/DD1
         |                        +-------------------------
         |                        | XI23/XI157/DD1
         |                        +-------------------------
         |                        | XI18/XI157/DD1
         |                        +-------------------------
         |                        | XI22/XI157/DD1
         |                        +-------------------------
         |                        | XI40/XI1<1>/DD1
         |                        +-------------------------
         |                        | XI22/XI157/DD2
         |                        +-------------------------
         |                        | XI22/XI157/DD4
         |                        +-------------------------
         |                        | XI19/XI157/DD1
---------+------------------------+-----------------(mids 3)
Sch      | <XI15/XI0/XI3/DD0>     | XI15/XI0/XI3/DD0
         |                        +-------------------------
         |                        | XI15/XI0/XI3/XI0/DD3
         |                        +-------------------------
         |                        | XI10/XI5/DD10
         |                        +-------------------------
         |                        | XI10/XI6/DD0
         |                        +-------------------------
         |                        | XI10/XI6/XI0/DD3
         |                        +-------------------------
         |                        | XI39/XI1<1>/DD3
         |                        +-------------------------
         |                        | XI9/XI5/DD10
         |                        +-------------------------
         |                        | XI39/XI1<2>/DD3
         |                        +-------------------------
         |                        | XI21/XI157/DD3
         |                        +-------------------------
         |                        | XI9/XI6/XI0/DD3
         |                        +-------------------------
         |                        | XI1/XI157/DD3
         |                        +-------------------------
         |                        | XI3/XI157/DD3
         |                        +-------------------------
         |                        | XI17/XI0/XI3/DD0
         |                        +-------------------------
         |                        | XI17/XI0/XI3/XI0/DD3
         |                        +-------------------------
         |                        | XI16/XI5/DD10
         |                        +-------------------------
         |                        | XI5/XI157/DD3
         |                        +-------------------------
         |                        | XI11/XI5/DD10
         |                        +-------------------------
         |                        | XI11/XI6/DD0
         |                        +-------------------------
         |                        | XI11/XI6/XI0/DD3
         |                        +-------------------------
         |                        | XI16/XI0/XI3/DD0
         |                        +-------------------------
         |                        | XI16/XI0/XI3/XI0/DD3
         |                        +-------------------------
         |                        | XI15/XI5/DD10
         |                        +-------------------------
         |                        | XI0/XI157/DD3
         |                        +-------------------------
         |                        | XI17/XI5/DD10
         |                        +-------------------------
         |                        | XI9/XI6/DD0


Layout Instance                                    | Schematic Instance              |    Parameter Error     
---------------------------------------------------+---------------------------------+-----------------(mip 1)
<X16/X125/D24> @(80.685,664.685) D(DDNWMV)         | <XI20/XI157/DD3> D(DDNWMV)      |                        
p: 2357.38 u                                       | p: 2082.74 u                    | 13.1865%               
a: 38581.5 sq u                                    | a: 33881.8 sq u                 | 13.8711%               
---------------------------------------------------+---------------------------------+-----------------(mip 2)
<X18/X0/X128/D25> @(82.685,592.685) D(DIPDNWMV)    | <XI20/XI157/DD1> D(DIPDNWMV)    |                        
p: 2176.07 u                                       | p: 1917.43 u                    | 13.4889%               
a: 33675.4 sq u                                    | a: 29509 sq u                   | 14.1194%               
---------------------------------------------------+---------------------------------+-----------------(mip 3)
<X29/X421/D0> @(232.505,944.755) D(DDNWMV)         | <XI15/XI0/XI3/DD0> D(DDNWMV)    |                        
p: 4378.8 u                                        | p: 4653.44 u                    | 5.90187%               
a: 61843.9 sq u                                    | a: 66543.7 sq u                 | 7.06267%               


##############################################################################################################
#
#                                                END OF REPORT                                                
#
##############################################################################################################

