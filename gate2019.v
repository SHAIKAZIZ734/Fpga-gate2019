// File: logic_circuit.v

module logic_circuit (
    input wire A,
    input wire B,
    input wire C,
    input wire G,
    input wire P,
    output wire X,
    output wire Y
);

    wire and1_out;
    wire or1_out;
    wire and2_out;
    wire or2_out;

    // Top path for X
    assign and1_out = A & G;
    assign or1_out = and1_out | C;
    assign X = ~or1_out;

    // Bottom path for Y
    assign and2_out = G & B;
    assign or2_out = and2_out | P;
    assign Y = or2_out & G;

endmodule

