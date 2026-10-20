  
// ===== testbench.sv ===== 
module tb; 
    logic a, b, y; 
  
    and_gate dut (.a(a), .b(b), .y(y)); 
     initial begin 
        // This is a must to include to open the waveform 
        $dumpfile("dump.vcd"); 
        $dumpvars(0, tb); 
  
        a = 0; b = 0; #10; 
        $display("a=%0b b=%0b y=%0b", a, b, y); 
        a = 1; b = 0; #10; 
        $display("a=%0b b=%0b y=%0b", a, b, y); 
        a = 1; b = 1; #10; 
        $display("a=%0b b=%0b y=%0b", a, b, y); 
  
        $finish; 
    end 
endmodule
