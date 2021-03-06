onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /router_sync_tb/clock
add wave -noupdate /router_sync_tb/data_in
add wave -noupdate /router_sync_tb/detect_add
add wave -noupdate /router_sync_tb/empty_0
add wave -noupdate /router_sync_tb/empty_1
add wave -noupdate /router_sync_tb/empty_2
add wave -noupdate /router_sync_tb/fifo_full
add wave -noupdate /router_sync_tb/full_0
add wave -noupdate /router_sync_tb/full_1
add wave -noupdate /router_sync_tb/full_2
add wave -noupdate /router_sync_tb/read_enb_0
add wave -noupdate /router_sync_tb/read_enb_1
add wave -noupdate /router_sync_tb/read_enb_2
add wave -noupdate /router_sync_tb/resetn
add wave -noupdate /router_sync_tb/soft_reset_0
add wave -noupdate /router_sync_tb/soft_reset_1
add wave -noupdate /router_sync_tb/soft_reset_2
add wave -noupdate /router_sync_tb/vld_out_0
add wave -noupdate /router_sync_tb/vld_out_1
add wave -noupdate /router_sync_tb/vld_out_2
add wave -noupdate /router_sync_tb/DUT/write_enb_value
add wave -noupdate /router_sync_tb/write_enb
add wave -noupdate /router_sync_tb/write_enb_reg
add wave -noupdate /router_sync_tb/DUT/counter0
add wave -noupdate /router_sync_tb/DUT/counter1
add wave -noupdate /router_sync_tb/DUT/counter2
add wave -noupdate /router_sync_tb/DUT/data_in_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {33 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 268
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
WaveRestoreZoom {0 ps} {78 ps}
