module Decoder5to32(S, M);
	input [4:0]S; // select
	output [31:0]M; // minterm outputs
	
	assign M[0] = ~S[4] &~S[3] &~S[2] &~S[1] &~S[0];
	assign M[1] = ~S[4] &~S[3] &~S[2] &~S[1] &S[0];
	assign M[2] = ~S[4] &~S[3] &~S[2] &S[1] &~S[0];
	assign M[3] = ~S[4] &~S[3] &~S[2] &S[1] &S[0];
	assign M[4] = ~S[4] &~S[3] &S[2] &~S[1] &~S[0];
	assign M[5] = ~S[4] &~S[3] &S[2] &~S[1] &S[0];
	assign M[6] = ~S[4] &~S[3] &S[2] &S[1] &~S[0];
	assign M[7] = ~S[4] &~S[3] &S[2] &S[1] &S[0];
   assign M[8] = ~S[4] &S[3] &~S[2] &~S[1] &~S[0];
	assign M[9] = ~S[4] &S[3] &~S[2] &~S[1] &S[0];
	assign M[10] = ~S[4] &S[3] &~S[2] &S[1] &~S[0];
	assign M[11] = ~S[4] &S[3] &~S[2] &S[1] &S[0];
	assign M[12] = ~S[4] &S[3] &S[2] &~S[1] &~S[0];
	assign M[13] = ~S[4] &S[3] &S[2] &~S[1] &S[0];
	assign M[14] = ~S[4] &S[3] &S[2] &S[1] &~S[0];
	assign M[15] = ~S[4] &S[3] &S[2] &S[1] &S[0];
   assign M[16] = S[4] &~S[3] &~S[2] &~S[1] &~S[0];
	assign M[17] = S[4] &~S[3] &~S[2] &~S[1] &S[0];
	assign M[18] = S[4] &~S[3] &~S[2] &S[1] &~S[0];
	assign M[19] = S[4] &~S[3] &~S[2] &S[1] &S[0];
	assign M[20] = S[4] &~S[3] &S[2] &~S[1] &~S[0];
	assign M[21] = S[4] &~S[3] &S[2] &~S[1] &S[0];
	assign M[22] = S[4] &~S[3] &S[2] &S[1] &~S[0];
	assign M[23] = S[4] &~S[3] &S[2] &S[1] &S[0];
   assign M[24] = S[4] &S[3] &~S[2] &~S[1] &~S[0];
	assign M[25] = S[4] &S[3] &~S[2] &~S[1] &S[0];
	assign M[26] = S[4] &S[3] &~S[2] &S[1] &~S[0];
	assign M[27] = S[4] &S[3] &~S[2] &S[1] &S[0];
	assign M[28] = S[4] &S[3] &S[2] &~S[1] &~S[0];
	assign M[29] = S[4] &S[3] &S[2] &~S[1] &S[0];
	assign M[30] = S[4] &S[3] &S[2] &S[1] &~S[0];
	assign M[31] = S[4] &S[3] &S[2] &S[1] &S[0];
endmodule
