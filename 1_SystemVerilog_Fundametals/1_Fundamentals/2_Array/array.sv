module tb;
	bit arr1[8]; //배열 초기화 및 크기 선언
	bit arr2[] = {1,0,1,1};

	initial begin
		$display ("size of arr1 : %0d", $size (arr1));
		$display ("size of arr2 : %0d", $size (arr2));

		$display ("Value if first element : %0d", arr1[0]);
		arr1[1] =1;
		$display ("Value if first element : %0d", arr1[1]);

		$display ("Value of all elements of arr2 : %0p", arr2);
	end
endmodule
