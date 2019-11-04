transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/University/Others/GUC MATERIAL/Semester 5/MET/DSD/Assignment/Assignment1.vhd}
vcom -93 -work work {D:/University/Others/GUC MATERIAL/Semester 5/MET/DSD/Assignment/freq_div.vhdl}
vcom -93 -work work {D:/University/Others/GUC MATERIAL/Semester 5/MET/DSD/Assignment/counter.vhd}
vcom -93 -work work {D:/University/Others/GUC MATERIAL/Semester 5/MET/DSD/Assignment/bcd.vhd}

vcom -93 -work work {D:/University/Others/GUC MATERIAL/Semester 5/MET/DSD/Assignment/simulation/modelsim/Assignment1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  benchTest

add wave *
view structure
view signals
run -all
