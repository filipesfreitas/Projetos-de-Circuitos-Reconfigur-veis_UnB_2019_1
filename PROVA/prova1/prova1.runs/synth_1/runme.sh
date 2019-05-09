#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/SDK/2018.3/bin:/tools/Xilinx/Vivado/2018.3/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2018.3/bin
else
  PATH=/tools/Xilinx/SDK/2018.3/bin:/tools/Xilinx/Vivado/2018.3/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/tools/Xilinx/Vivado/2018.3/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/tools/Xilinx/Vivado/2018.3/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

<<<<<<< HEAD
HD_PWD='/home/filipe/Documentos/Matérias/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/PROVA/prova1/prova1.runs/synth_1'
=======
HD_PWD='C:/Users/ana01/Desktop/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/PROVA/prova1/prova1.runs/synth_1'
>>>>>>> a434efe0d53e484c909a8a9132c912c08870f6f4
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log dis_est.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source dis_est.tcl
