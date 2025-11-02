module or_g (a,b,c);
input a,b;
output reg c;
always @(a or b) begin //behavioural modelling
    c= a|b;
end
/*
//dataflow modelling
assign c= a|b;

// gate level modelling
or(c,a,b);
*/
endmodule