module full_adder_tb;

logic a,b,cin;
logic sum,cout;

full_adder_structural full_adder (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    $display("A | B | Cin | Sum | Cout");

    for (int i=0; i<8; i++) begin
        {a,b,cin} = i;
        #10;
        $display("%b | %b |  %b  |  %b  |  %b",
                  a,b,cin,sum,cout);
    end

    $finish;

end

endmodule
