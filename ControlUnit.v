module ControlUnit(ALUControl, RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemtoReg, Branch, INST);
	input[31:0] INST;
	output reg[2:0] ALUControl;
	output reg RegDst, RegWrite, ALUSrc, MemWrite, MemRead, MemtoReg, Branch;
	
	always @(INST[31:26], INST[5:0]) begin	
		RegDst = 1'b0;
		ALUSrc = 1'b0;
		MemtoReg = 1'b0;
		RegWrite = 1'b0;
		MemRead = 1'b0;
		MemWrite = 1'b0;
		Branch = 1'b0;
		ALUControl = 3'b101;
		
		if(INST[31:26] == 6'd0) begin		// for R-type
			RegDst = 1'b1;
			ALUSrc = 1'b0;
			MemtoReg = 1'b0;
			RegWrite = 1'b1;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Branch = 1'b0;
		
		if(INST[5:0] == 6'b100000) ALUControl = 3'b101; // Add
		if(INST[5:0] == 6'b100100) ALUControl = 3'b001;	// And
		if(INST[5:0] == 6'b100101) ALUControl = 3'b011;	// Or
		if(INST[5:0] == 6'b100110) ALUControl = 3'b010;	// xor
		if(INST[5:0] == 6'b000000) ALUControl = 3'b100;	// Shift Left
		if(INST[5:0] == 6'b000010) ALUControl = 3'b111;	// Shift Right
		if(INST[5:0] == 6'b100010) ALUControl = 3'b110;	// Sub
		end
		
		else if(INST[31:26] == 6'b101011) begin	// for sw
			RegDst = 1'b0;
			ALUSrc = 1'b1;
			MemtoReg = 1'b0;
			RegWrite = 1'b0;
			MemRead = 1'b0;
			MemWrite = 1'b1;
			Branch = 1'b0;
			ALUControl = 3'b101;
		end
		
		else if(INST[31:26] == 6'b100011) begin	// for lw
			RegDst = 1'b0;
			ALUSrc = 1'b1;
			MemtoReg = 1'b1;
			RegWrite = 1'b1;
			MemRead = 1'b1;
			MemWrite = 1'b0;
			Branch = 1'b0;
			ALUControl = 3'b101;
		end
	
		else if(INST[31:26] == 6'b000100) begin	// for beq
			RegDst = 1'b0;
			ALUSrc = 1'b0;
			MemtoReg = 1'b0;
			RegWrite = 1'b0;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Branch = 1'b1;
			ALUControl = 3'b110;
		end
		
		else if(INST[31:26] == 6'b001000) begin		//addi
			RegDst = 1'b0;
			ALUSrc = 1'b1;
			MemtoReg = 1'b0;
			RegWrite = 1'b1;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			Branch = 1'b0;
			ALUControl = 3'b101;
		end
	end
	
endmodule
