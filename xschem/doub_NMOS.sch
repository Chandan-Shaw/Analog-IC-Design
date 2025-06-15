v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -280 50 -280 {lab=#net1}
N 90 -350 90 -310 {lab=#net2}
N 90 -350 230 -350 {lab=#net2}
N 230 -350 230 -310 {lab=#net2}
N 90 -250 90 -190 {lab=GND}
N 90 -190 230 -190 {lab=GND}
N 230 -250 230 -190 {lab=GND}
N 90 -280 140 -280 {lab=GND}
N 140 -280 140 -190 {lab=GND}
N -150 -350 -150 -310 {lab=#net1}
N -150 -350 -60 -350 {lab=#net1}
N -60 -350 -60 -280 {lab=#net1}
N -150 -250 -150 -190 {lab=GND}
N -150 -190 90 -190 {lab=GND}
N -180 -190 -150 -190 {lab=GND}
N -180 -280 -180 -190 {lab=GND}
N -180 -280 -150 -280 {lab=GND}
N -250 -350 -150 -350 {lab=#net1}
N -250 -200 -250 -190 {lab=GND}
N -250 -190 -180 -190 {lab=GND}
N -250 -240 -250 -200 {lab=GND}
N -250 -350 -250 -300 {lab=#net1}
N -120 -190 -120 -160 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -130 -280 2 0 {name=M1
L=0.5
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 70 -280 0 0 {name=M2
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} 230 -280 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {isource.sym} -250 -270 2 0 {name=I0 value=10u}
C {devices/code.sym} -460 -270 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -500 -500 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC Vds 0 1.8 0.05
PLOT abs(vds#branch)
AC DEC 100 100 1000
PLOT '1/vm(vds#branch)'
.ENDC
"}
C {gnd.sym} -120 -160 0 0 {name=l1 lab=GND}
