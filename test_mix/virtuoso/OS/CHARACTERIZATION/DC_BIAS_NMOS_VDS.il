;====================== Set to XL mode =========================================
ocnSetXLMode()
ocnxlProjectDir( "./Sim" )
ocnxlTargetCellView( "CHARACTERIZATION" "DC_BIAS_NMOS_L" "adexl" )
ocnxlResultsLocation( "" )
ocnxlSimResultsLocation( "" )
ocnxlMaxJobFail( 20 )

;====================== Tests setup ============================================

;---------- Test "CHARACTERIZATION:DC_BIAS_NMOS:1" ------------- 
ocnxlBeginTest("CHARACTERIZATION:DC_BIAS_NMOS:1")
simulator( 'spectre )
design( "CHARACTERIZATION" "DC_BIAS_NMOS" "schematic")
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
analysis('dc ?param "VDS"  ?start "0"  ?stop "1.8"  
		?step ".05"  )
desVar(	  "VDS" 1	)
desVar(	  "VGS" 1	)
envOption(
	'firstRun  t 
	'analysisOrder  list("dc" "pz" "dcmatch" "stb" "tran" "envlp" "ac" "lf" "noise" "xf" "sp" "pss" "pac" "pstb" "pnoise" "pxf" "psp" "qpss" "qpac" "qpnoise" "qpxf" "qpsp" "hb" "hbac" "hbstb" "hbnoise" "hbxf" "sens" "acmatch") 
)
option( ?categ 'turboOpts
	'apsplus  t 
	'uniMode  "APS" 
)
save( 'i "/M0/D" )
temp( 27 ) 
ocnxlOutputTerminal( "/M0/D" ?plot t ?save t)
ocnxlOutputExpr( "deriv(IDC(\"/M0/D\"))" ?name "gm" ?plot t ?evalType 'point)
ocnxlEndTest() ; "CHARACTERIZATION:DC_BIAS_NMOS:1"

;====================== Sweeps setup ===========================================
ocnxlSweepVar("VGS" "0:0.1:1.8")
ocnxlSweepVar("VDS" "1")

;====================== Model Group setup ==========================================

;====================== Corners setup ==========================================

;====================== Checks and Asserts setup ============================================
ocnxlPutChecksAsserts(?netlist nil)

;====================== Job setup ==============================================
ocnxlJobSetup( '(
	"blockemail" "1"
	"configuretimeout" "300"
	"distributionmethod" "Local"
	"jobruntype" "ICRP"
	"estimatememoryvalue" ""
	"lingertimeout" "300"
	"maxjobs" "12"
	"name" "ADE XL Default"
	"preemptivestart" "1"
	"reconfigureimmediately" "1"
	"runtimeout" "-1"
	"showerrorwhenretrying" "1"
	"showoutputlogerror" "0"
	"startmaxjobsimmed" "1"
	"starttimeout" "300"
	"usesameprocess" "1"
) )

;====================== Disabled items =========================================

;====================== Run Mode Options ======================================

;====================== Starting Point Info ======================================

;====================== Run command ============================================
ocnxlRun( ?mode 'sweepsAndCorners ?nominalCornerEnabled t ?allCornersEnabled t ?allSweepsEnabled t)
ocnxlOutputSummary(?exprSummary t ?specSummary t ?detailed t ?wave t)
ocnxlOpenResults()



;====================== End XL Mode command ===================================
ocnxlEndXLMode()

ids_vds = i("/M0/D" ?result "dc")
gds = deriv(ids_vds)
rds = 1.0/gds

; Plot IDS
newWindow
addTitle( "NMOS DC Characterization VDS" )
plot(ids_vds)
addSubwindowTitle( "IDS vs. VDS")
addSubwindow()
plot(rds)
addSubwindowTitle( "rds vs. VDS")

/************************/


