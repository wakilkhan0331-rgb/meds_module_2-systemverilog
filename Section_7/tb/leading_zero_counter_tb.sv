module leading_zero_counter_tb;
logic [31:0] data;
logic [5:0] count;

leading_zero_counter_design counter (
    .data(data),
    .count(count)
);
initial begin 
    $display("Input | t | t | Count");
    data = 32'h80000000;
    #10;
    $display("%h | t%0d",data,count);
    data = 32'h00000001;
    #10;
    $display("%h | t%0d",data,count);
    data = 32'h00008000;
    #10;
    $display("%h | t%0d",data,count);
    data = 32'h00000000;
    #10;
    $display("%h | t%0d",data,count);
    $finish;
end
endmodule
