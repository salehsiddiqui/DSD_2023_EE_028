module rgbcode(
input logic [1:0]a,
input logic [1:0]b,
output logic red,
output logic blue,
output logic green
    );
always_comb
    begin
        red = ((~b[0]) & (~b[1])) | ((a[0]) & (a[1])) | ((a[1]) & (~b[1]))|((a[0]) & (~b[1])) | ((a[1]) & (~b[0]));
        green = ((~a[0]) & (~a[1])) | ((~a[1])&(b[0])) | ((b[1]) & (b[0])) | ((~a[0]) & (b[1])) | ((~a[1])&(b[1]) );
        blue = (a[1] ^ b[1]) | (a[0] ^ b[0]);
    end
endmodule