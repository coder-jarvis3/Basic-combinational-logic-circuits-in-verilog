module mux_4x1_tb;

reg [3:0] d;
reg s0, s1;
wire y;

behaioral_mux_4x1 m1 (
    .D(d),
    .s0(s0),
    .s1(s1),
    .Y(y)
);

integer i;

initial begin
    for (i = 0; i < 64; i = i + 1) begin
        {d, s1, s0} = i;
        #10;
    end

    $finish;
end

endmodule