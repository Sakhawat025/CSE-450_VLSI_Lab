`timescale 1ns / 1ps

module Register_8bit_tb;

reg CLK;
reg RESET;
reg [7:0] D;

wire [7:0] Q;


Register_8bit DUT(
    .CLK(CLK),
    .RESET(RESET),
    .D(D),
    .Q(Q)
);


// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end


// Test cases
initial begin

    // Reset test
    RESET = 1;
    D = 8'b00000000;
    #20;


    // Store first data
    RESET = 0;
    D = 8'b10101010;
    #20;


    // Store second data
    D = 8'b11110000;
    #20;


    // Store third data
    D = 8'b01010101;
    #20;


    // Reset again
    RESET = 1;
    D = 8'b11111111;
    #20;


    $stop;

end


endmodule