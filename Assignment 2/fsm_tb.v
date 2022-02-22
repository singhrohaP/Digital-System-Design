`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Prachi Singhroha 
// Module Name: fsm_tb
//////////////////////////////////////////////////////////////////////////////////

module fsm_tb(
    );
    localparam T=20; //clock period
    reg clk, reset;
    reg p;
    wire y;
    
    fsm f(.clk(clk), .rst(reset), .p(p), .y(y));
    
    always
    begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    // reset signal wich is initially high
    initial
    begin
        reset = 1'b1;
        p = 1'b1;
        repeat (2) @ (posedge clk);
        reset<=0;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 0;
        @(posedge clk) p <= 0;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 1;
        @(posedge clk) p <= 1;

    repeat (3) @(posedge clk);
    $finish;
    end


    
endmodule
