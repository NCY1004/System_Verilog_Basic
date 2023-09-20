module add(
	input [3:0] a,
	input [3:0] b,
	output reg [4:0] sum,
	input 			  clk
);
	
always @ (posedge clk) begin
	if (clk)
		sum <= a + b;
end

endmodule
