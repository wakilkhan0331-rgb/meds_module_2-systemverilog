module NOR_only_realization(
    input logic a,b,c,d,
    output logic f_nor
);
logic na,n1,n2,n3;
assign na = ~|{a,a};
assign n1 = ~|{b,c,d};
assign n2 = ~|{na,b,c};
assign n3 = ~|{na,d};
assign f_nor = ~|{n1,n2,n3};
endmodule
