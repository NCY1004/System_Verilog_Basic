module tb;

	task automatic swap (const ref bit [1:0] a,ref bit [1:0] b); //함수인자에 참조로 설정시 automatic으로 하여 자동으로 저장소를 추가 하여야 함 
		bit [1:0] temp;
		temp = a;
		//a = b;
		b = temp;

		$display ("Value of a : %0d and b : %0d",a,b);
	endtask

	bit[1:0] a;
	bit[1:0] b;

	initial begin
		a = 1;
		b = 2;
		swap(a,b);
		$display ("Value of a : %0d and b : %0d",a,b); 

	end


endmodule
