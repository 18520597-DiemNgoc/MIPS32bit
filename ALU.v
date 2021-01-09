module ALU(Out_ALU, Zero, InA, InB, S, M);
	input [31:0] InA, InB;
	input [1:0] S;
	input M;
	output [31:0] Out_ALU;
	output Zero;
	
	reg [31:0] reg_Out;
	
	assign Out_ALU = reg_Out[31:0];
	assign Zero = ~(|reg_Out);
	always @(*) begin
		if(M == 0) begin
			case(S)
				2'b00: reg_Out <= ~InA;
				2'b01: reg_Out <= InA & InB;
				2'b10: reg_Out <= InA ^ InB;
				default: reg_Out <= InA | InB;
			endcase
		end
		else begin
			case(S)
				2'b00: reg_Out <= InA << InA[10:6];
				2'b01: begin
					reg_Out <= InA + InB;
				end
				2'b10: begin
					reg_Out <= InA - InB;
				end
				default: reg_Out <= InA >> InA[10:6];
			endcase
		end
	end
endmodule
