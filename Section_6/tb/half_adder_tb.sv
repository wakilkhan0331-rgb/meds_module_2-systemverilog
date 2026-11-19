
module half_adder_tb;

logic a, b;
logic sum, carry;
logic S, C;
half_adder_design dut1 (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);
half_adder_if dut2 (
    .a(a),
    .b(b),
    .S(S),
    .C(C)
);

initial begin

    $display("A | B | SUM | CARRY | S | C");
    $display("--------------------------------");

    for (int i = 0; i < 4; i++) begin

        {a,b} = i;
        #10;

        $display("%b | %b |  %b  |   %b   | %b | %b",
                  a,b,sum,carry,S,C);

        // Compare both designs
        if ((sum == S) && (carry == C))
            $display("PASS: Both designs match");
        else
            $display("FAIL: Outputs do not match");

    end

    $finish;

end

endmodule
