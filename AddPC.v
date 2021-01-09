module AddPC(AddPC, In);
	input[31:0] In;
	output reg[31:0] AddPC;
	
	always @(*) begin
		AddPC = In + 32'd4;
	end
	
endmodule
