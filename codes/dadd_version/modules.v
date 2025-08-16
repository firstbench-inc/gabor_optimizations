module HalfAdder0(input a, input b, output sum, output cout);

    assign sum = a ^ b;
    assign cout = a & b;
endmodule

module HalfAdder1(input a, input b, output sum, output cout);

    assign sum = a | b;
    assign cout = a & b;
endmodule

module FullAdder0(input a, input b, input cin, output sum, output cout);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & b) | (cin & a);
endmodule

module FullAdder1(input a, input b, input cin, output sum, output cout);

    assign sum = a | b | cin;
    assign cout =  (cin & b) | (cin & a);
endmodule

module FullAdder2(input a, input b, input cin, output sum, output cout);

    assign sum = a | b | cin;
    assign cout =  (cin & b);
endmodule

module AndGate(input a, input b, output y);
    assign y = a & b;
endmodule

module AndGate0(input a, input b, output y);
    assign y = a & b;
endmodule


module NandGate(input a, input b, output y);
    assign y = ~(a & b);
endmodule

module NandGate0(input a, input b, output y);
    assign y = ~(a & b);
endmodule

module BitwisePG(input A, input B, output P, output G);

    assign P = A ^ B;
    assign G = A & B;
endmodule

module BitwisePG0(input A, input B, output P, output G);

    assign P = A ^ B;
    assign G = A & B;
endmodule

module XorGate(input A, input B, output Y);

    assign Y = A ^ B;
    
endmodule

module XorGate0(input A, input B, output Y);

    assign Y = A ^ B;
    
endmodule

module BlackCell(input Pi, input Gi, input Cin, input Pj, output P, output G);

    assign P = (Pi & Pj);
    assign G = (Gi | (Pi & Cin));
endmodule

module BlackCell0(input Pi, input Gi, input Cin, input Pj, output P, output G);

    assign P = (Pi & Pj);
    assign G = (Gi | (Pi & Cin));
endmodule

module GrayCell(input Pi, input Gi, input Cin, output P, output G);

    assign G = (Gi | (Pi & Cin));
    assign P = Pi;
    
endmodule

module GrayCell0(input Pi, input Gi, input Cin, output P, output G);

    assign G = (Gi | (Pi & Cin));
    assign P = Pi;
    
endmodule