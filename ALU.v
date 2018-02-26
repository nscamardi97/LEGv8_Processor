module ALU(F, status, A, B, FS);
	output [63:0] F;
	output [3:0] status;
	input [63:0] A, B;
	input [4:0] FS;
	// FS[0] = Binv, FS[1] = Ainv, 
	// FS[4:2] = Operation select
	// 000 - AND 
	// 001 - OR 
	// 010 - ADD
	// 011 - XOR
	// 100 - shift left
	// 101 - shift right
	// 110 - not used
	// 111 - not used
	wire N, Z, C, V;
	assign status = {V, C, Z, N};
	wire [63:0] Gary, Larry;
	// inline conditional => (condition) ? (if true) : (if false);
	assign Gary = FS[1] ? ~A : A;
	assign Larry = FS[0] ? ~B : B;
	
	wire [63:0] aandb, aorb, sum, axorb, sleft, sright;
	assign aandb = Gary & Larry;
	assign aorb = Gary | Larry;
	Adder add_inst (sum, C, Gary, Larry, FS[0]);
	assign axorb = Gary ^ Larry;
	Shifter shift_inst (A, B[5:0], sleft, sright);
	
	Mux8to1Nbit ALU_mux (F, FS[4:2], aandb, aorb, sum, axorb, sleft, sright, 64'b0, 64'b0);
	
	assign N = F[63];
	assign Z = (F == 64'b0) ? 1'b1 : 1'b0;
	assign V = ~(Gary[63] ^ Larry[63]) & (Gary[63] ^ sum[63]);
	
	defparam ALU_mux.N = 64;
endmodule
