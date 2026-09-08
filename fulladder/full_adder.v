module half_adder (input a,b, output s,c);

    xor(s,a,b);
    and(c,a,b);

endmodule

module full_adder(input a, b, cin, output s, cout);

    wire sum1, carry1, carry2;

    half_adder ha1(a, b, sum1, carry1);
    half_adder ha2(sum1, cin, s, carry2);
    
    or(cout, carry1, carry2);
endmodule