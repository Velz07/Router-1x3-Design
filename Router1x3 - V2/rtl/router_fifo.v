module router_fifo(clock,resetn,write_enb,soft_reset,read_enb,data_in,lfd_state,
		   empty,data_out,full);

input clock,resetn,write_enb,soft_reset,read_enb,lfd_state;
input [7:0]data_in;

output empty,full;


output [7:0]data_out;

reg [8:0]fifo_reg[0:15];

reg [4:0]w_index,r_index;

reg [8:0]data_in_reg;
reg [7:0]data_out_reg;
reg empty_reg,full_reg;
reg [5:0]counter;
integer i;

assign data_in_reg = {lfd_state,data_in};
assign data_out= (empty_reg!=1) ? data_out_reg[7:0] :8'bz;
assign empty=empty_reg;
assign full=full_reg;

//payload counter - header data
always @(posedge clock)
begin

	if(soft_reset==0)
		counter<=0;

	else if(read_enb==1  &&empty!=1 && counter==0 && fifo_reg[r_index][8]==1)
		begin
			data_out_reg<=fifo_reg[r_index][7:0];
			counter<=fifo_reg[r_index][7:2]+1;
			r_index <= r_index+1;			
		end
end

//read_write block
always @(posedge clock)
begin
	if(soft_reset==0)
		begin
			for(i=0;i<=15;i=i+1)
				fifo_reg[i]<=0;
			data_out_reg<=0;
			w_index<=0;
			r_index<=0;
		end

	else if( (write_enb==1||lfd_state==1) && full!=1)
		begin
		
	
			fifo_reg[w_index]<=data_in_reg;
			w_index <= w_index+1;	
		end

	else if(read_enb==1 && empty!=1 && counter>0)
		begin
		
			data_out_reg<=fifo_reg[r_index];
			r_index <= r_index +1;
			counter<=counter-1;
		
		end
	
end

//index logic
always @(*)
begin
	if(w_index==r_index)
		empty_reg<=1;
	else
	empty_reg=0;

	if(w_index[4]!=r_index[4] && w_index[3:0]==r_index[3:0])
		full_reg<=1;

	else
		full_reg<=0;
end

endmodule