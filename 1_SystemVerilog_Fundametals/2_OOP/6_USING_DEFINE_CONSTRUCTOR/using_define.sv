class first;
	int data;

	function void new(input int datain = 0);
		data = datain;
	//	data = 32;
   endfunction
endclass

module tb;
	first f1;

	initial begin
		f1 = new(32);
		$display ("Data : %0d",f1.data);
	end
endmodule
