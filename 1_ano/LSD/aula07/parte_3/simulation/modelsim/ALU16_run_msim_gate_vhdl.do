transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ALU16.vho}

vcom -93 -work work {C:/Users/Ruben/Documents/UA/UA_rep/LSD/aula07/parte_3/ALU16_Tb.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  ALU16_Tb

add wave *
view structure
view signals
run -all
