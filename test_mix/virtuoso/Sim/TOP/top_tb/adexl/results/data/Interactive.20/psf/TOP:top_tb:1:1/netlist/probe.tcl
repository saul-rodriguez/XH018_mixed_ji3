
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
probe -create -emptyok -database ams_database {top_tb.VDDHV}
probe -create -emptyok -database ams_database {top_tb.in_l}
probe -create -emptyok -database ams_database -flow {top_tb.I0.VDDHV}
probe -create -emptyok -database ams_database -flow {top_tb.I0.GNDHV}
probe -create -emptyok -database ams_database -flow {top_tb.I0.GNDOHV}
probe -create -emptyok -database ams_database -flow {top_tb.I0.PSUB}
probe -create -emptyok -database ams_database -flow {top_tb.I0.GNDOR}
probe -create -emptyok -database ams_database -flow {top_tb.I0.GNDD}
probe -create -emptyok -database ams_database -flow {top_tb.I0.VDDOR}
probe -create -emptyok -database ams_database -flow {top_tb.I0.VDDD}

