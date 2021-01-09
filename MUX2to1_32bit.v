// MUX2to1_32bit
module MUX2to1_32bit(Out_Mux_32bit, InA, InB, Sel);
	parameter n = 32;
	input [(n - 1):0] InA, InB;
	input Sel;
	output reg [(n - 1):0] Out_Mux_32bit;
	always @(*) begin
		Out_Mux_32bit = Sel ? InB : InA;
	end
	
endmodule
