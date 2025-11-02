`timescale 1ns/1ps
module not_tb;
reg a;
wire b;
not_g DUT (.a(a), .b(b));
initial begin
    a=0;#10
    a=1;#10
  
    $finish;
end
always @(a) begin
   #1
    $display("A = %b | B = %b |",a,b);
end
initial begin
    $dumpfile("not_dump.vcd");
    $dumpvars(0,not_tb);
end
endmodule