module SRAM(ReadData, Address, WriteData, WriteEn, ReadEn, clk);
	parameter n = 32;
	input clk, ReadEn, WriteEn;
	input [(n-1):0] Address, WriteData;
	output reg [(n-1):0] ReadData;
	
	reg [31:0] array_reg [31:0];
	
	always @ (posedge clk)begin
		if (WriteEn)
			array_reg[Address] <= WriteData;
	
		if (ReadEn)
			ReadData <= array_reg[Address];
		else 
			ReadData <= 32'dZ;
	end
endmodule
