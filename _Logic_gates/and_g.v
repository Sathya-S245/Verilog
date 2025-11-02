module and_g(a,b,c);
input a,b;
output  c;
assign c = a & b;// dataflow modelling
/*
// behavioral modelling
always@(a or b )
begin
c=a &b;
end

//gatelevel modelling
and(c,a,b);
*/

endmodule