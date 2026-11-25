
module decoder2to4_tb;
logic en;
logic [1:0] sel;
logic [3:0] y;
logic [3:0] expected;

decoder2to4 decoder2X4 (
    .en(en),
    .sel(sel),
    .y(y)
);

initial begin

    $display("EN | SEL | Y"); 
    en = 0;

    for (int i = 0; i < 4; i++) begin
        sel = i;
        #1;
         expected = 4'b0000;
         if (y === expected)
            $display("%b  | %b  | %b [PASS]", en, sel, y);
        else
            $display("%b  | %b  | %b [FAIL]", en, sel, y);
    end
    en = 1;
    for (int i = 0; i < 4; i++) begin
        sel = i;
        #1;
        expected = 4'b0001 << i;

        if (y === expected)
            $display("%b  | %b  | %b [PASS]", en, sel, y);
        else
            $display("%b  | %b  | %b [FAIL]", en, sel, y);
    end

    $finish;

end

endmodule

