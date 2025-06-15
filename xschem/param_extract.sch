v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -410 -300 -410 -160 {lab=vgds}
N -410 -300 -270 -300 {lab=vgds}
N -270 -300 -270 -260 {lab=vgds}
N -270 -200 -270 -160 {lab=#net1}
N -410 -100 -410 -70 {lab=GND}
N -410 -70 -270 -70 {lab=GND}
N -270 -100 -270 -70 {lab=GND}
N -270 -230 -200 -230 {lab=GND}
N -200 -230 -190 -230 {lab=GND}
N -190 -230 -190 -70 {lab=GND}
N -270 -70 -190 -70 {lab=GND}
N -270 -70 -270 -40 {lab=GND}
N -330 -230 -310 -230 {lab=vgds}
N -330 -300 -330 -230 {lab=vgds}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -290 -230 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -410 -130 0 0 {name=Vds value=1 savecurrent=false}
C {vsource.sym} -270 -130 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -270 -40 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -770 -470 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC Vds 0 1.8 0.05  Vsb 0 0.5 0.1
plot abs(vds#branch)
plot sqrt(2*(vds#branch))
plot log(abs(vds#branch))
.ENDC
"}
C {devices/code.sym} -660 -70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_wire.sym} -360 -300 0 0 {name=p1 sig_type=std_logic lab=vgds}
