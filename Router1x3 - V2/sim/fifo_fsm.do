onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /router_fsm_tb/busy
add wave -noupdate /router_fsm_tb/clock
add wave -noupdate /router_fsm_tb/data_in
add wave -noupdate /router_fsm_tb/detect_add
add wave -noupdate /router_fsm_tb/fifo_empty_0
add wave -noupdate /router_fsm_tb/fifo_empty_1
add wave -noupdate /router_fsm_tb/fifo_empty_2
add wave -noupdate /router_fsm_tb/fifo_full
add wave -noupdate /router_fsm_tb/full_state
add wave -noupdate /router_fsm_tb/laf_state
add wave -noupdate /router_fsm_tb/ld_state
add wave -noupdate /router_fsm_tb/lfd_state
add wave -noupdate /router_fsm_tb/low_pkt_valid
add wave -noupdate /router_fsm_tb/parity_done
add wave -noupdate /router_fsm_tb/pkt_valid
add wave -noupdate /router_fsm_tb/resetn
add wave -noupdate /router_fsm_tb/rst_int_reg
add wave -noupdate /router_fsm_tb/soft_reset_0
add wave -noupdate /router_fsm_tb/soft_reset_1
add wave -noupdate /router_fsm_tb/soft_reset_2
add wave -noupdate /router_fsm_tb/write_enb_reg
add wave -noupdate /router_fsm_tb/DUT/pstate
add wave -noupdate /router_fsm_tb/DUT/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {140 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 261
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
WaveRestoreZoom {0 ps} {846 ps}
