//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Prachi Singhroha 
// Module Name: tb
//////////////////////////////////////////////////////////////////////////////////

//disable this file to run on the board

module tb();
	localparam T=10; // clock period
	reg clk;
	reg reset;
	wire[19:0] d;
    wire tick;
    wire count;
	wire [3:0] d3, d2, d1, d0;
	
   top uut (.clock(clk),.reset1(reset),.out(d),.q3(d3),.q2(d2),.q1(d1),.q(d0),.total(count),.max_tick(tick));
	
	initial 
		begin
	       clk	=	1'b1;
	       forever	#5	clk	=	!clk;
		end
	initial 
		begin
		  reset=1'b1;
		  #T;
		  reset=1'b0;
	end
		
endmodule
