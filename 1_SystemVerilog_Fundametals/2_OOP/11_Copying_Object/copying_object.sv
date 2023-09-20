class first;

	int data;

endclass

module tb;

	first f1;
	first p1;

	initial begin
		f1 = new();	//생성자	
		
		f1.data = 24;	// processing

		p1 = new f1;	// f1의 데이터멤버를 p1 으로 복사

		$display ("Value of data member : %0d", p1.data);

		p1.data = 12;

		$display ("Vlaue of data member : %0d", f1.data);	//p1의 데이터 멤버의 값을 변경해도 f1의 데이터 값은 변경되지 않음, 단순히 복사본만 얻음
	end

endmodule
