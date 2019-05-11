// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri May 10 11:20:29 2019
// Host        : filipe running 64-bit Linux Mint 18.3 Sylvia
// Command     : write_verilog -force -mode funcsim
//               /home/filipe/Documentos/Matérias/Projetos-de-Circuitos-Reconfigur-veis_UnB_2019_1/prova/prova1/prova1.srcs/sources_1/bd/rom_xir/ip/rom_xir_c_counter_binary_0_0/rom_xir_c_counter_binary_0_0_sim_netlist.v
// Design      : rom_xir_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_xir_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module rom_xir_c_counter_binary_0_0
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
  rom_xir_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module rom_xir_c_counter_binary_0_0_c_counter_binary_v12_0_12
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
  rom_xir_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
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
FMxydiStuxVIgdrrqbBJu0HvZ4NqsdDFFtcbL6R5bKayLEc8WZWi3oan59NxyvhqA/AW12Qu7tpf
cJPP5RunWOtdZHeAk2whMbyH3C88jEndtI6sEm+3jDb7vLx5arOZnY3VuYv+2pCAzCvJ4n6byCtp
Dlc0LZ3HbH3j4rOwFuplgTH6Qu4QKAukaMUqhxXAnXJYsWiB6Du4Xx9vMU2rEcNBT+Xd0LxE4igJ
rimPRtfMBNp8nLeGLvAsn5NtxBPE9XSyPVgDLaYaqv2he97JtXUcAYri7eM1N8Xl+B4NVJ1di+/F
UiEYm3QX2RFgJignW+++CqGaF7fjU3JlZYHlwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ll8Q4ullTXTYJsde3pbwO+dMU9F8SGSA68O9bNMPG+BgyRlWvbMUOpuy17kvNJNUYMexyP+UGY9O
+DsE+9LSu7M8YzaoLzaSX/b2/o3d1ZGS2ZsUtZZYZzQR6Sbwz7kumAvNq90FvZqoCwvggfeoC3A4
UNzlvCn3PHyJJVVRY+dmIqcUnBYCpPxsT2DlYYrVN0CcJZVmYCOHdjK0S4/GeI8etzB8SXpdrMwg
+8wbSKC7j1NaYYm+Imj+JyO640IO4E4y7lA6MRC70IvcjT2n4d5PQoxBlriVz8Y2311RuQmQn//6
zlAbFtgIgDuOlmrV8VduVblrKo5TiBXYNzHdmg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
N8kq78oY4UEXC9uVMQ02GqUY
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
