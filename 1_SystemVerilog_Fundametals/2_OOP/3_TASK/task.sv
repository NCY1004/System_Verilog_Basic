module tb;
	
	///기본방향은 : input
	/*
	task add(input bit [3:0] a, input bit [3:0] b, output bit [4:0] y);
		y = a + b;
	endtask
   */	
	bit [3:0] a,b;
	bit [3:0] y;
	bit [4:0] clk;

	always #5 clk = ~clk; //20ns ---> 50mhz
	
	task add();
 		y = a + b;
		$display ("a :%0d and b: %0d and y : %0d",a,b,y);
   endtask
	
	task stim_a_b();
		a = 1;
		b = 3;
		add();
		#10;

		a = 5;
		b = 6;
		add();
		#10;

		a = 7;
		b = 8;
		add();
		#10;
	endtask
	
	task stim_clk ();
		@ (posedge clk) //wait
		a = $urandom();
	   b = $urandom();	
		add();
	endtask

	initial begin
   	#110;
		$finish();	
	end

	initial begin
		for (int i=0; i<11; i++) begin
			stim_clk();	
		end
	end

endmodule
