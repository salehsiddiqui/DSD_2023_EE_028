module Lab_03(
    output logic x, y,
    input logic a, b, c
);

logic not_out, or_out, nand_out, xor_out;
assign not_out = ~c;
assign or_out = a | b;
assign x = (not_out) ^ (or_out);
assign nand_out = (~(a & b));
assign or_out = a | b;
assign xor_out = (nand_out) ^ (or_out);
assign y = (xor_out) & (or_out);
endmodule
