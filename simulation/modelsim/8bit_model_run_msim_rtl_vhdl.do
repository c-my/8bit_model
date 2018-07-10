transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Cai.MY/Desktop/8bit_model/ir.vhd}
vcom -93 -work work {C:/Users/Cai.MY/Desktop/8bit_model/pc.vhd}
vcom -93 -work work {C:/Users/Cai.MY/Desktop/8bit_model/ar.vhd}
vcom -93 -work work {C:/Users/Cai.MY/Desktop/8bit_model/ram0.vhd}
vcom -93 -work work {C:/Users/Cai.MY/Desktop/8bit_model/dr.vhd}
vcom -93 -work work {C:/Users/Cai.MY/Desktop/8bit_model/controller.vhd}
vcom -93 -work work {C:/Users/Cai.MY/Desktop/8bit_model/metronome.vhd}

