`timescale 1ns/1ps
module or_tb;
reg a,b;
wire c;
or_g DUT (.a(a), .b(b), .c(c));
initial begin
    a=0; b=0; #10
    a=0; b=1; #10
    a=1; b=0; #10
    a=1; b=1; #10
    $finish;
end
always @(a or b) begin
    #1
    $display(" A = %b | B = %b | C = %b |");
end
initial begin
    $dumpfile ("dump.vcd");
    $dumpvars(0,or_tb);
end
endmodule