module PCmem(PC, In, Reset, clk);
	input[31:0] In;
	input Reset, clk;
	output reg[31:0] PC;
	
	always @(posedge clk) begin
		if(Reset) PC = 32'd0;
		else PC = In;
	end
	
endmodule
