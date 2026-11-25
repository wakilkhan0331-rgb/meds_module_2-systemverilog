module decoder3to8(
    input logic en,
    input logic [2:0] sel,
    output logic [7:0] y
);
logic en1,en2;
logic [3:0] y_lower,y_upper;
assign en1 = en & ~sel[2];
assign en2 = en & sel[2];
decoder2to4 D1 (
    .en(en1),
    .sel(sel[1:0]),
    .y(y_lower)
);
 
decoder2to4 D2 (
    .en(en2),
    .sel(sel[1:0]),
    .y(y_upper)
);

assign y = {y_upper,y_lower};
endmodule
