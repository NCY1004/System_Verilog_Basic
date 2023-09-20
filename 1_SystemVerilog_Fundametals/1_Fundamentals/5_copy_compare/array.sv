module tb;
	int arr1[5];
	int arr2[5];
	//shortint arr2[5]; //같은 자료형이 아니면 컴파일 오류
	int status;
	initial begin
		for(int i=0; i<5; i++)begin
			arr1[i] = 5*1;
		end
	arr2 = arr1;

	status = (arr1 == arr2);	 //배열 요소가 같은지 비교
	$display ("Status : %0d",status);
	$display ("arr1 :%0p", arr1); 
	$display ("arr2 :%0p", arr2);
	end 
endmodule
