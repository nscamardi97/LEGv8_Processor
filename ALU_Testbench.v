module ALU_Testbench();
	wire [63:0] F;
	reg [63:0] A, B;
	wire [3:0] status;
	reg [4:0] FS;
	
	ALU dut(F, status, A, B, FS);
	
	initial begin 
		/*
		FS <= 5'b00000; // AND
		A <= 64'd2;
		B <= 64'd5;
		#5 FS <= 5'b00100; // OR
		FS <= 5'b01000; // ADD
		A <= 64'd1;
		B <= 64'd15;
		#5 FS <= 5'b01001; // SUB
		#5 FS <= 5'b10000; // shift left
		#5 FS <= 5'b10100; // shift right
		A <= 64'h8000000000000000;
		#5 FS <= 5'b01100; // XOR
		A <= 64'd3;
		B <= 64'd6;
		*/
		#5000 $stop;
	end
	
	always begin
		#5 FS <= $random;
		A <= {$random,$random};
		B <= {$random,$random};
	end
	
	reg [63:0] F_exp;
	wire [63:0] A2, B2;
	assign A2 = FS[1] ? ~A : A;
	assign B2 = FS[0] ? ~B : B;
	always @(*) begin
		case(FS[4:2])
			3'b000: F_exp = A2 & B2;
			3'b001: F_exp = A2 | B2;
			3'b010: F_exp = A2 + B2 + FS[0];
			3'b011: F_exp = A2 ^ B2;
			3'b100: F_exp = A << B[5:0];
			3'b101: F_exp = A >> B[5:0];
			3'b110: F_exp = 64'b0;
			3'b111: F_exp = 64'b0;
		endcase
	end
	always begin
		#2 if(F != F_exp) $display("time: %d, FS: %x, A: %d, B: %d, F: %d, F_exp", $time, FS, A, B, F, F_exp);
	end
	
endmodule
