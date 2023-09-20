class first;
	int data=20; //local 은 해당데이터를 해당클래스 내부로만 제한시킴
	task display();
			  $display ("Value of data : %0d",data);
	endtask
endclass

class second;
	first f1;

	function new(); //function new는 생성자 역할
		f1 = new();
	endfunction

endclass

module tb;
	
	second s;

	initial begin
		s = new();	//생성자
		$display ("Value of data : %0d", s.f1.data);
		s.f1.display();// 클래스 안의 함수 접근

		s.f1.data = 43; //first 클래스안의 data 멤버 값 변경
		s.f1.display();
	end
endmodule
