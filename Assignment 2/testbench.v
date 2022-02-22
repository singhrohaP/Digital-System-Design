`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Prachi Singhroha 
// Module Name: testbench
//////////////////////////////////////////////////////////////////////////////////

module testbench(

    );
    localparam T=20;
    reg clk,	rst_n;
    wire [19:0]	Q_out;
    wire max_tick;
    
    lfsr_20bit l (.clk(clk),.rst_n(rst_n), .Q_out(Q_out), .max_tick(max_tick));
    
    always
    begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    initial
    begin
        rst_n = 1'b1;
        #10 rst_n = 1'b0;
        
    end
       
endmodule
