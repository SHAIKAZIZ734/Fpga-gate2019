// File: logic_circuit_tb.v

module logic_circuit_tb;

    // Inputs
    reg A;
    reg B;
    reg C;
    reg G;
    reg P;

    // Outputs
    wire X;
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    logic_circuit uut (
        .A(A),
        .B(B),
        .C(C),
        .G(G),
        .P(P),
        .X(X),
        .Y(Y)
    );

    initial begin
        $display("A B C G P | X Y");
        $display("------------------");

        // Test Case 1: From truth table row 1
        A = 1; B = 0; C = 1; G = 1; P = 0;
        #10 $display("%b %b %b %b %b | %b %b", A, B, C, G, P, X, Y);

        // Test Case 2: Row with unknowns X2 and Y2
        A = 0; B = 0; C = 0; G = 0; P = 1;
        #10 $display("%b %b %b %b %b | %b %b", A, B, C, G, P, X, Y);

        // Test Case 3: From truth table row 3
        A = 1; B = 0; C = 0; G = 0; P = 1;
        #10 $display("%b %b %b %b %b | %b %b", A, B, C, G, P, X, Y);

        $finish;
    end

endmodule
