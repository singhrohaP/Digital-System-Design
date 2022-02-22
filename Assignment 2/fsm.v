`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Prachi Singhroha 
// Module Name: fsm
//////////////////////////////////////////////////////////////////////////////////

module	fsm	(input	clk, rst,  p,	
output reg out);
parameter	w=4'b0000, a=4'b0001,
            b=4'b0010, c=4'b0011,
            d=4'b0100, e=4'b0101,
            f=4'b0110, g=4'b0111,
            h=4'b1000, i=4'b1001,
            j=4'b1010, k=4'b1011;	
reg	[0:3]	nst,	st;	
always	@	(posedge	clk)	
begin
    if	(rst)	st	<= w;
    else	st	<= nst;
end
always	@ *
begin
    nst	=	st;
   	out	=	1'b0;
	case(st)
	w: if(p)   nst = a;
	   else    nst = w;
	a: if(p)   nst = a;
	   else    nst = b;
	b: if(p)   nst = a;	
	   else    nst = c;
	c: if(p)   nst = d;	
	   else    nst = w;
	d: if(p)   nst = e;	
	   else    nst = b;
	e: if(p)   nst = f;	
	   else    nst = b;
	f: if(p)   nst = g;	
	   else    nst = b;
	g: if(p)   nst = h;	
	   else    nst = b;
	h: if(p)   nst = i;	
	   else    nst = b;
	i: if(p)   nst = j;	
	   else    nst = b;
	j: if(p)   nst = k;	
	   else    nst = b;
    k: begin	
            out	= 1'b1;
            if(p)   nst = a;
            else    nst = b;
	end
	default:	nst	=	w;
	endcase
  end
endmodule
