module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

    // Synthesizes to the exact same logic but is highly readable
    assign Sum = A ^ B ^ Cin;
	 assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule
