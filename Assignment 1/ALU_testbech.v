`timescale 1 ns/10 ps

module ALU_testbench;
   // signal declaration
   reg [2:0] testFxn;
   reg  [5:0] testA, testB;
   wire [5:0] final; // might be wire

   // instantiate the circuit under test
   ALU uut(.fxn(testFxn), .A(testA),.B(testB), .X(final));

   //  test vector generator
   initial
   begin
      // test vector 1
      testFxn=3'b000;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200;
      // test vector 2
      testFxn=3'b001;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200;
      // test vector 3
      testFxn=3'b010;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200;
      // test vector 4
      testFxn=3'b011;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200;
      // test vector 5
      testFxn=3'b100;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200;
      // test vector 6
      testFxn=3'b101;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200;
      // test vector 7
      testFxn=3'b110;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200;
      // test vector 8
      testFxn=3'b111;
      testA = 6'b000011;
      testB = 6'b001000;
      # 200; 
      // stop simulation
      $stop;
   end   
endmodule
