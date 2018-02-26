module Shifter(A, shift_amt, left, right);
	input [63:0]A;
	input [5:0]shift_amt;
	output [63:0]left, right;

	assign left = A << shift_amt;
	assign right = A >> shift_amt;
endmodule
