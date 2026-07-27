`timescale 1ns / 1ps

module edge_detector(
    input clk,
    input signal_in,
    output pulse
);

reg signal_d;

always @(posedge clk)
begin
    signal_d <= signal_in;
end

assign pulse = signal_in & ~signal_d;

endmodule
