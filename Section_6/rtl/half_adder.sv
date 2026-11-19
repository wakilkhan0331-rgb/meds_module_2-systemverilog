module half_adder_design (
    input logic a,b,
    output logic sum,carry
);
assign sum = a ^ b;
assign carry= a & b;
endmodule

module half_adder_if(
    input logic a,b,
    output logic S,C
);
always_comb 
begin
    if (a==0 && b==0)begin
        S=0;
        C=0;
    end
        else if (a==0 && b==1)begin
           S=1;
           C=0; 
        end
        else if (a==1 && b==0)begin
            S=1;
            C=0;
        end
        else begin
            S=0;
            C=1;
        end
    
end 
endmodule