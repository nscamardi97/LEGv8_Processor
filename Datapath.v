module Datapath(ControlWorld, Const, Bsel, data, clock, reset, status);
	input [63:0] Const;
	input [22:0] ControlWorld;
	inout [63:0] data;
	input Bsel, clock, reset;
	output [3:0] status;
	
	wire [4:0] SA, SB, DA;
	wire RegWrite, MemWrite; 
	wire [4:0] FS;
	wire SD;
	wire [63:0] ALU_output, MEM_output;
	wire EN_Mem, EN_ALU;
	
	// ControlWord is 24 bits
	assign {SA, SB, DA, RegWrite, MemWrite, FS, SD} = ControlWorld;
	// if SD is 0, Enable ALU
	// if SD is 1, Enable Mem
	
	wire [63:0] A, B;
	wire [63:0] B2;
	
	RegFile32x64 regfile (A, B, data, DA, SA, SB, RegWrite, reset, clock);
	assign B2 = Bsel ? Const : B;
	ALU alu (ALU_output, status, A, B2, FS);
	RAM256x64 ram (ALU_output[7:0], ~clock, B, MemWrite, MEM_output);
	assign data = SD ? MEM_output : ALU_output;
endmodule
