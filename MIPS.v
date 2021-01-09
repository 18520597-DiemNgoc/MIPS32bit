module MIPS(RD1, RD2, O_Mux_32bit, O_ALU, O_Mem, O_MemToReg, O_RegDst, O_INST, ALUControl, RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemtoReg, Branch, clock, Reset, Addr1, Addr2);
	input clock, Reset;
	output[4:0] O_RegDst, Addr1, Addr2;
	output [31:0] RD1, RD2, O_Mux_32bit, O_ALU, O_Mem, O_MemToReg, O_INST;
	output[2:0] ALUControl;
	output RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemtoReg, Branch;

	DataPath D(RD1, RD2, O_Mux_32bit, O_ALU, O_Mem, O_MemToReg, O_RegDst, O_INST, SignExtend, RegDst, RegWrite, ALUSrc, ALUControl, MemWrite, MemRead, MemtoReg, clock, Reset, Branch, Addr1, Addr2);
	ControlUnit C(ALUControl, RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemtoReg, Branch, O_INST);

endmodule
					
	