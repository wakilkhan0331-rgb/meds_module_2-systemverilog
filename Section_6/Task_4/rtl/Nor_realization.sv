module Nor_relization(
    input logic a,b,c,d,
    output logic f
);
assign f = (b|c|d)&(~a|b|c)&(~a|d);
endmodule


