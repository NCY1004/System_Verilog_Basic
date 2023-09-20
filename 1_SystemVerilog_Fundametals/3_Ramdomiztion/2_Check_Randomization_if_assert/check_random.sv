class generator;

	randc bit [3:0] a,b; //randc는 반복되는 값이 출력되지 않음
	bit [3:0] y;
	constraint data {a > 10;}
									
								
endclass	

module tb;
	generator g;
	int i=0;
	

	initial begin

		g =new();

		for(i =0; i<10; i++)begin
				  
		assert(g.randomize()) //Randomize 매서드가 정상적으로 호출되면 아래문장출력
										//assert 문
			$display("Randomaztion is sucess! Value of a :%0d and %0d",g.a, g.b);
		
 		else  //Randomize 매서드가 정상적으로 호출되지 않으면 아래 문장 출력
			$display ("Randomization is failed Value of a :%0d and %0d",g.a, g.b);
		end

	end
endmodule
