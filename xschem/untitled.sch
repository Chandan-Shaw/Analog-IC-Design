v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -410 -300 -410 -160 {lab=#net1}
N -410 -300 -270 -300 {lab=#net1}
N -270 -300 -270 -260 {lab=#net1}
N -270 -200 -270 -160 {lab=#net2}
N -410 -100 -410 -70 {lab=GND}
N -410 -70 -270 -70 {lab=GND}
N -270 -100 -270 -70 {lab=GND}
N -270 -230 -200 -230 {lab=GND}
N -200 -230 -190 -230 {lab=GND}
N -190 -230 -190 -70 {lab=GND}
N -270 -70 -190 -70 {lab=GND}
N -270 -70 -270 -40 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -290 -230 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -410 -130 0 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -270 -130 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -270 -40 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -640 -440 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
"}
