module Shift2(Shift2, In);
	input[31:0] In;
	output reg[31:0] Shift2;
	
	always @(*) begin
		Shift2 = In << 2; 
	end
	
endmodule
