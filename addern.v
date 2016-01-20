module addern(a, b, ci, sum, co, overflow);

	parameter n = 8;
	input[n-1:0] a, b;
	input ci;
	output[n-1:0] sum;
	output co,overflow;
	wire[n-1:0] carries;
	assign overflow = carries[n-1] ^ carries[n-2];
	assign co = carries[n-1];
	
	adder chip0(a[0],b[0],ci,sum[0],carries[0]);
	genvar i;
	generate
		for(i = 1; i < n; i=i+1) begin: cadd
			adder chip(a[i],b[i],carries[i-1],sum[i],carries[i]);
		end
	endgenerate

endmodule