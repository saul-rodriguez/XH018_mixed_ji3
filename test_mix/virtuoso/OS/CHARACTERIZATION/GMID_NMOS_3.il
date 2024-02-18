simulator( 'spectre )
;design(	 "/home/saul/Sim/GMID_NMOS_L/spectre/schematic/netlist/netlist")
design( "CHARACTERIZATION" "GMID_NMOS_3" "schematic")
createNetlist
resultsDir( "/home/saul/Sim/GMID_NMOS_3/spectre/schematic" )

load("OS/CHARACTERIZATION/global.il")

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

analysis('dc ?saveOppoint t  ?param "IDS1"  ?start "10n"  
		?stop "2m"  ?dec "20"  )
desVar(	  "IDS1" IDS1	)
desVar(	  "L1" L1	)
desVar(	  "NF1" NF1	)
desVar(	  "VDS1" VDS1	)
desVar(	  "WF1" WF1	)
envOption(
	'firstRun  t 
	'analysisOrder  list("dc") 
)
saveOpPoint( "/I0/M0" ?operatingPoints "gm id" )
temp( 27 ) 
run()
selectResult( 'dc )

gm_id = OS( "/I0/M0" "gm" ) / OS( "/I0/M0" "id" )
newWindow
plot(abs(gm_id))
addTitle("GMID vs. ID")


;plot( OS( "/I0/M0" "gm" ) OS( "/I0/M0" "id" ) )
;plot( OS("/I0/M0" "gm") )
;plot( (OS("/I0/M0" "gm") / OS("/I0/M0" "id")) )
