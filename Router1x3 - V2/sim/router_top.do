onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TOP /router_top_tb/busy
add wave -noupdate -group TOP /router_top_tb/clock
add wave -noupdate -group TOP /router_top_tb/data_in
add wave -noupdate -group TOP /router_top_tb/dout_out_0
add wave -noupdate -group TOP /router_top_tb/dout_out_1
add wave -noupdate -group TOP /router_top_tb/dout_out_2
add wave -noupdate -group TOP /router_top_tb/parity_send
add wave -noupdate -group TOP /router_top_tb/pkt_valid
add wave -noupdate -group TOP /router_top_tb/read_enb_0
add wave -noupdate -group TOP /router_top_tb/read_enb_1
add wave -noupdate -group TOP /router_top_tb/read_enb_2
add wave -noupdate -group TOP /router_top_tb/resetn
add wave -noupdate -group TOP /router_top_tb/vld_out_0
add wave -noupdate -group TOP /router_top_tb/vld_out_1
add wave -noupdate -group TOP /router_top_tb/vld_out_2
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/clock
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/resetn
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/pkt_valid
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/parity_done
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/soft_reset_0
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/soft_reset_1
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/soft_reset_2
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/fifo_full
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/low_pkt_valid
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/fifo_empty_0
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/fifo_empty_1
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/fifo_empty_2
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/data_in
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/busy
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/detect_add
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/ld_state
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/laf_state
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/full_state
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/write_enb_reg
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/rst_int_reg
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/lfd_state
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/pstate
add wave -noupdate -group FSM /router_top_tb/TOP/FSM/next_state
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/clock
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/resetn
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/detect_add
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/read_enb_0
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/read_enb_1
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/read_enb_2
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/empty_0
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/empty_1
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/empty_2
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/full_0
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/full_1
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/full_2
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/data_in
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/write_enb_reg
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/soft_reset_0
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/soft_reset_1
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/soft_reset_2
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/fifo_full
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/vld_out_0
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/vld_out_1
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/vld_out_2
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/write_enb
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/data_in_reg
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/write_enb_value
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/counter0
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/counter1
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/counter2
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/fifo_full_reg
add wave -noupdate -group SYNC /router_top_tb/TOP/SYNC/soft_reset
add wave -noupdate -group REG /router_top_tb/TOP/REG/clock
add wave -noupdate -group REG /router_top_tb/TOP/REG/resetn
add wave -noupdate -group REG /router_top_tb/TOP/REG/pkt_valid
add wave -noupdate -group REG /router_top_tb/TOP/REG/fifo_full
add wave -noupdate -group REG /router_top_tb/TOP/REG/rst_int_reg
add wave -noupdate -group REG /router_top_tb/TOP/REG/detect_add
add wave -noupdate -group REG /router_top_tb/TOP/REG/ld_state
add wave -noupdate -group REG /router_top_tb/TOP/REG/laf_state
add wave -noupdate -group REG /router_top_tb/TOP/REG/full_state
add wave -noupdate -group REG /router_top_tb/TOP/REG/lfd_state
add wave -noupdate -group REG /router_top_tb/TOP/REG/data_in
add wave -noupdate -group REG /router_top_tb/TOP/REG/parity_done
add wave -noupdate -group REG /router_top_tb/TOP/REG/low_pkt_valid
add wave -noupdate -group REG /router_top_tb/TOP/REG/err
add wave -noupdate -group REG /router_top_tb/TOP/REG/dout
add wave -noupdate -group REG /router_top_tb/TOP/REG/data_in_header
add wave -noupdate -group REG /router_top_tb/TOP/REG/data_fifo_full
add wave -noupdate -group REG /router_top_tb/TOP/REG/parity_reg
add wave -noupdate -group REG /router_top_tb/TOP/REG/parity_packet
add wave -noupdate -group REG /router_top_tb/TOP/REG/next_parity
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/clock
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/resetn
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/write_enb
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/soft_reset
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/read_enb
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/lfd_state
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/data_in
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/empty
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/full
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/data_out
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/w_index
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/r_index
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/data_in_reg
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/data_out_reg
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/empty_reg
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/full_reg
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/counter
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/i
add wave -noupdate -group FIFO_0 /router_top_tb/TOP/FIFO_0/fifo_reg
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/clock
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/resetn
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/write_enb
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/soft_reset
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/read_enb
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/lfd_state
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/data_in
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/empty
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/full
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/data_out
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/w_index
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/r_index
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/data_in_reg
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/data_out_reg
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/empty_reg
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/full_reg
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/counter
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/i
add wave -noupdate -group FIFO_1 /router_top_tb/TOP/FIFO_1/fifo_reg
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/clock
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/resetn
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/write_enb
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/soft_reset
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/read_enb
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/lfd_state
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/data_in
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/empty
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/full
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/data_out
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/w_index
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/r_index
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/data_in_reg
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/data_out_reg
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/empty_reg
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/full_reg
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/counter
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/i
add wave -noupdate -group FIFO_2 /router_top_tb/TOP/FIFO_2/fifo_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {58 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 294
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
WaveRestoreZoom {0 ps} {418 ps}
