/*
###############################################################
#  Generated by:      Cadence Innovus 21.18-s099_1
#  OS:                Linux x86_64(Host ID phoenix)
#  Generated on:      Sat Feb  3 14:33:32 2024
#  Design:            counter
#  Command:           saveNetlist output/pnr_cap.v -includePhysicalCell { DECAP25JI3V DECAP15JI3V DECAP10JI3V DECAP7JI3V DECAP5JI3V }
###############################################################
*/
// Generated by Cadence Genus(TM) Synthesis Solution 21.18-s082_1
// Generated on: Feb  3 2024 10:53:10 EST (Feb  3 2024 15:53:10 UTC)
// Verification Directory fv/counter 
module counter (
	out, 
	enable, 
	clk, 
	reset);
   output [7:0] out;
   input enable;
   input clk;
   input reset;

   // Internal wires
   wire FE_PHN10_n_38;
   wire FE_PHN9_n_37;
   wire FE_PHN8_n_34;
   wire FE_PHN7_n_30;
   wire FE_PHN6_n_26;
   wire FE_PHN5_n_22;
   wire FE_PHN4_n_18;
   wire FE_PHN3_n_14;
   wire FE_PHN2_enable;
   wire FE_PHN1_reset;
   wire CTS_2;
   wire CTS_1;
   wire FE_OFN0_out_0;
   wire n_0;
   wire n_1;
   wire n_2;
   wire n_3;
   wire n_5;
   wire n_6;
   wire n_7;
   wire n_9;
   wire n_10;
   wire n_12;
   wire n_13;
   wire n_14;
   wire n_15;
   wire n_17;
   wire n_18;
   wire n_19;
   wire n_20;
   wire n_21;
   wire n_22;
   wire n_23;
   wire n_24;
   wire n_25;
   wire n_26;
   wire n_27;
   wire n_28;
   wire n_29;
   wire n_30;
   wire n_31;
   wire n_32;
   wire n_33;
   wire n_34;
   wire n_35;
   wire n_36;
   wire n_37;
   wire n_38;

   BUJI3VX2 FE_PHC10_n_38 (.A(n_38),
	.Q(FE_PHN10_n_38));
   BUJI3VX0 FE_PHC9_n_37 (.A(n_37),
	.Q(FE_PHN9_n_37));
   BUJI3VX16 FE_PHC8_n_34 (.A(n_34),
	.Q(FE_PHN8_n_34));
   DLY1JI3VX1 FE_PHC7_n_30 (.A(n_30),
	.Q(FE_PHN7_n_30));
   DLY1JI3VX1 FE_PHC6_n_26 (.A(n_26),
	.Q(FE_PHN6_n_26));
   DLY2JI3VX1 FE_PHC5_n_22 (.A(n_22),
	.Q(FE_PHN5_n_22));
   DLY2JI3VX1 FE_PHC4_n_18 (.A(n_18),
	.Q(FE_PHN4_n_18));
   DLY2JI3VX1 FE_PHC3_n_14 (.A(n_14),
	.Q(FE_PHN3_n_14));
   DLY2JI3VX1 FE_PHC2_enable (.A(enable),
	.Q(FE_PHN2_enable));
   DLY2JI3VX1 FE_PHC1_reset (.A(reset),
	.Q(FE_PHN1_reset));
   BUJI3VX1 CTS_cdb_buf_00009 (.A(CTS_2),
	.Q(CTS_1));
   BUJI3VX1 CTS_cdb_buf_00010 (.A(clk),
	.Q(CTS_2));
   BUJI3VX2 FE_OFC0_out_0 (.A(FE_OFN0_out_0),
	.Q(out[0]));
   DFRQJI3VX2 \out_reg[7]  (.C(CTS_1),
	.D(FE_PHN10_n_38),
	.Q(out[7]));
   DFRQJI3VX2 \out_reg[6]  (.C(CTS_1),
	.D(FE_PHN9_n_37),
	.Q(out[6]));
   NO2JI3VX0 g187__2398 (.A(FE_PHN1_reset),
	.B(n_36),
	.Q(n_38));
   AN21JI3VX1 g190__5107 (.A(n_35),
	.B(n_0),
	.C(FE_PHN1_reset),
	.Q(n_37));
   AN22JI3VX1 g189__6260 (.A(n_33),
	.B(FE_PHN2_enable),
	.C(out[7]),
	.D(n_6),
	.Q(n_36));
   DFRQJI3VX2 \out_reg[5]  (.C(CTS_1),
	.D(FE_PHN8_n_34),
	.Q(out[5]));
   ON211JI3VX1 g193__4319 (.A(n_29),
	.B(out[6]),
	.C(n_32),
	.D(FE_PHN2_enable),
	.Q(n_35));
   AN21JI3VX1 g194__8428 (.A(n_31),
	.B(n_2),
	.C(FE_PHN1_reset),
	.Q(n_34));
   EN2JI3VX0 g191__5526 (.A(out[7]),
	.B(n_32),
	.Q(n_33));
   DFRQJI3VX2 \out_reg[4]  (.C(CTS_1),
	.D(FE_PHN7_n_30),
	.Q(out[4]));
   ON211JI3VX1 g196__6783 (.A(n_25),
	.B(out[5]),
	.C(n_28),
	.D(FE_PHN2_enable),
	.Q(n_31));
   AN21JI3VX1 g199__3680 (.A(n_27),
	.B(n_3),
	.C(FE_PHN1_reset),
	.Q(n_30));
   NA2JI3VX0 g197__1617 (.A(n_29),
	.B(out[6]),
	.Q(n_32));
   DFRQJI3VX2 \out_reg[3]  (.C(CTS_1),
	.D(FE_PHN6_n_26),
	.Q(out[3]));
   INJI3VX0 g198 (.A(n_28),
	.Q(n_29));
   ON211JI3VX1 g201__2802 (.A(n_21),
	.B(out[4]),
	.C(n_24),
	.D(FE_PHN2_enable),
	.Q(n_27));
   AN21JI3VX1 g204__1705 (.A(n_23),
	.B(n_7),
	.C(FE_PHN1_reset),
	.Q(n_26));
   NA2JI3VX0 g202__5122 (.A(n_25),
	.B(out[5]),
	.Q(n_28));
   DFRQJI3VX2 \out_reg[2]  (.C(CTS_1),
	.D(FE_PHN5_n_22),
	.Q(out[2]));
   INJI3VX0 g203 (.A(n_24),
	.Q(n_25));
   ON211JI3VX1 g206__8246 (.A(n_17),
	.B(out[3]),
	.C(n_20),
	.D(FE_PHN2_enable),
	.Q(n_23));
   AN21JI3VX1 g209__7098 (.A(n_19),
	.B(n_1),
	.C(FE_PHN1_reset),
	.Q(n_22));
   NA2JI3VX0 g207__6131 (.A(n_21),
	.B(out[4]),
	.Q(n_24));
   DFRQJI3VX4 \out_reg[1]  (.C(CTS_1),
	.D(FE_PHN4_n_18),
	.Q(out[1]));
   INJI3VX0 g208 (.A(n_20),
	.Q(n_21));
   ON211JI3VX1 g211__1881 (.A(n_12),
	.B(out[2]),
	.C(n_15),
	.D(FE_PHN2_enable),
	.Q(n_19));
   AN21JI3VX1 g214__5115 (.A(n_13),
	.B(n_5),
	.C(FE_PHN1_reset),
	.Q(n_18));
   NA2JI3VX0 g212__7482 (.A(n_17),
	.B(out[3]),
	.Q(n_20));
   DFRQJI3VX1 \out_reg[0]  (.C(CTS_1),
	.D(FE_PHN3_n_14),
	.Q(FE_OFN0_out_0));
   INJI3VX0 g213 (.A(n_15),
	.Q(n_17));
   NO2JI3VX0 g219__4733 (.A(FE_PHN1_reset),
	.B(n_9),
	.Q(n_14));
   ON211JI3VX1 g216__6161 (.A(out[0]),
	.B(out[1]),
	.C(n_10),
	.D(FE_PHN2_enable),
	.Q(n_13));
   NA2JI3VX0 g217__9315 (.A(n_12),
	.B(out[2]),
	.Q(n_15));
   INJI3VX0 g218 (.A(n_10),
	.Q(n_12));
   EN2JI3VX0 g220__9945 (.A(FE_PHN2_enable),
	.B(FE_OFN0_out_0),
	.Q(n_9));
   NA2JI3VX0 g221__2883 (.A(out[3]),
	.B(n_6),
	.Q(n_7));
   NA2JI3VX0 g222__2346 (.A(out[1]),
	.B(n_6),
	.Q(n_5));
   NA2JI3VX0 g223__1666 (.A(out[4]),
	.B(n_6),
	.Q(n_3));
   NA2JI3VX0 g226__7410 (.A(out[5]),
	.B(n_6),
	.Q(n_2));
   NA2JI3VX0 g225__6417 (.A(out[2]),
	.B(n_6),
	.Q(n_1));
   NA2JI3VX0 g224__5477 (.A(out[6]),
	.B(n_6),
	.Q(n_0));
   NA2JI3VX0 g227__2398 (.A(FE_OFN0_out_0),
	.B(out[1]),
	.Q(n_10));
   INJI3VX0 g232 (.A(FE_PHN2_enable),
	.Q(n_6));

   // Fillers and physical instances.
   DECAP5JI3V FILLCAP_T_1_38 (
 );
   DECAP7JI3V FILLCAP_T_1_37 (
 );
   DECAP10JI3V FILLCAP_T_1_36 (
 );
   DECAP5JI3V FILLCAP_T_1_35 (
 );
   DECAP5JI3V FILLCAP_T_1_34 (
 );
   DECAP7JI3V FILLCAP_T_1_33 (
 );
   DECAP7JI3V FILLCAP_T_1_32 (
 );
   DECAP7JI3V FILLCAP_T_1_31 (
 );
   DECAP5JI3V FILLCAP_T_1_30 (
 );
   DECAP7JI3V FILLCAP_T_1_29 (
 );
   DECAP7JI3V FILLCAP_T_1_28 (
 );
   DECAP7JI3V FILLCAP_T_1_27 (
 );
   DECAP7JI3V FILLCAP_T_1_26 (
 );
   DECAP7JI3V FILLCAP_T_1_25 (
 );
   DECAP5JI3V FILLCAP_T_1_24 (
 );
   DECAP10JI3V FILLCAP_T_1_23 (
 );
   DECAP7JI3V FILLCAP_T_1_22 (
 );
   DECAP5JI3V FILLCAP_T_1_21 (
 );
   DECAP7JI3V FILLCAP_T_1_20 (
 );
   DECAP7JI3V FILLCAP_T_1_19 (
 );
   DECAP7JI3V FILLCAP_T_1_18 (
 );
   DECAP5JI3V FILLCAP_T_1_17 (
 );
   DECAP7JI3V FILLCAP_T_1_16 (
 );
   DECAP7JI3V FILLCAP_T_1_15 (
 );
   DECAP7JI3V FILLCAP_T_1_14 (
 );
   DECAP7JI3V FILLCAP_T_1_13 (
 );
   DECAP5JI3V FILLCAP_T_1_12 (
 );
   DECAP15JI3V FILLCAP_T_1_11 (
 );
   DECAP5JI3V FILLCAP_T_1_10 (
 );
   DECAP10JI3V FILLCAP_T_1_9 (
 );
   DECAP5JI3V FILLCAP_T_1_8 (
 );
   DECAP15JI3V FILLCAP_T_1_7 (
 );
   DECAP5JI3V FILLCAP_T_1_6 (
 );
   DECAP15JI3V FILLCAP_T_1_5 (
 );
   DECAP10JI3V FILLCAP_T_1_4 (
 );
   DECAP7JI3V FILLCAP_T_1_3 (
 );
   DECAP10JI3V FILLCAP_T_1_2 (
 );
   DECAP25JI3V FILLCAP_T_1_1 (
 );
endmodule

