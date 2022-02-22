//////////////////////////////////////////////////////////////////////////////////
// Creator Name: Prachi Singhroha 
// Module Name: top
//////////////////////////////////////////////////////////////////////////////////

//this file right now can be used to Run Simulation 
//to run it on the board follow the instructions in the report and comments given in the code

module top(
 input wire clock, reset1,
 //output wire LD0, //uncomment it to run on the board
 
 //comment the following 3 lines to run it on the board
 output wire total,     //counter
 output wire max_tick,  
 output wire [3:0] q,q1,q2,q3,
 
 output wire [19:0] out, //output of LFSR
 output wire [3:0] an,// an is each of the 4leds
 output wire [7:0] sseg// 7 segemts plus the decimal poin5
    );
    
    // remove comment from next 4 lines to run on the board
//   wire LD0;
//   wire total;
//   wire max_tick;
//   wire [3:0] q,q1,q2,q3;
   
   // comment the following line to run on the board
   wire LD0 = clock;
   
   // remove the following comment to run on the board
   // clock clk (.clk(clock), .clkscale(5000), .clk_out(LD0)); //CHANGING THE RATE OF THE CLOCK
    
    
    //COMPUTING THE LFSR
    lfsr_20bit lfsr ( .clk(LD0),.rst_n(reset1), .Q_out(out), .max_tick(max_tick)); 
    
    fsm fsm1(.clk(LD0), .p(out[19]), .out(total), .rst(reset1));
    
    //count will output the correct number and send it to display
    count count1(.clk(LD0), .reset(reset1), .count(total), .q(q), .q1(q1), .q2(q2), .q3(q3), .reset2(max_tick));
   
    // will display number on 7 seg dsiplay.
    disp_hex_mux display(.clk(clock), .reset(1'b0),  .hex0(q),  .hex1(q1), .hex2(q2), .hex3(q3), .dp_in(4'b1111), .an(an), .sseg(sseg));
    
endmodule
