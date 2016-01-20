module adder(input ci, a, b, output o, co);

	assign o = ci ^ a ^ b;
	assign co = (ci&a) | (ci&b) | (a&b);

endmodule