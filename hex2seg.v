module hex2seg(input [3:0] w, output reg [6:0] seg);

	localparam HEX_ZERO	= 7'b100_0000;
	localparam HEX_ONE 	= 7'b111_1001;
	localparam HEX_TWO 	= 7'b010_0100;
	localparam HEX_THREE = 7'b011_0000;
	localparam HEX_FOUR 	= 7'b001_1001;
	localparam HEX_FIVE 	= 7'b001_0010;
	localparam HEX_SIX  	= 7'b000_0010;
	localparam HEX_SEVEN = 7'b111_1000;
	localparam HEX_EIGHT = 7'b000_0000;
	localparam HEX_NINE	= 7'b001_0000;
	localparam HEX_A 		= 7'b000_1000;
	localparam HEX_B 		= 7'b000_0011;
	localparam HEX_C 		= 7'b100_0110;
	localparam HEX_D 		= 7'b010_0001;
	localparam HEX_E 		= 7'b000_0110;
	localparam HEX_F 		= 7'b000_1110;
	
	always @(w)
	begin
		case(w)
			0:		seg = HEX_ZERO;
			1:		seg = HEX_ONE;
			2:		seg = HEX_TWO;
			3:		seg = HEX_THREE;
			4:		seg = HEX_FOUR;
			5:		seg = HEX_FIVE;
			6:		seg = HEX_SIX;
			7:		seg = HEX_SEVEN;
			8:		seg = HEX_EIGHT;
			9:		seg = HEX_NINE;
			10:	seg = HEX_A;
			11:	seg = HEX_B;
			12:	seg = HEX_C;
			13:	seg = HEX_D;
			14:	seg = HEX_E; 
			15:	seg = HEX_F;
		endcase
	end
	
endmodule