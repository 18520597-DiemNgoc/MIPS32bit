module RegisterFile(ReadData1, ReadData2, WriteData, ReadWriteEn, WriteAddress, ReadAddress1, ReadAddress2, CLK );
	input ReadWriteEn, CLK;	
	input[4:0] WriteAddress, ReadAddress1, ReadAddress2;
	input[31:0] WriteData;
	output [31:0] ReadData1, ReadData2;
	
	reg [31:0] array_reg [31:0];
	reg [31:0] reg1, reg2;
//	integer i;
	
	//for(i = 0; i < 32; i = i + 1) array_reg[i] = 32'b0;
	always @(posedge CLK) begin
		//Write to register file : ReadWriteEn == 1		
		if(ReadWriteEn) array_reg[WriteAddress] <= WriteData;	
	end
		//Read from register file
	always @(ReadAddress1 or ReadAddress2) begin 
			reg1 <= array_reg[ReadAddress1];
			reg2 <= array_reg[ReadAddress2];
	end	
	
	assign ReadData1 = reg1;
	assign ReadData2 = reg2;
	
endmodule


