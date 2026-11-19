
module full_adder_structural (
    input logic a, b, cin,
    output logic sum, cout
);
logic s1, c1, c2;
half_adder_design HA1 (
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);

half_adder_design HA2 (
    .a(s1),
    .b(cin),
    .sum(sum),
    .carry(c2)
);
assign cout = c1 | c2;

endmodule

