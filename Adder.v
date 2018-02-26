module Adder(F, Cout, A, B, Cin);
	input [63:0] A, B;
	input Cin;
	output [63:0] F;
	output Cout;
	
	assign {Cout, F} = A + B + Cin;
	
endmodule 