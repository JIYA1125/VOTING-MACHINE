`timescale 1ns / 1ps

module top(

    input clk,
    input reset,
    input vote_enable,
    input candidate1_btn,
    input candidate2_btn,
    input candidate3_btn,
    input candidate4_btn,
    input result_btn,
    output [3:0] led,

    output [6:0] seg,
    output dp,
    output [7:0] an
);

wire [7:0] vote1;
wire [7:0] vote2;
wire [7:0] vote3;
wire [7:0] vote4;

wire [3:0] winner_led;


evm U1(

    .clk(clk),
    .reset(reset),

    .vote_enable(vote_enable),

    .c1(candidate1_btn),
    .c2(candidate2_btn),
    .c3(candidate3_btn),
    .c4(candidate4_btn),

    .result_btn(result_btn),

    .vote1(vote1),
    .vote2(vote2),
    .vote3(vote3),
    .vote4(vote4),

    .winner_led(winner_led)

);

assign led = winner_led;

wire refresh_clk;

clock_divider U2(
    .clk(clk),
    .clk_out(refresh_clk)
);

display_mux U3(

    .clk(refresh_clk),

    .vote1(vote1),
    .vote2(vote2),
    .vote3(vote3),
    .vote4(vote4),

    .seg(seg),
    .an(an),
    .dp(dp)

);

endmodule
