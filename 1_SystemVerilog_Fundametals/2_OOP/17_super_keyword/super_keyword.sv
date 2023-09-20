class first;
	int data;

	function new(input int data); //생성자를 정의하기 위한 특별한 함수
		this.data = data;
	endfunction

endclass

class second extends first;
	int temp;

	function new(input int data, input int temp);
		super.new(data); //부모 클래스의 함수에 값 할당 (Super 키워드)
		this.temp = temp;
	endfunction

endclass

module tb;

	second s;

	initial begin
		s = new(67,54);

		$display ("Value of data : %0d , temp : %0d",s.data,s.temp);
	end

endmodule
