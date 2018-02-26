transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/RegisterNbit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/Mux32to1Nbit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/Decoder5to32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/RegFile32x64.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/Shifter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/Adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/Mux8to1Nbit.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/RAM256x64.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/Datapath.v}

vlog -vlog01compat -work work +incdir+C:/Users/Thomas\ Haskell/Documents/School/Comp\ Arc/scrum_run {C:/Users/Thomas Haskell/Documents/School/Comp Arc/scrum_run/Datapath_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  Datapath_tb

add wave *
view structure
view signals
run -all
