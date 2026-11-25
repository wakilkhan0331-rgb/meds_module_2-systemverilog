module decoder3to8_tb;
logic en;
logic [2:0] sel;
logic [7:0] y;
logic [7:0] expected;

decoder3to8 tb_3x8 (
    .en(en),
    .sel(sel),
    .y(y)
);

initial begin
    $display("en  |  Sel  |  Output  |  Status");
 en = 0;
for (int i=0;i<8;i++)begin
    sel=i;
    #1;
    expected = 8'b00000000 << i;
    if (y === expected)
    $display("%b  |  %b  |  %b  |  Pass",en,sel,y);
    else 
    $display("%b  |  %b  |  %b  |  Fail",en,sel,y);
end
en = 1;
for (int i = 0; i<8;i++)begin
    sel = i;
    #1;
    expected = 8'b00000001 << i;
    if (y === expected)
    $display("%b  |  %b  |  %b  |  Pass",en,sel,y);
    else
   $display("%b  |  %b  |  %b  |  Fail",en,sel,y);
end 
$finish;
end
endmodule