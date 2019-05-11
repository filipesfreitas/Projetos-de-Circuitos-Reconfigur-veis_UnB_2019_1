-makelib xcelium_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../../../../../Matrias/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/prova/prova1/prova1.srcs/sources_1/ip/rom_ir_1/sim/rom_ir.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

