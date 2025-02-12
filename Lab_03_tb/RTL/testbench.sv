module Lab_03_tb;
    logic m, n, o; 
    logic p, q;     

    Lab_03 dut (
        .a(m),
        .b(n),
        .c(o),
        .y(p),
        .x(q)
    );

    initial begin
        m = 0; n = 0; o = 0; #5;
        m = 0; n = 0; o = 1; #5;
        m = 0; n = 1; o = 0; #5;
        m = 0; n = 1; o = 1; #5;
        m = 1; n = 0; o = 0; #5;
        m = 1; n = 0; o = 1; #5;
        m = 1; n = 1; o = 0; #5;
        m = 1; n = 1; o = 1; #5;
        $stop; 
    end

    initial begin
        $monitor("x=%b, y=%b, a=%b, b=%b, c=%b",q, p, m, n, o);
    end
endmodule
