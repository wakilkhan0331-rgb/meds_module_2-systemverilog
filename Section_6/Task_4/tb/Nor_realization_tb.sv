module NOR_realization_tb;
logic a,b,c,d;
logic f,f_nor;

Nor_relization nor_direct(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .f(f)
);

NOR_only_realization nor_only (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .f_nor(f_nor)
       
    );
initial begin

$display("A | B | C | D | f | f_nor");
for (int i= 0;i<16;i++) 
begin
 {a,b,c,d}=i;
 #1;
 $display("%b | %b | %b | %b | %b | %b",a,b,c,d,f,f_nor);
   if (f===f_nor) 
    $display("[Pass] output match");
    else 
    $display("[Fail] output not match");
end
 $finish;
end
endmodule
