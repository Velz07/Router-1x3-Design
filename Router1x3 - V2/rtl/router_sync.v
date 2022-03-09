module router_sync(clock,resetn,detect_add,data_in,write_enb_reg,read_enb_0,read_enb_1,read_enb_2,empty_0,empty_1,empty_2,full_0,full_1,full_2,
		   soft_reset_0,soft_reset_1,soft_reset_2,write_enb,fifo_full,vld_out_0,vld_out_1,vld_out_2);

input clock,resetn,detect_add,read_enb_0,read_enb_1,read_enb_2,empty_0,empty_1,empty_2,full_0,full_1,full_2;
input [1:0]data_in;
input write_enb_reg;

output soft_reset_0,soft_reset_1,soft_reset_2,fifo_full,vld_out_0,vld_out_1,vld_out_2;
output [2:0]write_enb;

reg [1:0]data_in_reg;

reg [2:0]write_enb_value;
assign write_enb=write_enb_value;

reg [4:0]counter0,counter1,counter2;

assign vld_out_0 = ~empty_0;
assign vld_out_1 = ~empty_1;
assign vld_out_2 = ~empty_2;


reg fifo_full_reg;
assign fifo_full=fifo_full_reg;

reg [2:0]soft_reset;
assign soft_reset_0=soft_reset[0];
assign soft_reset_1=soft_reset[1];
assign soft_reset_2=soft_reset[2];


always @(posedge clock)
	if(resetn==0)
	begin
		data_in_reg<=0;
		soft_reset <=3'b000;
	end

	else if(resetn==1)
	begin
	soft_reset <=3'b111;
		if(detect_add==1)
			data_in_reg<=data_in;
		
	end

always @(*)
	if(resetn==0)
		fifo_full_reg<=0;
	else
	case(data_in_reg)
	
	2'b00 : fifo_full_reg = full_0;
	2'b01 : fifo_full_reg = full_1;
	2'b10 : fifo_full_reg = full_1;
	
	default: fifo_full_reg = 0;
	
	endcase

always @(*)
	if(resetn==0)
		 write_enb_value = 3'b000;

	else if(write_enb_reg==1)
		case(data_in_reg)
		
		2'b00 : write_enb_value = 3'b001;
		2'b01 : write_enb_value = 3'b010;
		2'b10 : write_enb_value = 3'b100;

		default : write_enb_value = 3'b000;
		endcase

	else
		write_enb_value = 3'b000;
		
	
	


always @(posedge clock)
begin

	if(vld_out_0==1 && read_enb_0==0 && counter0<30)
		counter0=counter0+1;
	else
		counter0=0;

	if(vld_out_1==1 && read_enb_1==0 && counter1<30)
		counter1=counter1+1;
	else
		counter1=0;

	if(vld_out_2==1 && read_enb_2==0 && counter2<30)
		counter2=counter2+1;
	else
		counter2=0;

end
	
always @(posedge clock)
begin
	if(counter0>=30)
		soft_reset[0]=0;
	else
		soft_reset[0]=1;

	if(counter1>=30)
		soft_reset[1]=0;
	else
		soft_reset[1]=1;


	if(counter2>=30)
		soft_reset[2]=0;
	else
		soft_reset[2]=1;

end



	
endmodule
	
		

