// MUX2to1_5bit
module MUX2to1_5bit(Out_Mux_5bit, InA, InB, Sel);
	parameter n = 5;
	input [(n - 1):0] InA, InB;
	input Sel;
	output [(n - 1):0] Out_Mux_5bit;
	
	assign Out_Mux_5bit = Sel ? InB : InA;
	
endmodule
