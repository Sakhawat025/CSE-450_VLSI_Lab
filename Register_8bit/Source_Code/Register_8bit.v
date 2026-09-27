module Register_8bit(
    input CLK,
    input RESET,
    input [7:0] D,
    output reg [7:0] Q
);

always @(posedge CLK)
begin

    if(RESET)
        Q <= 8'b00000000;

    else
        Q <= D;

end

endmodule