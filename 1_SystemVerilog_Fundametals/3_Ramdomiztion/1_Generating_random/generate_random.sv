class generator;

	randc bit [3:0] a,b; //randc는 반복되는 값이 출력되지 않음
	bit [3:0] y;

endclass	

module tb;
	generator g;
	int i=0;
	

	initial begin

		g =new();
		for(i =0; i<10; i++)begin
		g.randomize(); //Randomize() 메서드 사용하여 객체내 무작위 값 생성
		$display("Value of a :%0d and %0d",g.a, g.b);
		end

	end
endmodule
