`timescale 1ns / 1ps

module clock_divider(

    input clk,
    output reg clk_out = 0

);

reg [15:0] count = 0;

always @(posedge clk)
begin

    count <= count + 1;

    if(count == 16'd50000)
    begin
        clk_out <= ~clk_out;
        count <= 0;
    end

end

endmodule
