onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /router_fifo_tb/clock
add wave -noupdate /router_fifo_tb/data_in
add wave -noupdate /router_fifo_tb/data_out
add wave -noupdate /router_fifo_tb/empty
add wave -noupdate /router_fifo_tb/full
add wave -noupdate /router_fifo_tb/lfd_state
add wave -noupdate /router_fifo_tb/read_enb
add wave -noupdate /router_fifo_tb/resetn
add wave -noupdate /router_fifo_tb/soft_reset
add wave -noupdate /router_fifo_tb/write_enb
add wave -noupdate /router_fifo_tb/DUT/fifo_reg
add wave -noupdate /router_fifo_tb/DUT/counter
add wave -noupdate /router_fifo_tb/DUT/r_index
add wave -noupdate /router_fifo_tb/DUT/w_index
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {85 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 204
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {54 ps} {162 ps}
