module xor_g(a,b,y);
input a,b;
output reg y;
always @(a or b) begin
    y= (a ^ b);
end
/*
//dataflow modelling
assign y= (a ^ b);

//gatelevel
xor(y,a,b);
*/
endmodule