module full_adder_tb;
    reg a, b, cin;
    wire s, cout;

    full_adder fa(a, b, cin, s, cout);

    initial begin
        a = 0; b = 0; cin = 1;
        #10;
        a = 0; b = 1; cin = 1;
        #10;
        a = 1; b = 0; cin = 1;
        #10;
        a = 1; b = 1; cin = 1;
        #10;
        a = 0; b = 0; cin = 0;
        #10;
        a = 0; b = 1; cin = 0;
        #10;
        a = 1; b = 0; cin = 0;
        #10;
        a = 1; b = 1; cin = 0;
        #10;
        $finish;
    end

    always @(a or b or sum or carry) begin
        $display("input a = %b b = %b output sum = %b carry = %b", a, b, sum, carry);
    end

endmodule