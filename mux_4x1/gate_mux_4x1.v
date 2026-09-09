// Gate level modelling

module mux (
    input [3:0] D, 
    input s0, s1, 
    output Y
);
    wire s1_bar,so_bar, w1,w2,w3,w4;

    not (s1_bar,s1);
    not (so_bar,s0);

    and (w1,s1_bar,so_bar,D[0]); 
    and (w2,s1_bar,s0,D[1]);
    and (w3,s1,so_bar,D[2]);
    and (w4,s1,s0,D[3]);

    or (Y,w1,w2,w3,w4);

endmodule