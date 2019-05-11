--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Fri May 10 11:14:47 2019
--Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
--Command     : generate_target rom_xir.bd
--Design      : rom_xir
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rom_xir is
  port (
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 26 downto 0 );
    en : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of rom_xir : entity is "rom_xir,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=rom_xir,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of rom_xir : entity is "rom_xir.hwdef";
end rom_xir;

architecture STRUCTURE of rom_xir is
  component rom_xir_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  end component rom_xir_blk_mem_gen_0_1;
  component rom_xir_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component rom_xir_c_counter_binary_0_0;
  signal Net : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal en_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dout : signal is "xilinx.com:signal:data:1.0 DATA.DOUT DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dout : signal is "XIL_INTERFACENAME DATA.DOUT, LAYERED_METADATA undef";
begin
  Net <= clk;
  dout(26 downto 0) <= blk_mem_gen_0_douta(26 downto 0);
  en_1 <= en;
  reset_1 <= reset;
blk_mem_gen_0: component rom_xir_blk_mem_gen_0_1
     port map (
      addra(6 downto 0) => c_counter_binary_0_Q(6 downto 0),
      clka => Net,
      douta(26 downto 0) => blk_mem_gen_0_douta(26 downto 0),
      ena => en_1
    );
c_counter_binary_0: component rom_xir_c_counter_binary_0_0
     port map (
      CE => en_1,
      CLK => Net,
      Q(6 downto 0) => c_counter_binary_0_Q(6 downto 0),
      SCLR => reset_1
    );
end STRUCTURE;
