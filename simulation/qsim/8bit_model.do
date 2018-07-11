onerror {exit -code 1}
vlib work
vcom -work work 8bit_model.vho
vcom -work work Waveform3.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.eight_bit_model_vhd_vec_tst
vcd file -direction 8bit_model.msim.vcd
vcd add -internal eight_bit_model_vhd_vec_tst/*
vcd add -internal eight_bit_model_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
