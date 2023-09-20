class first;
	local int data=20; //local 은 해당데이터를 해당클래스 내부로만 제한시킴
	task display();
			  $display ("Value of data : %0d",data);
	endtask

	task set (input int data); //local 변수의 값을 변경
			  this.data =data;
	endtask

	function int get (); //local 변수의 값을 반환
			  return data; 
	endfunction
endclass

class second;
	first f1;

	function new();
		f1 = new();
	endfunction

endclass

module tb;
	
	second s;

	initial begin
		s = new();	//생성자
		s.f1.set(123); //first class 의 local 변수 값변경
		$display ("Value of Data : %0d", s.f1.get());
	end
endmodule
