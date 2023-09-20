class first;
	int data = 12;
	
	function first copy();
		copy = new(); //Copy 라는 객체를 생성하고
		copy.data = data; //Copy 객체에 data 라는 멤버 복사
	endfunction

endclass

class second;
	int ds = 34;
	
	first f1; // class handle

	function new(); //호출되면 매서드 추가 (클래스 안에 클래스 만들기)
		f1 = new();  //Creating object
	endfunction

	function second copy();
		copy = new();
		copy.ds = ds;
		copy.f1 = f1.copy; //f1의 copy 객체를 복사
	endfunction


endclass

module tb;

	second s1, s2;

	initial begin
		s1 = new();
		s2 = new();

		s1.ds =45;

		s2 = s1.copy(); //s1의 copy 객체를 s2에 복사 (DeepCopy)
		$display ("Value of s2 : %0d", s2.ds);

		s2.ds = 78;
		$display ("Value of s1 : %0d", s1.ds); //s2객체에 값을 넣어도 s1에 반영이 안됨
	
		s2.f1.data = 98;
		$display ("Vlaue of s1 : %0d", s2.f1.data); //
	end

endmodule

