v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 60 660 860 1060 {flags=graph
y1=-19
y2=22
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=3
x2=8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=4
node="\\"Vout db20()\\""}
B 2 60 1060 860 1460 {flags=graph
y1=-92
y2=-0.06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3
x2=8
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ph(Vout)"
color=""
dataset=-1
unitx=1
logx=1
logy=0
}
T {tcleval(A0: [to_eng [xschem raw value A0 0]]
UGF: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]])} 950 1020 0 0 0.6 0.6 {floater=1}
N 540 130 560 130 {
lab=Vout}
N 560 130 560 150 {
lab=Vout}
N 50 170 50 190 {
lab=GND}
N 50 70 50 110 {
lab=VSS}
N 130 170 130 190 {
lab=GND}
N 50 190 50 210 {
lab=GND}
N 130 70 130 110 {
lab=VDD}
N 50 190 130 190 {
lab=GND}
N 210 70 210 110 {
lab=VDD}
N 210 170 210 210 {
lab=Ib}
N 230 370 270 370 {
lab=#net1}
N 50 320 50 480 {
lab=#net1}
N 50 320 230 320 {
lab=#net1}
N 50 540 50 560 {
lab=GND}
N 230 540 230 560 {
lab=GND}
N 230 460 310 460 {
lab=#net2}
N 230 460 230 480 {
lab=#net2}
N 230 410 270 410 {
lab=GND}
N 230 410 230 430 {
lab=GND}
N 150 420 150 460 {
lab=#net2}
N 310 420 310 460 {
lab=#net2}
N 230 320 230 370 {
lab=#net1}
N 310 280 310 360 {
lab=Vn}
N 150 280 150 360 {
lab=Vp}
N 150 460 230 460 {
lab=#net2}
N 190 410 230 410 {
lab=GND}
N 190 370 230 370 {
lab=#net1}
C {devices/isource.sym} 210 140 0 0 {name=I0 value=10u}
C {devices/lab_wire.sym} 450 70 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 560 180 0 0 {name=C1
m=1
value=1p}
C {devices/gnd.sym} 560 210 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 390 90 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 390 170 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 390 130 0 0 {name=p7 sig_type=std_logic lab=Ib}
C {devices/code_shown.sym} 960 310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.param vdd=1.5
.param vcm=0.75

.control

    save all

    * operating point
    op

    write sg13g2_leo_ip__ota5t_tb.raw
    set appendwrite

    * run ac simulation
    ac dec 20 1k 100e6

    * measure parameters
    let vout_mag = abs(v(Vout))
    let vout_phase_margin = phase(v(Vout)) * 180/pi + 180
    meas ac A0 find vout_mag at=1k
    meas ac UGF when vout_mag=1 fall=1
    meas ac PM find vout_phase_margin when vout_mag=1

    write sg13g2_leo_ip__ota5t_tb.raw
.endc
"}
C {devices/launcher.sym} 460 550 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 460 610 0 0 {name=h27
descr="Load waves AC" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac

"
}
C {devices/lab_wire.sym} 560 130 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {sg13g2_leo_ip__ota5t.sym} 460 130 0 0 {name=x1}
C {devices/vsource.sym} 50 140 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 50 210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 140 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 210 2 0 {name=p8 sig_type=std_logic lab=Ib}
C {devices/vcvs.sym} 150 390 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 310 390 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 50 510 0 0 {name=Vdm value="ac 1" savecurrent=false}
C {devices/vsource.sym} 230 510 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 50 560 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 230 560 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 230 430 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 150 280 0 0 {name=p12 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 310 280 0 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 130 70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 70 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 450 190 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 930 70 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
"
spice_ignore=false
      }
