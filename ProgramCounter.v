module ProgramCounter(PS, data_in, PC4, PC, clock, reset);
input clock;
input reset;
input [2:0] PS; //program select bits
input [63:0] data_in;
output [63:0] PC4; //program counter + 4
output [63:0] PC; //program counter


wire [63:0] PCplus4;
assign PC4 = PCplus4;
wire [63:0] Add_out;
wire [63:0] mux_out0;
wire [63:0] mux_out1;

assign mux_out0 = PS[2] ? data_in : {data_in[63:2], 2'b00}; //selects between data in or data in shifted left 2
assign PCplus4 = PC + 3'b100; //program counter + 4 PC4
assign Add_out = PCplus4 + mux_out0;
assign mux_out1 = PS[1] ? PCplus4 : Add_out;
RegisterNbit reg1 (PC, mux_out1, PS[0], reset, clock); //64 bit register, program select connected to load


endmodule 
















