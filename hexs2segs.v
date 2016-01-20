module hexs2segs(ws, segs);
	
	parameter n = 1;
	
	localparam nw = n*4;
	localparam nseg = n*7;

	input [nw-1:0] ws;
	output [nseg-1:0] segs;

	genvar i;
	generate
		for(i=n; i>0; i=i-1) begin: gseg
			hex2seg h(.w(ws[4*i-1:4*(i-1)]), .seg(segs[7*i-1:7*(i-1)]));
		end
	endgenerate

endmodule