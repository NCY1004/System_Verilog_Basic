class generator;
	randc bit [3:0] a;
	rand  bit ce;
	rand  bit rst;
	bit result;
	
	constraint control_rst{
		rst dist {0:=80, 1:=20};
	};

	constraint control_ce{
		ce dist {1:=80, 0:=20};
	};

   constraint control_rst_ce{
		(rst == 1 ) -> (ce ==1); //암시적 연산 노트의 표참고 (rst 가 1또는 0일때 ce는 1또는 0출력)
	};

endclass

module tb;
	generator g;

	initial begin
		g = new();

		for (int i=0; i<10; i++) begin
			g.randomize();
			if (g.randomize)
					  $display ("Value of rst : %0d and ce :%0d" ,g.rst, g.ce );
			else
					  $display ("Randomization Failed!");
		end
	end
endmodule
