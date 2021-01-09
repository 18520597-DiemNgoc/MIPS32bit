module ADD(O_ADD, InA, InB);
	input [31:0] InA, InB;
	output reg[31:0] O_ADD;
	
	always @(*) begin
		O_ADD = InA + InB;
	end
	
endmodule
