module router_top(clock,resetn,pkt_valid,read_enb_0,read_enb_1,read_enb_2,data_in,
		  busy,vld_out_0,vld_out_1,vld_out_2,
		  dout_out_0,dout_out_1,dout_out_2);

input clock,resetn,pkt_valid,read_enb_0,read_enb_1,read_enb_2;
input [7:0]data_in;

output busy,vld_out_0,vld_out_1,vld_out_2;
output [7:0]dout_out_0,dout_out_1,dout_out_2;

wire w_empty_0,w_empty_1,w_empty_2,w_full_0,w_full_1,w_full_2,w_detect_add,w_ld_state,w_full_state,w_rst_int_reg,w_lfd_state,
     w_soft_reset_0,w_soft_reset_1,w_soft_reset_2,w_fifo_full,w_parity_done,w_low_pkt_valid,w_write_enb_reg;

wire [2:0]w_write_enb;

wire [7:0]w_dout;


router_fsm FSM (.clock(clock),.resetn(resetn),.pkt_valid(pkt_valid),.data_in(data_in[1:0]),.parity_done(w_parity_done),.soft_reset_0(w_soft_reset_0),.soft_reset_1(w_soft_reset_1),
		.soft_reset_2(w_soft_reset_2),.fifo_full(w_fifo_full),
		  .low_pkt_valid(w_low_pkt_valid),.fifo_empty_0(w_empty_0),.fifo_empty_1(w_empty_1),.fifo_empty_2(w_empty_2),
		//output
		  .busy(busy),.detect_add(w_detect_add),.ld_state(w_ld_state),.laf_state(w_laf_state),.full_state(w_full_state),.write_enb_reg(w_write_enb_reg),
		   .rst_int_reg(w_rst_int_reg),.lfd_state(w_lfd_state) );

router_sync SYNC (.clock(clock),.resetn(resetn),.detect_add(w_detect_add),.data_in(data_in[1:0]),.write_enb_reg(w_write_enb_reg),.read_enb_0(read_enb_0),.read_enb_1(read_enb_1),
		.read_enb_2(read_enb_2),.empty_0(w_empty_0),.empty_1(w_empty_1),.empty_2(w_empty_2),.full_0(w_full_0),.full_1(w_full_1),.full_2(w_full_2),
		   .soft_reset_0(w_soft_reset_0),.soft_reset_1(w_soft_reset_1),.soft_reset_2(w_soft_reset_2),.write_enb(w_write_enb),
		    .fifo_full(w_fifo_full),.vld_out_0(vld_out_0),.vld_out_1(vld_out_1),.vld_out_2(vld_out_2));

router_reg REG (.clock(clock),.resetn(resetn),.pkt_valid(pkt_valid),.data_in(data_in),.fifo_full(w_fifo_full),.rst_int_reg(w_rst_int_reg),.detect_add(w_detect_add),
		.ld_state(w_ld_state),.laf_state(w_laf_state),.full_state(w_full_state),.lfd_state(w_lfd_state),
		  .parity_done(w_parity_done),.low_pkt_valid(w_low_pkt_valid),.err(err),.dout(w_dout));


router_fifo FIFO_0 (.clock(clock),.resetn(resetn),.write_enb(w_write_enb[0]),.soft_reset(w_soft_reset_0),.read_enb(read_enb_0),.data_in(w_dout),
		    .lfd_state(w_lfd_state),.empty(w_empty_0),.data_out(dout_out_0),.full(w_full_0));



router_fifo FIFO_1 (.clock(clock),.resetn(resetn),.write_enb(w_write_enb[1]),.soft_reset(w_soft_reset_1),.read_enb(w_read_enb_1),.data_in(w_dout),
		    .lfd_state(w_lfd_state),.empty(w_empty_1),.data_out(dout_out_1),.full(w_full_1));


router_fifo FIFO_2 (.clock(clock),.resetn(resetn),.write_enb(w_write_enb[2]),.soft_reset(w_soft_reset_2),.read_enb(w_read_enb_2),.data_in(w_dout),
		    .lfd_state(w_lfd_state),.empty(w_empty_2),.data_out(dout_out_2),.full(w_full_2));

endmodule