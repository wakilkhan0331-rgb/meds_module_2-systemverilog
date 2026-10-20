module xor_design_tb2;
    logic [1:0] ab;
    logic a,b,y;
    xor_design dut ( .a(a),.b(b),.y(y));
    task automatic check( input logic actual,expected,string name);
        if (actual !== expected)
         $display( "[Fail] %s: expected =%0b actual =%0b",name,expected,actual );
         else
          $display( "[PASS] %s Value =%0b",name,actual);
          
    endtask
    initial begin
        for (ab = 2'b00;ab <= 2'b11;ab = ab + 1) begin
            {a,b}= ab;
            #1
            check(y,expected_fn(a,b),$sformatf("ab=%0b",ab));
        end
        $finish;
    end 
    function automatic logic expected_fn(input logic a,b); 
    return ( a ^ b);
    endfunction 
endmodule