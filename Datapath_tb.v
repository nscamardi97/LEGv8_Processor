module Datapath_tb();
	reg [4:0] SA, SB, DA;
	reg RegWrite, MemWrite; 
	reg [4:0] FS;
	reg SD;
	reg [63:0] Const;
	reg Bsel;
	wire [63:0] data;
	reg clock, reset;
	wire [3:0] status;
	wire [63:0] R5, R7, R1, R13, M4;
	
	Datapath dut({SA, SB, DA, RegWrite, MemWrite, FS, SD}, Const, Bsel, data, clock, reset, status);
	
	assign R5 = dut.regfile.R05;
	assign R7 = dut.regfile.R07;
	assign R1 = dut.regfile.R01;
	assign R13 = dut.regfile.R13;
	assign M4 = dut.ram.mem[4];

	
	initial begin 
		clock <= 1'b0;
		reset <= 1'b1;
		RegWrite <= 0;
		#6
		reset <= 1'b0;
		// R5 <- 24
		SA <= 31;
		SB <= 5'bxxxxx;
		DA <= 5;
		RegWrite <= 1'b1;
		MemWrite <= 1'b0;
		FS <= 5'b00100;
		SD <= 1'b0;
		Const <= 24;
		Bsel <= 1'b1;
		#10
		
		// R7 <- 39
		SA <= 31;
		SB <= 5'bxxxxx;
		DA <= 7;
		RegWrite <= 1'b1;
		MemWrite <= 1'b0;
		FS <= 5'b00100;
		SD <= 1'b0;
		Const <= 39;
		Bsel <= 1'b1;
		#10
		
		// R1 <- R5 + R7
		SA <= 5;
		SB <= 7;
		DA <= 1;
		RegWrite <= 1'b1;
		MemWrite <= 1'b0;
		FS <= 5'b01000;
		SD <= 1'b0;
		Const <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		Bsel <= 1'b0;
		#10
		
		// R30 <- R1 ^ R5
		SA <= 1;
		SB <= 5;
		DA <= 30;
		RegWrite <= 1'b1;
		MemWrite <= 1'b0;
		FS <= 5'b01100;
		SD <= 1'b0;
		Const <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		Bsel <= 1'b0;
		#10
		
		// R17 <- R30 << 2
		SA <= 30;
		SB <= 5'bxxxxx;
		DA <= 17;
		RegWrite <= 1'b1;
		MemWrite <= 1'b0;
		FS <= 5'b10000;
		SD <= 1'b0;
		Const <= 2;
		Bsel <= 1'b1;
		#10
		
		// M[4] <- R7
		SA <= 31;
		SB <= 7;
		DA <= 5'bxxxxx;
		RegWrite <= 1'b0;
		MemWrite <= 1'b1;
		FS <= 5'b00100;
		SD <= 1'b1;
		Const <= 4;
		Bsel <= 1'b1;
		#10
		
		// M[6] <- R1
		SA <= 31;
		SB <= 1;
		DA <= 5'bxxxxx;
		RegWrite <= 1'b0;
		MemWrite <= 1'b1;
		FS <= 5'b00100;
		SD <= 1'b1;
		Const <= 6;
		Bsel <= 1'b1;
		#10
		
		// R11 <- M[4]
		SA <= 31;
		SB <= 5'bxxxxx;
		DA <= 11;
		RegWrite <= 1'b1;
		MemWrite <= 1'b0;
		FS <= 5'b00100;
		SD <= 1'b1;
		Const <= 4;
		Bsel <= 1'b1;
		#10
		
		// R13 <- R11 + 1
		SA <= 11;
		SB <= 5'bxxxxx;
		DA <= 13;
		RegWrite <= 1'b1;
		MemWrite <= 1'b0;
		FS <= 5'b01000;
		SD <= 1'b0;
		Const <= 1;
		Bsel <= 1'b1;
		#10
		
		#5 $stop;
	end
	
	always begin
		#5 clock <= ~clock;
	end
	
endmodule
