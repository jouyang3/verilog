module muxn(ins,sel,d);
	parameter dwidth = 1; //Data Bitwidth
	parameter swidth = 1; //Select Bitwidth
	localparam seln = 2**swidth;
	
	input [seln*dwidth-1:0] ins;
	input [swidth-1:0] sel;
	output reg [dwidth-1:0] d;
	
	integer i;
	
	always@(ins, sel) begin
		for(i=0;i<seln;i=i+1) begin
			if(i==sel)
				d = ins[i*dwidth-:dwidth];
		end
	end
endmodule