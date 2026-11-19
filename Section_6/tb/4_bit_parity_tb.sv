module parity_generator_tb;
logic [3:0] data;
logic parity;
logic expected;

parity_generator parity_tb(
    .data(data),
    .parity(parity)
);

initial begin
    $display("Data | Number of 1's| Expected | Actual");
    for (int i = 0; i < 16; i++) begin
        data = i;
        #1;
        expected = $countones(data) % 2;
        $display("%b |%d   |     %b    |    %b",data,$countones(data),expected,parity);
        if (parity === expected)
        $display("[Pass]");
        else
        $display("Fail");
        end
        $finish;
end
endmodule
