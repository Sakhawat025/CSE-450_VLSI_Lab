`timescale 1ns /1ps

module full_adder_tb;

	//inputs declared as registers
	reg A;
	reg B;
	reg Cin;
	
	//outputs declared as wires
	wire Sum;
	wire Cout;
	
	//instantiate the unit under test(uut)
	full_adder uut (
		.A(A),
		.B(B),
		.Cin(Cin),
		.Sum(sum),
		.Cout(Cout)
	);
	
	//stimulus block
	initial begin
		//initialize all inputs at time 0
		A=0; B=0; Cin=0;
		
		//apply all 8 input
		#10 A=0; B=0; Cin=1;
		#10 A=0; B=0; Cin=0;
		#10 A=0; B=1; Cin=1;
		#10 A=0; B=1; Cin=0;
		#10 A=1; B=0; Cin=1;
		#10 A=1; B=0; Cin=0;
		#10 A=1; B=1; Cin=1;
		
		//terminate the simulation
		#10 $finish;
	end
endmodule