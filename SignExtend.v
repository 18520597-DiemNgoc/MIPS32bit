module SignExtend(Out_SignExtend, In_SignExtend);
	input [15:0] In_SignExtend;
	output [31:0] Out_SignExtend;
	
	assign Out_SignExtend = In_SignExtend[15] ? {16'b11111111111111111, In_SignExtend}: {16'b00000000000000000, In_SignExtend};
	
endmodule
