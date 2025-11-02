`timescale 1ns/1ps
module and_tb;//1st-module declaration
  //2nd-Signal declaration
  reg a,b;
  wire c;
  //3rd-DUT instantiation
  and_g DUT(.a(a), .b(b), .c(c));
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
    
    $display(" | A = %b | B = %b | C = %b |",a,b,c);
    
end
initial begin
    $dumpfile ("dump.vcd");
    $dumpvars(0,and_tb);
end
endmodule
 