onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /router_reg_tb/clock
add wave -noupdate /router_reg_tb/data_in
add wave -noupdate /router_reg_tb/detect_add
add wave -noupdate /router_reg_tb/dout
add wave -noupdate /router_reg_tb/err
add wave -noupdate /router_reg_tb/fifo_full
add wave -noupdate /router_reg_tb/full_state
add wave -noupdate /router_reg_tb/laf_state
add wave -noupdate /router_reg_tb/ld_state
add wave -noupdate /router_reg_tb/lfd_state
add wave -noupdate /router_reg_tb/low_pkt_valid
add wave -noupdate /router_reg_tb/parity_done
add wave -noupdate /router_reg_tb/parity_packet
add wave -noupdate /router_reg_tb/pkt_valid
add wave -noupdate /router_reg_tb/resetn
add wave -noupdate /router_reg_tb/rst_int_reg
add wave -noupdate /router_reg_tb/DUT/data_in_header
add wave -noupdate /router_reg_tb/DUT/data_fifo_full
add wave -noupdate -expand -group Parity /router_reg_tb/DUT/next_parity
add wave -noupdate -expand -group Parity /router_reg_tb/DUT/parity_packet
add wave -noupdate -expand -group Parity /router_reg_tb/DUT/parity_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 272
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
WaveRestoreZoom {0 ps} {831 ps}
