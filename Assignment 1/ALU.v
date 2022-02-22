`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2021 03:12:28 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input [5:0] A, B, 
    input [2:0] fxn,
    output reg [5:0] X

    );
    wire [5:0] x1, x2, x4, x5, x6;
    wire x3;
    wire c, d;
    
    TwosComplement compA (.A(A[5:0]), .compA(x1));
    TwosComplement compB (.A(B[5:0]), .compA(x2));
    greater_than8 lessA (.a(A), .b(B), .o(x3));
    bitwiseXNOR bit (.a(A), .b(B), .bitC(x4));
    six_bit_ripple_adder adder(.a(A), .b(B), .sel(1'b0), .sum(x5), .overflow(c), .c_out(d));
    six_bit_ripple_adder sub(.a(A), .b(B), .sel(1'b1), .sum(x6), .overflow(c), .c_out(d));
    
    always @ (*)
    begin
    X=6'b000000;
        case(fxn)
            3'b000: X = A;
            3'b001: X = B;
            3'b010: X = x1;
            3'b011: X = x2;
            3'b100: X[0] = x3;
            3'b101: X = x4;
            3'b110: X = x5;
            3'b111: X = x6;
        endcase
    end
    
endmodule
