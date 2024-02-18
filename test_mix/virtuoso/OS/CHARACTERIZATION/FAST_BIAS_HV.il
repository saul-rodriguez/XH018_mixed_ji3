simulator( 'spectre )
;design(	 "/home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/Sim/BIAS_NMOS_HV/spectre/schematic/netlist/netlist")
design( "CHARACTERIZATION" "BIAS_NMOS_HV" "schematic")
createNetlist 

resultsDir( "/home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/Sim/BIAS_NMOS_HV/spectre/schematic" )
modelFile( 
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/config.scs" "default")
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/param.scs" "3s")
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/bip.scs" "tm")
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/cap.scs" "tm")
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/dio.scs" "tm")
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/mos.scs" "tm")
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/photo.scs" "tm")
    '("/home/saul/pkg/xfab/XKIT/xh018/cadence/v9_0/spectre/v9_0_2/lpmos/res.scs" "tm")
)
analysis('dc ?saveOppoint t  )

; ** NMOS HV **
VDS1 = 5.0
IDS1 = 50.0m
WF1 = 100.0u
NF1 = 8

desVar(	  "IDS" IDS1	)
desVar(	  "VDS" VDS1	)
desVar(	  "NF" NF1	)
desVar(	  "WF" WF1	)
envOption(
	'analysisOrder  list("dc") 
)
temp( 27 ) 
run()


selectResults('dcOpInfo)

gm1 = getData("M0.m1")->gm
rds1 = 1/getData("M0.m1")->gds
cgd1 = 1e15*mag(getData("M0.m1")->cgd)
cgs1 = 1e15*mag(getData("M0.m1")->cgs)
cds1 = 1e15*mag(getData("M0.m1")->cds)
cdb1 = 1e15*mag(getData("M0.m1")->cdb)
vgs1 = getData("M0.m1")->vgs
G1 = gm1*rds1
gm_id1 = gm1/IDS1
Ft1 = gm1/(2*3.1415927*(cgs1+cgd1))*1e15/1e6 ;Ft in MHz

;****** Printing Results on the CIW log ********

printf("\n\n\n***************************\n")
printf("* FAST BIASING RESULTS HV NMOS *  \n")
printf("****************************\n\n")

printf("NMOS1: W1_tot = %4.2fum IDS1 = %4.4fmA  VDS1 = %4.2fV\n" 1e6*(WF1*NF1) 1e3*IDS1 VDS1)
printf("  gm1 = %4.3fm\n  rds1 = %4.2f\n  cgs1 = %4.2ff\n  cgd1 = %4.2ff\n  cds1 = %4.2ff\n  cdb1 = %4.2ff\n  vgs1 = %5.4f\n  Gain1 = %4.2f\n" 1e3*gm1 rds1 cgs1 cgd1 cds1 cdb1 vgs1 G1)
printf("  gm_id1 = %4.2f\n  Ft1 = %4.2f MHz \n\n" gm_id1 Ft1)
