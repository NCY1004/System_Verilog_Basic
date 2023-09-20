module tb;
	//unique
	int arr1[2] = '{1,2};
	//repetition operator
	int arr2[2] = '{2{3}};
	//default
	int arr3[2] = '{default :2};
	//uninitializeaad
	int arr4[2];

	
	initial begin
		$display ("Value of all elements of arr1 : %0p", arr1);
		$display ("Value of all elements of arr2 : %0p", arr2);
		$display ("Value of all elements of arr3 : %0p", arr3);
		$display ("Value of all elements of arr4 : %0p", arr4);
	end
endmodule
