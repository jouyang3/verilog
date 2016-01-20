module demuxn(d, sel, outs);
	parameter dwidth = 1; //Data Bitwidth
	parameter swidth = 1; //Select Bitwidth
	localparam seln = 2**swidth;
	
	input [dwidth-1:0] d;
	input [swidth-1:0] sel;
	output reg [seln*dwidth-1:0] outs;
	
	integer i;
	
	always@(d, sel) begin
		for(i=0;i<seln;i=i+1) begin
			if(i==sel)
				outs[i*dwidth-:dwidth] = d;
			else
				outs[i*dwidth-:dwidth] = {dwidth{1'b0}};
		end
	end
endmodule
