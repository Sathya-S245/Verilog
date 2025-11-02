module and_g(a,b,c);
input a,b;
output reg c;
always @( a or b)
c = a & b;
endmodule