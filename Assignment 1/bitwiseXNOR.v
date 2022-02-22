`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Creater Name: Prachi Singhroha
// Create Date: 10/30/2021 03:19:42 PM
// Design Name: 
// Module Name: bitwiseXNOR
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


module bitwiseXNOR(
    input [5:0] a, b,
    output [5:0] bitC
    );
    assign bitC = ~(a ^ b);
    
endmodule
