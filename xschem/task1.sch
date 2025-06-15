v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 7 300 10 320 10 {}
N 90 -180 120 -180 {lab=virt}
N -80 -40 -20 -40 {lab=vn2}
N -190 -40 -140 -40 {lab=vn1}
N -280 -40 -250 -40 {lab=vnmic}
N -280 -40 -280 40 {lab=vnmic}
N 420 100 420 120 {lab=GND}
N 90 -120 120 -120 {lab=virt}
N 90 -180 90 -120 {lab=virt}
N 90 -120 90 -80 {lab=virt}
N 220 -180 300 -180 {lab=vout}
N 220 -120 340 -120 {lab=vout}
N 300 -180 340 -180 {lab=vout}
N 340 -180 340 -40 {lab=vout}
N 120 -120 160 -120 {lab=virt}
N 120 -180 160 -180 {lab=virt}
N 340 -40 340 10 {lab=vout}
N 300 10 340 10 {lab=vout}
N 340 10 420 10 {lab=vout}
N 420 10 420 40 {lab=vout}
N -280 100 -280 130 {lab=GND}
N 90 -80 90 -40 {lab=virt}
N 80 150 80 190 {lab=GND}
N 210 70 210 100 {lab=GND}
N 290 10 290 30 {lab=vout}
N 290 10 300 10 {lab=vout}
N 80 70 80 90 {lab=vcm}
N 80 70 110 70 {lab=vcm}
N 40 -40 90 -40 {lab=virt}
N 90 -40 90 -20 {lab=virt}
N 90 -20 110 -20 {lab=virt}
C {gnd.sym} -280 130 0 0 {name=l1 lab=GND}
C {res.sym} -220 -40 3 0 {name=R1
value=380k
footprint=1206
device=resistor
m=1}
C {capa.sym} -110 -40 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 10 -40 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 -120 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 190 -180 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 420 70 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 210 100 0 0 {name=l3 lab=GND}
C {vsource.sym} -280 70 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {lab_wire.sym} -270 -40 0 0 {name=p2 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -150 -40 0 0 {name=p3 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -40 -40 0 0 {name=p4 sig_type=std_logic lab=vn2}
C {simulator_commands_shown.sym} 420 -420 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
  .op
  .control
  save all 
  AC DEC 100 1 10e6
  write micTest.raw

  MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO = 10e6
plot vdb(vout)
  LET f3db
  MEAS AC fzero WHEN vdb(vout)=f3db RISE = 1
  MEAS AC fpole WHEN vdb(vout)=f3db FALL = 1
  MEAS AC fmid WHEN vdb(vout)=gain_db
  **phase measurement
  LET phase_deg = cph(vout)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  MEAS AC phase_mid FIND phase_deg AT=fmid
  **MEAS fzero fpole using phase
  **
  **TRAN 1u 5m
.endc
.end
"}
C {gnd.sym} 420 120 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 90 -80 0 0 {name=p1 sig_type=std_logic lab=virt}
C {lab_wire.sym} 330 10 0 0 {name=p5 sig_type=std_logic lab=vout}
C {gnd.sym} 80 190 0 0 {name=l2 lab=GND}
C {vsource.sym} 80 120 0 0 {name=V2 value=3 savecurrent=false}
C {task01.sym} 270 200 0 0 {name=x1}
C {lab_wire.sym} 80 70 0 0 {name=p6 sig_type=std_logic lab=vcm}
