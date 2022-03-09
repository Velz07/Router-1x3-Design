module router_fsm(clock,resetn,pkt_valid,parity_done,data_in,soft_reset_0,soft_reset_1,soft_reset_2,fifo_full,
		  low_pkt_valid,fifo_empty_0,fifo_empty_1,fifo_empty_2,
		//output
		  busy,detect_add,ld_state,laf_state,full_state,write_enb_reg,rst_int_reg,lfd_state);

input clock,resetn,pkt_valid,parity_done,soft_reset_0,soft_reset_1,soft_reset_2,fifo_full,
		  low_pkt_valid,fifo_empty_0,fifo_empty_1,fifo_empty_2;
input [1:0]data_in;

output busy,detect_add,ld_state,laf_state,full_state,write_enb_reg,rst_int_reg,lfd_state;

reg [2:0]pstate,next_state;

parameter 
DECODE_ADDRESS=3'b000,
LOAD_FIRST_DATA=3'b001,
LOAD_DATA=3'b010,
LOAD_PARITY=3'b011,
CHECK_PARITY_ERROR=3'b100,
FIFO_FULL_STATE=3'b101,
LOAD_AFTER_FULL=3'b110,
WAIT_TILL_EMPTY=3'b111;
//outputs

assign detect_add =(pstate == DECODE_ADDRESS)? 1:0;
assign lfd_state = (pstate == LOAD_FIRST_DATA)? 1:0;
assign ld_state = (pstate == LOAD_DATA)||(pstate == LOAD_PARITY)? 1:0;
assign laf_state = (pstate == LOAD_AFTER_FULL)? 1:0;
assign full_state = (pstate == FIFO_FULL_STATE)? 1:0;
assign rst_int_reg = (pstate == CHECK_PARITY_ERROR)? 1:0;

assign busy = ( (pstate == LOAD_FIRST_DATA)||(pstate == LOAD_PARITY)||(pstate == FIFO_FULL_STATE)||(pstate == LOAD_AFTER_FULL)||
                (pstate == WAIT_TILL_EMPTY)||(pstate == CHECK_PARITY_ERROR) )?1:0;

//assign busy = (pstate == LOAD_DATA)? 0:1;

assign write_enb_reg = ( (pstate == LOAD_DATA && pkt_valid==1)||(pstate == LOAD_PARITY)||
			 (pstate == LOAD_AFTER_FULL)||(pstate == WAIT_TILL_EMPTY) )? 1:0;


//seq logic
always @(posedge clock)
if(resetn==0)
	pstate<=DECODE_ADDRESS;
else
	pstate<=next_state;

//next_state_logic
always @(*)
begin
	case(pstate)
	
	DECODE_ADDRESS:	begin
				if( (pkt_valid && data_in==0 && fifo_empty_0 )|| 
				    (pkt_valid && data_in==1 && fifo_empty_1 )||
				    (pkt_valid && data_in==2 && fifo_empty_2 ) )
					next_state = LOAD_FIRST_DATA;

				else if( (pkt_valid && data_in==0 && !fifo_empty_0)||
					 (pkt_valid && data_in==1 && !fifo_empty_1)||
	      		                 (pkt_valid && data_in==2 && !fifo_empty_2) )

					next_state = WAIT_TILL_EMPTY;	
			
				else
					next_state = DECODE_ADDRESS;
			end
			

	LOAD_FIRST_DATA:  
				next_state = LOAD_DATA;

	LOAD_DATA:	begin
				if( !fifo_full && !pkt_valid )
					next_state = LOAD_PARITY;

				else if(fifo_full)
					
					next_state = FIFO_FULL_STATE;
				else
					next_state = LOAD_DATA;		
			end

	LOAD_PARITY:	next_state = CHECK_PARITY_ERROR;	


	CHECK_PARITY_ERROR: 	if(!fifo_full)
					next_state = DECODE_ADDRESS;
				else
					next_state = FIFO_FULL_STATE;

	
	FIFO_FULL_STATE:	begin
				if( fifo_full)					
					next_state = FIFO_FULL_STATE;
				else
					next_state = LOAD_AFTER_FULL;
				end

	LOAD_AFTER_FULL:	begin
				if(!parity_done && !low_pkt_valid)					
					next_state = LOAD_DATA;

				else if(!parity_done && low_pkt_valid)
					next_state = LOAD_PARITY;

				else if(parity_done)
					next_state = DECODE_ADDRESS;

				end

	WAIT_TILL_EMPTY: 	begin
					if( (fifo_empty_0 && data_in==0)||
					    (fifo_empty_1 && data_in==1)||
					    (fifo_empty_2 && data_in==2) )
						
						next_state = LOAD_FIRST_DATA;
			
					else
						next_state = WAIT_TILL_EMPTY;
				 end
	

	default: next_state  = DECODE_ADDRESS;

	endcase

end

endmodule
