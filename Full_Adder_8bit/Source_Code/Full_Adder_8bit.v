module Full_Adder_8bit(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Sum,
    output Cout
);

assign {Cout, Sum} = A + B + Cin;

endmodule