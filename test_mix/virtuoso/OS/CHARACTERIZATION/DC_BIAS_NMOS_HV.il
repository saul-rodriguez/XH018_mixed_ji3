;====================== Set to XL mode =========================================
ocnSetXLMode()
ocnxlProjectDir( "/home/saul/projects/XH018_mixed_ji3/test_mix/virtuoso/Sim" )
ocnxlTargetCellView( "CHARACTERIZATION" "DC_BIAS_NMOS_HV" "adexl" )
ocnxlResultsLocation( "" )
ocnxlSimResultsLocation( "" )
ocnxlMaxJobFail( 20 )

;====================== Tests setup ============================================

;---------- Test "CHARACTERIZATION:DC_BIAS_NMOS_L:1" ------------- 
ocnxlBeginTest("CHARACTERIZATION:DC_BIAS_NMOS_L:1")
simulator( 'spectre )
design( "CHARACTERIZATION" "DC_BIAS_NMOS_HV" "schematic")
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

;load("OS/CHARACTERIZATION/global.il")
; ** HV DMOS **
VDSHV = 1.0
VGSHV = 1.0
WFHV = 100u
NFHV = 8

analysis('dc ?param "VDS"  ?start "0"  ?stop "45"  
		?step "0.5"  )
desVar(	  "WF" WFHV	)
desVar(	  "NF" NFHV	)
desVar(	  "VDS" VDSHV	)
desVar(	  "VGS" VGSHV	)
envOption(
	'analysisOrder  list("dc" "pz" "dcmatch" "stb" "tran" "envlp" "ac" "lf" "noise" "xf" "sp" "pss" "pac" "pstb" "pnoise" "pxf" "psp" "qpss" "qpac" "qpnoise" "qpxf" "qpsp" "hb" "hbac" "hbstb" "hbnoise" "hbxf" "sens" "acmatch") 
)
option( ?categ 'turboOpts
	'apsplus  t 
)
save( 'i "/M0/D" )
temp( 27 ) 
ocnxlOutputTerminal( "/M0/D" ?plot t ?save t)
ocnxlEndTest() ; "CHARACTERIZATION:DC_BIAS_NMOS_L:1"

;====================== Sweeps setup ===========================================
ocnxlSweepVar("VDS" "VDSHV")
ocnxlSweepVar("VGS" "0:0.5:18")
ocnxlSweepVar("WF" "WFHV")
ocnxlSweepVar("NF" "NFHV")

;====================== Model Group setup ==========================================

;====================== Corners setup ==========================================

;====================== Checks and Asserts setup ============================================
ocnxlPutChecksAsserts(?netlist nil)

;====================== Job setup ==============================================
ocnxlJobSetup( '(
	"blockemail" "1"
	"communicationtimeout" "-1"
	"configuretimeout" "300"
	"distributionmethod" "Local"
	"jobruntype" "ICRP"
	"estimatecpuvalue" ""
	"estimatememoryvalue" ""
	"lingertimeout" "300"
	"maxjobs" "4"
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

newWindow
addTitle( "NMOS DC Characterization VDS" )
plot(ids_vds)
addSubwindowTitle( "IDS vs. VDS")
addSubwindow()
plot(gds)
addSubwindowTitle( "gds vs. VDS")
