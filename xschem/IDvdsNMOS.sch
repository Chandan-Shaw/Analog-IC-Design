v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -80 -70 -80 {lab=vg}
N -30 -170 -30 -110 {lab=vd}
N -30 -170 140 -170 {lab=vd}
N 140 -170 140 -20 {lab=vd}
N -200 80 140 80 {lab=GND}
N 140 40 140 80 {lab=GND}
N -30 -50 -30 80 {lab=GND}
N -30 -80 50 -80 {lab=GND}
N 50 -80 50 -0 {lab=GND}
N -30 -0 50 -0 {lab=GND}
N -200 -80 -200 -40 {lab=vg}
N -200 20 -200 80 {lab=GND}
N -30 80 -30 120 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -50 -80 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -200 -10 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 140 10 0 0 {name=Vds value=0 savecurrent=false}
C {devices/code.sym} -510 10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_wire.sym} -170 -80 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 100 -170 0 0 {name=p2 sig_type=std_logic lab=vd}
C {gnd.sym} -30 120 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -510 -330 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC vgs 0.4 1.0 0.1  vds 0 1.8 0.1
.ENDC
"}
