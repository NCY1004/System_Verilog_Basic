class first; // 부모 클래스

	int data = 12;

	function void display();
		$display ("Value of data : %0d",data);
	endfunction

endclass

class second extends first; //자식 클래스

	 int temp = 34;
	function void add();
		$display ("Value of data : %0d",temp + 4);
	endfunction

endclass

module tb;
	second s;

	initial begin
		s = new();
		$display ("Value of Data : %0d",s.data); //부모 클래스 데이터 멤버 확인

		s.display(); //부모 클래스내  함수호출
		$display ("Value of Data : %0d",s.temp); //자식 클래스 데이터 멤버 확인

		s.add(); //자식 클래스내 함수호출	
		

	end
endmodule
