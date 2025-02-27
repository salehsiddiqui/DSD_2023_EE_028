`timescale 1ns / 1ps

module seven_segment_display(
    input logic [3:0] num,   
    input logic [2:0] sel,   
    output logic [6:0] segment,dp,  
    output logic [7:0] anode     
);

    assign segment[0] = (num[3] | ~num[1]) & (~num[1] | ~num[2]) & (num[2] | num[0]) & (~num[3] | num[2] | num[1]) & (~num[3] | num[1] | num[0]) & (num[3] | ~num[2] | ~num[0]);
    assign segment[1] = (~num[3] | ~num[2]) & (~num[2] | ~num[0]) & (~num[3] | ~num[1] | ~num[0]) & (~num[3] | num[1] | num[0]) & (num[3] | ~num[1] | num[0]);
    assign segment[2] = (~num[3] | num[2]) & (num[3] | ~num[2]) & (num[1] | ~num[0]) & (num[3] | num[1]) & (num[3] | ~num[0]);
    assign segment[3] = (~num[3] | num[1]) & (num[2] | num[1] | num[0]) & (~num[3] | num[2] | ~num[0]) & (num[3] | ~num[1] | num[2]) & (~num[1] | num[0] | ~num[2]);
    assign segment[4] = (num[3] | ~num[1]) & (num[0] | num[2]) & (~num[2] | ~num[3]) & (~num[3] | num[2] | num[1]) & (~num[3] | num[1] | num[0]);
    assign segment[5] = (~num[3] | num[2]) & (num[1] | num[0]) & (~num[3] | ~num[1]) & (~num[0] | ~num[2] | num[1]) & (num[3] | ~num[2] | num[1]);
    assign segment[6] = (~num[3] | num[2]) & (~num[1] | num[0]) & (~num[3] | ~num[0]) & (num[3] | num[2] | ~num[1]) & (num[3] | ~num[2] | num[1]);

    assign anode[0] = (sel[2] | sel[1] | sel[0]);
    assign anode[1] = (sel[2] | sel[1] | ~sel[0]);
    assign anode[2] = (sel[2] | ~sel[1] | sel[0]);
    assign anode[3] = (sel[2] | ~sel[1] | ~sel[0]);
    assign anode[4] = (~sel[2] | sel[1] | sel[0]);
    assign anode[5] = (~sel[2] | sel[1] | ~sel[0]);
    assign anode[6] = (~sel[2] | ~sel[1] | sel[0]);
    assign anode[7] = (~sel[2] | ~sel[1] | ~sel[0]);

endmodule
