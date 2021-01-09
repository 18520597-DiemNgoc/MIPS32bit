module Instruction(INST, PC, opcode, rs, rt, rd, shamt, funct, immediate, address);
	input [31:0] INST, PC;
	output wire [5:0] opcode;
	output reg [4:0] rs, rt, rd, shamt; 
	output reg [5:0] funct;
	output reg[15:0] immediate;
	output reg [25:0] address;
	
	assign opcode = INST[31:26];
	
	always @(INST) begin
		// R-type
		if(opcode == 6'h0) begin
			shamt = INST[10:6];
			rd = INST[15:11];
			rt = INST[20:16];
			rs = INST[25:21];
			funct = INST[5:0];
		end
		// I-type
		else if(opcode != 6'h3 && opcode != 6'h2) begin
			rt = INST[20:16];
			rs = INST[25:21];
			immediate = INST[15:0];
		end
	end
endmodule
