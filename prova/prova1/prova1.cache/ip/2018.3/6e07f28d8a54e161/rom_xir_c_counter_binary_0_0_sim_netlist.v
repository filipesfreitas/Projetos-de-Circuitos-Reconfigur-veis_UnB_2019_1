// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri May 10 11:20:28 2019
// Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_xir_c_counter_binary_0_0_sim_netlist.v
// Design      : rom_xir_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_xir_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 7} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 7}" *) output [6:0]Q;

  wire CE;
  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "7" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [6:0]L;
  output THRESH0;
  output [6:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [6:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "7" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DXAelS3zb2bd3sV9HunT64XCszfgyJgHb54d08KEjFh5OHMXFfstGROIjiHlw+pu8ZO3d2XGcIXA
QAiDERQrQ3tNGmViPj3WGFNMtkY2WScz3d8q4FbbYxxeoRkN3eCiKgLgcPPHhMG3NYmbXhHujreS
O1pqQiCZr0n4shYQrhipeCFwDKX7NsY05ZwtWPmPJSYuhA79I9hCm/0o222AKGAM33S6fss2xih/
wGA/SLizr7aesVZmkkD6NtY1J8wWmRfIDYYfbi1nSVac8ZsPR2xLRMLVvEJvfMz/niXVg/k+Z5go
fcAoiza6WYnc1A8syaCgm2xxCfLXgujrY8tGEQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F+XzFgKxom+zh07569zMVXfy4QrW4Fn4E6NysmUJJ3BtceezeZaNEg3EQp3aiDUFEt3RTRnnZi6r
yG6J7eTXROFTDb9HihPjwkuvsksnYghI58n/LGIiy1o0o1gp+Po6uYY7X15LZmWDW86GhuCl4qQ2
t7IThUF/CYNYTh1OAKHS1VrT40+1M9uj6BqXd+GlZIocwYE2tJrDZpDC8vCmW9Unc9WJHaQO7Moc
NXpzuD5S9cnGC60usWDthEoRCwhMj+wg9Bdgk+5lyAlAIBwLWFOg/66X5jrlz16CpK1ERXXZwkGP
65gQsGiD05sXE+t55aCfE704TnJ5sn5t4kb9CA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7024)
`pragma protect data_block
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
FsfTT7JAYBeSojZc4w==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
