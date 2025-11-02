`timescale 1ns/1ps
module xor_tb;//1st-module declaration
  //2nd-Signal declaration
  reg a,b;
  wire y;
  //3rd-DUT instantiation
  xor_g DUT(.a(a), .b(b), .y(y));
// 4th- initiazle testbench variable
initial begin
    a=0; b=0;
    #10
    a=0; b=1;
    #10
    a=1; b=0;
    #10
    a=1; b=1;
    #10 $finish;
end
//5th-always block
always @(a or b) begin
    #1;
    
    $display(" | A = %b | B = %b | Y = %b |",a,b,y);
    
end
initial begin
    $dumpfile ("xor_dump.vcd");
    $dumpvars(0,xor_tb);
end
endmodule
 