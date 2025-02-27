`timescale 1ns / 1ps

module seven_segment_display_tb;

    logic [3:0] num;
    logic [2:0] sel;
    logic [6:0] segment;
    logic [7:0] anode;

    seven_segment_display uut (
        .num(num),
        .sel(sel),
        .segment(segment),
        .anode(anode)
    );

    initial begin
        num = 4'h0; sel = 3'b000; #10;
        num = 4'h1; sel = 3'b001; #10;
        num = 4'h2; sel = 3'b010; #10;
        num = 4'h3; sel = 3'b011; #10;
        num = 4'h4; sel = 3'b100; #10;
        num = 4'h5; sel = 3'b101; #10;
        num = 4'h6; sel = 3'b110; #10;
        num = 4'h7; sel = 3'b111; #10;
        num = 4'h8; sel = 3'b000; #10;
        num = 4'h9; sel = 3'b001; #10;
        num = 4'hA; sel = 3'b010; #10;
        num = 4'hB; sel = 3'b011; #10;
        num = 4'hC; sel = 3'b100; #10;
        num = 4'hD; sel = 3'b101; #10;
        num = 4'hE; sel = 3'b110; #10;
        num = 4'hF; sel = 3'b111; #10;
        $finish;
    end

endmodule
