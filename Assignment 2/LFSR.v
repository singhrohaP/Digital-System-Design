`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Prachi Singhroha 
// Module Name: lfsr_20bit
//////////////////////////////////////////////////////////////////////////////////

module	lfsr_20bit
    #(parameter	seed	=	20'b10011001101000100000)
    (	input	clk,rst_n,
        output	[19:0]	Q_out,
        output reg max_tick);
        reg [19:0]	Q_state;
        wire	[19:0]	Q_ns;
        wire Q_fb;
        
        always	@	(posedge	clk)	
        begin
        if	(rst_n)
            Q_state	<=	seed;
        else
            Q_state	<=	Q_ns;
		end
		//next	state	logic
		assign	Q_fb	=	Q_state[19]	~^	Q_state[16];
		assign	Q_ns	=	{Q_state[18:0],Q_fb};
				//output	logic
		assign	Q_out	=	Q_state;
		
		always @ (posedge clk)
		begin
		if (Q_out == seed)
		      max_tick = 1'b1;
		else
		      max_tick = 1'b0;
		end
endmodule
