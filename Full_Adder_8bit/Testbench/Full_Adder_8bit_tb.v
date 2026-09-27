`timescale 1ns / 1ps

module Full_Adder_8bit_tb;


// Inputs
reg [7:0] A;
reg [7:0] B;
reg Cin;


// Outputs
wire [7:0] Sum;
wire Cout;


// Unit Under Test
Full_Adder_8bit DUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);


// Test procedure
initial begin


// Test 1: 00 + 00 = 00, Cout=0
A = 8'h00;
B = 8'h00;
Cin = 1'b0;
#20;

if (Sum == 8'h00 && Cout == 1'b0)
    $display("PASS: 00 + 00");
else
    $display("FAIL: 00 + 00");


// Test 2: FF + 01 = 00, Cout=1
A = 8'hFF;
B = 8'h01;
Cin = 1'b0;
#20;

if (Sum == 8'h00 && Cout == 1'b1)
    $display("PASS: FF + 01");
else
    $display("FAIL: FF + 01");


// Test 3: 0F + 01 = 10, Cout=0
A = 8'h0F;
B = 8'h01;
Cin = 1'b0;
#20;

if (Sum == 8'h10 && Cout == 1'b0)
    $display("PASS: 0F + 01");
else
    $display("FAIL: 0F + 01");


// Test 4: 55 + AA = FF, Cout=0
A = 8'h55;
B = 8'hAA;
Cin = 1'b0;
#20;

if (Sum == 8'hFF && Cout == 1'b0)
    $display("PASS: 55 + AA");
else
    $display("FAIL: 55 + AA");


// Test 5: 9D + 64 = 01, Cout=1
A = 8'h9D;
B = 8'h64;
Cin = 1'b0;
#20;

if (Sum == 8'h01 && Cout == 1'b1)
    $display("PASS: 9D + 64");
else
    $display("FAIL: 9D + 64");


// Test 6: 10 + 20 + Cin = 31
A = 8'h10;
B = 8'h20;
Cin = 1'b1;
#20;

if (Sum == 8'h31 && Cout == 1'b0)
    $display("PASS: 10 + 20 + Cin");
else
    $display("FAIL: 10 + 20 + Cin");


$display("Full Adder 8-bit Simulation Completed");

$stop;

end


endmodule