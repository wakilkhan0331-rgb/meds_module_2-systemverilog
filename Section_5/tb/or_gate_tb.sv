module or_gate_tb;
    logic a,b,y;
    or_gate dut ( .a(a), .b(b), .y(y));
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, or_gate_tb);
        a=0; b=0; #10;
        $display("a=%0b b=%0b y=%0b", a, b, y);
        a=1; b=0; #10;
        $display("a=%0b b=%0b y=%0b", a, b, y);
        a=1; b=1; #10;
        $display("a=%0b b=%0b y=%0b", a, b, y);
        $finish;
    end
endmodule