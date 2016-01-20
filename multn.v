module multn(a, b, out);

	parameter n = 4;
	
	input[n-1:0] a,b;
	output[2*n-1:0] out;
	
	
	wire[n:0] sums[0:n-1]; //requires n+1 bits to persist carry info
	wire [n-1:0] ao[0:n-1]; //buses to connect and'ed outputs to adders

	genvar i;
	generate
		assign ao[0] = {n{b[0]}} & a[n-1:0];
		assign sums[0] = {ao[0][n-1],ao[0]}; //sign extend first and'ed result and store as first sum
		assign out[0] = sums[0][0];
		for(i = 1; i < n; i = i+1) begin: gadder
			assign ao[i] = {n{b[i]}} & a[n-1:0];
			addern #(n+1) adder({{1{sums[i-1][n]}}, sums[i-1][n:1]}, {{1{ao[i][n-1]}}, ao[i]}, 1'b0, sums[i],);
			if(i == n-1)
				assign out[2*n-1:i] = sums[i];
			else
				assign out[i] = sums[i][0];
		end
	endgenerate

endmodule