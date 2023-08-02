* SPICE export by:      S-Edit 2022.2.1
* Export time:          Wed Apr 12 00:27:44 2023
* Design path:          /home/Alice/TannerEDA/GP/lib.defs
* Library:              gp_alice
* Cell:                 XOR2_TB
* Testbench:            Spice
* View:                 schematic1
* Export as:            top-level cell
* Export mode:          hierarchical
* Exclude empty:        yes
* Exclude .model:       no
* Exclude .hdl:         no
* Exclude .end:         no
* Expand paths:         yes
* Wrap lines:           no
* Exclude simulator commands:  no
* Exclude global pins:         no
* Exclude instance locations:  no
* Control property name(s):    SDL SPICE

********* Simulation Settings - General Section *********
.LIB "/home/Alice/TannerEDA/GP/UMC/UMC180nm/Models/UMC180nmModels.lib" tt_33
*************** Subcircuits ***************
.SUBCKT N_18_MM D G S
* Library name: UMC180nmDevices
* Cell name: 
* View name: 
* PORT=S TYPE=InOut
* PORT=G TYPE=InOut
* PORT=B TYPE=InOut
* PORT=D TYPE=InOut

.ends

.SUBCKT P_18_MM D G S
* Library name: UMC180nmDevices
* Cell name: 
* View name: 
* PORT=S TYPE=InOut
* PORT=G TYPE=InOut
* PORT=B TYPE=InOut
* PORT=D TYPE=InOut

.ends

.subckt XOR2 A B Gnd VDD Z 
* Library name: gp_alice
* Cell name: XOR2
* View name: schematic
* PORT=VDD TYPE=Out
* PORT=A TYPE=In
* PORT=B TYPE=In
* PORT=Gnd TYPE=Out
* PORT=Z TYPE=Out

MM1 N_5 A Gnd Gnd n_18_mm l=L fw=240n fingers=1  connectGates=0 connectSD=0 $ $x=460 $y=640 $w=40 $h=60
MM2 N_4 B Gnd Gnd n_18_mm l=L fw=240n fingers=1  connectGates=0 connectSD=0 $ $x=460 $y=260 $w=40 $h=60
MM3 Z A N_1 Gnd n_18_mm l=L fw=240n fingers=1  connectGates=0 connectSD=0 $ $x=750 $y=620 $w=40 $h=60
MM4 Z N_5 N_2 Gnd n_18_mm l=L fw=Wn fingers=1  connectGates=0 connectSD=0 $ $x=880 $y=620 $w=40 $h=60
MM5 N_1 B Gnd Gnd n_18_mm l=L fw=240n fingers=1  connectGates=0 connectSD=0 $ $x=750 $y=500 $w=40 $h=60
MM6 N_2 N_4 Gnd Gnd n_18_mm l=L fw=Wn fingers=1  connectGates=0 connectSD=0 $ $x=880 $y=500 $w=40 $h=60
MM7 N_5 A VDD VDD p_18_mm l=L fw=240n fingers=1  connectGates=0 connectSD=0 $ $x=460 $y=740 $w=40 $h=60
MM8 N_4 B VDD VDD p_18_mm l=L fw=240n fingers=1  connectGates=0 connectSD=0 $ $x=460 $y=360 $w=40 $h=60
MM9 Z B N_3 VDD p_18_mm l=L fw=Wp_one fingers=1  connectGates=0 connectSD=0 $ $x=750 $y=730 $w=40 $h=60
MM10 Z N_4 N_6 VDD p_18_mm l=L fw=Wp fingers=1  connectGates=0 connectSD=0 $ $x=880 $y=740 $w=40 $h=60
MM11 N_6 A VDD VDD p_18_mm l=L fw=Wp fingers=1  connectGates=0 connectSD=0 $ $x=880 $y=830 $w=40 $h=60
MM12 N_3 N_5 VDD VDD p_18_mm l=L fw=Wp_one fingers=1  connectGates=0 connectSD=0 $ $x=750 $y=820 $w=40 $h=60
.ends


********* Simulation Settings - Parameters *********
.param L = 180n
.param Wn = 240n
.param Wp_one = 960n
.param deltaPhi = pi/12
.param pi = (22/7)
.param Wp = 960n
.param Wp_Inv = 420n
.param Wn_Inv = 240n
.param VDD = 1.8
.param F = 10000000
.param deltaT = 0
***** Top Level *****
X2XOR_1 In1 In2 Gnd Vdd Out1 XOR2 $ $x=760 $y=660 $w=140 $h=100
VV4 Vdd Gnd  DC VDD $ $x=790 $y=710 $w=60 $h=40 $r=270
VV1 In1 Gnd  PULSE(0 1.8 100n 1p 1p 50n 100n) $ $x=610 $y=640 $w=40 $h=60
VV2 In2 Gnd  PULSE(0 1.8 120n 1p 1p 50n 100n) $ $x=660 $y=590 $w=40 $h=60

********* Simulation Settings - Analysis Section *********
.TRAN 10n 1100n START=110n
.OPTION prtdel=1p

********* Simulation Settings - Additional SPICE Commands *********

********* Simulation Settings - Signals to Save *********
.plot v(In1)
.plot v(In2)
.plot v(Out1)

.end

