module not_g(a,b);
input a;
output reg b;
always @(a) begin //behavioral modelling
    b=~a;
end
/*
//dataflow modelling
assign b = ~a;

//gatelevel modelling
not(b,a);
*/
    endmodule