export X018_DIR=/pkg/xfab/XKIT/xh018

export PROJ_DIR=test_mix

#io cells junction isolated 3V-3V pad limited
export LIBERTY_IO_CELLS=$X018_DIR/diglibs/IO_CELLS_JIC3V/v1_0/liberty_LPMOS/v1_0_0/PVT_3_30V_3_30V_range
export VERILOG_IO_CELLS=$X018_DIR/diglibs/IO_CELLS_JIC3V/v1_0/verilog/v1_0_0/IO_CELLS_JIC3V.v

#io cells junction isolated 3V-3V core limited
#export LIBERTY_IO_CELLS=$X018_DIR/diglibs/IO_CELLS_JIFC3V/v1_0/liberty_LPMOS/v1_0_0/PVT_3_30V_3_30V_range
#export VERILOG_IO_CELLS=$X018_DIR/diglibs/IO_CELLS_JIFC3V/v1_0/verilog/v1_0_0/IO_CELLS_JIFC3V.v

#std cells junction isolated 3V
export LIBERTY_STD_CELLS=$X018_DIR/diglibs/D_CELLS_JI3V/v2_1/liberty_LPMOS_MOS3LP/v2_1_2/PVT_3_30V_range
export VERILOG_STD_CELLS=$X018_DIR/diglibs/D_CELLS_JI3V/v2_1/verilog/v2_1_0/D_CELLS_JI3V.v
export VERILOG_PRIMITIVES=$X018_DIR/diglibs/D_CELLS_JI3V/v2_1/verilog/v2_1_0/VLG_PRIMITIVES.v

#captables
export CAPTBL=$X018_DIR/cadence/v9_0/capTbl/v9_0_1

mkdir $PROJ_DIR
cd $PROJ_DIR

mkdir virtuoso
mkdir src
mkdir genus
mkdir liberty
mkdir innovus
mkdir sim_rtl
mkdir sim_gate
mkdir sim_postlay

cp $X018_DIR/../../installer/innovus_dir_install/cds.lib innovus
ln -s $CAPTBL innovus/CAPTBL


ln -s $LIBERTY_IO_CELLS liberty/LIBERTY_IO_CELLS 
ln -s $LIBERTY_STD_CELLS liberty/LIBERTY_STD_CELLS

cd src
ln -s $VERILOG_IO_CELLS .
ln -s $VERILOG_STD_CELLS .
ln -s $VERILOG_PRIMITIVES .
cd ..

cp $X018_DIR/../../init_XFAB.sh .
source init_XFAB.sh

cd virtuoso
xkit -t xh018












