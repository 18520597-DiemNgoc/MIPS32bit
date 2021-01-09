`timescale 1ns/1ns

module TestBench();
	parameter t = 200;
	reg clock, Reset;
	wire[31:0] RD1, RD2, O_Mux_32bit, O_ALU, O_Mem, O_MemToReg, O_INST;
	wire[2:0] ALUControl;
	wire[4:0] Addr1, Addr2;
	wire RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemtoReg, Branch;
	
	initial begin
		clock = 0;		
		Reset = 0;
		#(t*10) $finish;
	end
	
	always @(clock)
		#(t/2)clock <= ~clock;
		
	MIPS DUT(RD1, RD2, O_Mux_32bit, O_ALU, O_Mem, O_MemToReg, O_RegDst, O_INST, ALUControl, RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemtoReg, Branch, clock, Reset, Addr1, Addr2);

endmodule


