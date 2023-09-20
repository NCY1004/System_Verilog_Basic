module tb;
	bit [7:0] res[31];
	
	function automatic void arr(ref bit [7:0] a[31]);
		for (int i=0; i<=31; i++) begin
			a[i] = i*8;
		end
	endfunction


	initial begin
		arr(res);
		for (int i=0; i<=31; i++) begin
		$display ("Value res[%0d] :%0d ", i, res[i]);
		
		end 
	end

endmodule
