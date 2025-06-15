v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -230 -190 -230 -160 {lab=#net1}
N -230 -190 -200 -190 {lab=#net1}
N -140 -190 80 -190 {lab=#net2}
N 80 -190 80 -150 {lab=#net2}
N -40 -190 -40 -170 {lab=#net2}
N -40 -110 -40 -80 {lab=#net3}
N -40 -80 80 -80 {lab=#net3}
N 80 -110 80 -80 {lab=#net3}
N -230 -80 -40 -80 {lab=#net3}
N -230 -100 -230 -80 {lab=#net3}
N -270 -280 -140 -280 {lab=#net4}
N -80 -280 120 -280 {lab=#net5}
N 120 -280 120 -160 {lab=#net5}
N 120 -100 120 -60 {lab=GND}
N -370 -150 -270 -150 {lab=#net4}
N -490 -150 -430 -150 {lab=#net6}
N -570 -150 -550 -150 {lab=#net7}
N -570 -150 -570 -80 {lab=#net7}
N -570 -20 -570 0 {lab=GND}
N -320 -110 -270 -110 {lab=#net8}
N -320 -110 -320 -70 {lab=#net8}
N -320 -10 -320 10 {lab=GND}
N -290 -280 -270 -280 {lab=#net4}
N -290 -280 -290 -150 {lab=#net4}
C {vcvs.sym} -230 -130 0 0 {name=E1 value=3}
C {vcvs.sym} 120 -130 0 0 {name=E2 value=3}
C {res.sym} -170 -190 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -40 -140 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -110 -280 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 120 -60 0 0 {name=l1 lab=GND}
C {vsource.sym} -320 -40 0 0 {name=V1 value=3 savecurrent=false}
C {res.sym} -400 -150 3 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -520 -150 3 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -570 -50 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} -570 0 0 0 {name=l2 lab=GND}
C {gnd.sym} -320 10 0 0 {name=l3 lab=GND}
