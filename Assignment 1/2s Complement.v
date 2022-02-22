`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2021 02:38:00 PM
// Design Name: 
// Module Name: 2sComplement
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


module TwosComplement(
        input wire [5:0] A,
        output wire [5:0] compA

    );
    //wire [5:0] n = 6'b000001;

    assign compA = ~A+1'b1;
    
endmodule
