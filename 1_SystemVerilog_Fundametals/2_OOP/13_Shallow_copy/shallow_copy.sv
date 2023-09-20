class first;
	int data = 12;
endclass

class second;
	int ds = 34;
	
	first f1; // class handle

	function new(); //호출되면 매서드 추가 (클래스 안에 클래스 만들기)
		f1 = new();  //Creating object
	endfunction
endclass

module tb;

	second s1, s2;

	initial begin
		s1 = new();

		s1.ds = 45;

		s2 = new s1;
		
		$display ("Value Data s2.ds : %0d",s2.ds);

		s2.ds = 78;

		$display ("Value Data s1.ds : %0d",s1.ds); //s2 객체의 데이터 멤버의 값을 변경해도 s1객체의  데이터 멤버의 값은 변경되지 않는다

		s2.f1.data = 56;

		$display ("Value Data f1 data :%0d",s2.f1.data);
		
	end



endmodule
