class first;
	rand bit [1:0] var1;
	rand bit [1:0] var2;
	
	constraint data {
		var1 dist {0 := 30, [1:3] := 90 }; // 0= 30/300, 1,2,3= 90/300 ->같은 가중치 값을 가짐
		var2 dist {0 :/ 30, [1:3] :/ 90 }; // 0,1,2,3 = 30/120 -> [1:3] 의 경우는 각각 1개당 30의 가중치 값을 가짐	
	};

endclass

module tb;
	first f;

	initial begin
		f = new();

		for (int i=0; i<15; i++) begin
			f.randomize();
			$display ("Value var1(:=) : %0d and var2(:/) : %0d",f.var1 , f.var2);
		end
	end
endmodule
