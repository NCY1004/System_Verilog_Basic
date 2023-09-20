class first;
	
	int data = 34;
	bit [7:0] temp = 8'h11;
	
	function first copy(); // 객체 복사용 함수 (결과반환용)
		copy = new(); //copy 객체생성
		copy.data = data; 
		copy.temp = temp; //클래스 데이터맴버를 copy 객체에 할당
	endfunction
endclass


module tb;

	first f1;
	first f2;

	initial begin
		f1 = new();
		f2 = new();

		f2 = f1.copy; //f1의 copy 객체를 f2에 할당
		$display ("Data : %0d and TEMP :%0x",f2.data, f2.temp);
	end



/*
	initial begin
		f1 = new();

		f1.data = 45;

		f2 = new f1;

		f2.data = 50;

		$display ("%0d",f1.data);
	end
*/
endmodule
