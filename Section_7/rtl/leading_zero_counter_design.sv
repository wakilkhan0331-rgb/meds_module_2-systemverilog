module leading_zero_counter_design(
    input logic [31:0] data,
    output logic [5:0] count
);
integer i;
always_comb begin
count = 0;
for ( i =31; i>=0;i = i-1)begin
    if(data[i] == 1'b0 && count == (31 - i))
    count = count + 1;
end
end
endmodule
