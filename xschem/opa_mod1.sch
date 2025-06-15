v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -80 20 -80 {lab=#net1}
N 80 -200 120 -200 {lab=#net1}
N 180 -200 260 -200 {lab=#net2}
N -260 -80 -220 -80 {lab=#net3}
N -260 -80 -260 -20 {lab=#net3}
N -160 -80 -100 -80 {lab=#net4}
N -260 40 -260 50 {lab=GND}
N -260 50 -260 60 {lab=GND}
N 40 100 40 120 {lab=GND}
N 250 -30 380 -30 {lab=#net2}
N 260 -200 270 -200 {lab=#net2}
N 270 -200 270 -30 {lab=#net2}
N 50 -200 80 -200 {lab=#net1}
N 50 -200 50 -80 {lab=#net1}
N 20 -80 30 -80 {lab=#net1}
N 30 -80 70 -80 {lab=#net1}
N 40 10 70 10 {lab=#net5}
N 40 10 40 40 {lab=#net5}
N 170 10 170 50 {lab=GND}
C {vsource.sym} -260 10 0 0 {name=V1 value=3 savecurrent=false}
C {capa.sym} -190 -80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -70 -80 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 150 -200 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 40 70 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -260 60 0 0 {name=l1 lab=GND}
C {gnd.sym} 40 120 0 0 {name=l2 lab=GND}
C {gnd.sym} 170 50 0 0 {name=l3 lab=GND}
C {task01.sym} 230 140 0 0 {name=x1}
