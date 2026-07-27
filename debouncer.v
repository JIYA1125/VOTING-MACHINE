`timescale 1ns / 1ps

module debouncer(
    input clk,
    input btn,
    output reg btn_out
);

reg [19:0] counter = 0;
reg btn_sync = 0;

always @(posedge clk)
begin
    if(btn == btn_sync)
    begin
        if(counter < 20'd999999)
            counter <= counter + 1;
        else
            btn_out <= btn_sync;
    end
    else
    begin
        counter <= 0;
        btn_sync <= btn;
    end
end

endmodule
