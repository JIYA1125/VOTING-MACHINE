`timescale 1ns / 1ps

module display_mux(
 input clk,

    input [7:0] vote1,
    input [7:0] vote2,
    input [7:0] vote3,
    input [7:0] vote4,

    output [6:0] seg,
    output reg [7:0] an,
    output dp

);

reg [2:0] digit_sel = 0;
reg [3:0] digit;

assign dp = 1'b1;

wire [6:0] seg_wire;

seven_segment U0(
    .digit(digit),
    .seg(seg_wire)
);

assign seg = seg_wire;

always @(posedge clk)
begin
    digit_sel <= digit_sel + 1;
end

always @(*)
begin

case(digit_sel)

3'd0:
begin
    an = 8'b11111110;
    digit = vote1 % 10;
end

3'd1:
begin
    an = 8'b11111101;
    digit = vote1 / 10;
end

3'd2:
begin
    an = 8'b11111011;
    digit = vote2 % 10;
end

3'd3:
begin
    an = 8'b11110111;
    digit = vote2 / 10;
end

3'd4:
begin
    an = 8'b11101111;
    digit = vote3 % 10;
end

3'd5:
begin
    an = 8'b11011111;
    digit = vote3 / 10;
end

3'd6:
begin
    an = 8'b10111111;
    digit = vote4 % 10;
end

default:
begin
    an = 8'b01111111;
    digit = vote4 / 10;
end

endcase

end

endmodule
