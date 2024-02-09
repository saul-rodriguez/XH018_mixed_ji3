
# This is the NC-SIM(R) probe command file
# used in the AMS-ADE integration.


#
# Database settings
#
if { [info exists ::env(AMS_RESULTS_DIR) ] } { set AMS_RESULTS_DIR $env(AMS_RESULTS_DIR)} else {set AMS_RESULTS_DIR "../psf"}
database -open ams_database -into ${AMS_RESULTS_DIR} -default

#
# Probe settings
#
probe -create -emptyok -database ams_database {top_tb.clk}
probe -create -emptyok -database ams_database {top_tb.enable}
probe -create -emptyok -database ams_database {top_tb.reset}
probe -create -emptyok -database ams_database {top_tb.out_l}
probe -create -emptyok -database ams_database {top_tb.out_h}
probe -create -emptyok -database ams_database {top_tb.out2}
probe -create -emptyok -database ams_database {top_tb.out1}
probe -create -emptyok -database ams_database {top_tb.out0}
probe -create -emptyok -database ams_database {top_tb.I0.out[2]}
probe -create -emptyok -database ams_database {top_tb.VDDHV}
probe -create -emptyok -database ams_database {top_tb.net7}
probe -create -emptyok -database ams_database -flow {top_tb.I0.I2.VDDHV}
probe -create -emptyok -database ams_database -flow {top_tb.I0.I0.I24.PAD}
probe -create -emptyok -database ams_database -flow {top_tb.I0.I0.I33.PAD}
probe -create -emptyok -database ams_database -flow {top_tb.I0.I0.I29.VDD}

