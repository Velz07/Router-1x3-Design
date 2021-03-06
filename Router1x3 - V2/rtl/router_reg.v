module router_reg(clock,resetn,pkt_valid,data_in,fifo_full,rst_int_reg,detect_add,ld_state,laf_state,full_state,lfd_state,
		  parity_done,low_pkt_valid,err,dout);

input clock,resetn,pkt_valid,fifo_full,rst_int_reg,detect_add,ld_state,laf_state,full_state,lfd_state;
input [7:0]data_in;	

output reg parity_done,low_pkt_valid,err;
output reg [7:0]dout;

/*
assign parity_done =( (ld_state==1 && fifo_full==0 && pkt_valid==0)||
		      (laf_state==1 && low_pkt_valid==1 && parity_done==0) )?1:0;
*/

//parity done
always @(posedge clock)
begin
	if( resetn==0 || (detect_add==1))
		parity_done=0;		
	else if(( (ld_state==1 && fifo_full==0 && pkt_valid==0)||
		      (laf_state==1 && low_pkt_valid==1 && parity_done==0) ))
		parity_done=1;
end

//assign low_pkt_valid = (rst_int_reg==1)?0:((ld_state==1 && pkt_valid==0)?1:0)
//low_pkt_valid
//assign low_pkt_valid = (ld_state==1 && pkt_valid==0)?1:0;
always @(posedge clock)
begin
	if( resetn==0 || (rst_int_reg==1))
		low_pkt_valid=0;
	else if((ld_state==1 && pkt_valid==0))
		low_pkt_valid=1;

end

reg [7:0]data_in_header;
reg [7:0]data_fifo_full;
reg [7:0]parity_reg;
reg [7:0]parity_packet;
reg [7:0]next_parity;


assign dout = (lfd_state==1) ? data_in_header:8'bz;
assign dout = ((ld_state==1)&& !fifo_full)? data_in:8'bz;
assign dout = (laf_state==1) ? data_fifo_full:8'bz; 




//parity comparison
always @(posedge clock)
begin
if(resetn==0)
	err=0;
	
else if(low_pkt_valid==1)
	if(parity_packet != parity_reg)
		err=1;
	else
		err=0;

end

//header & fifo full byte
always @(posedge clock)
begin	
	if(resetn==0)
	begin
		{dout,err,parity_done,low_pkt_valid}=0;
		parity_reg <= 0;

	end

	else if(detect_add==1 && pkt_valid==1)
		data_in_header <= data_in;

	else if((ld_state==1) && fifo_full)
		data_fifo_full <= data_in;

end



//internal parity 


//internal parity calculation
always @(posedge clock)
begin
if(lfd_state==1)
	parity_reg = parity_reg ^ data_in_header;

else if(ld_state==1 && low_pkt_valid!=1)
	parity_reg = parity_reg ^ data_in;

else if(laf_state==1)
	parity_reg = parity_reg ^ data_fifo_full;
end

//packet parity
always @(posedge clock)
	if(low_pkt_valid==1)
		parity_packet <= data_in;
endmodule



