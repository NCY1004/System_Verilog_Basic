class generator;
	randc bit [3:0] a;
	rand  bit ce;
	rand  bit rst;

	constraint control_rst{
		rst dist {0:=50, 1:=50};
	};

	constraint control_ce{
		ce dist {1:=50, 0:=50};
	};

   constraint control_rst_ce{
		(rst == 1 ) <-> (ce ==1); //등가 연산 노트의 표참고
	};

endclass

module tb;
	generator g;

	initial begin
		g = new();

		for (int i=0; i<15; i++) begin
			g.randomize();
			if (g.randomize)
					  $display ("Value of rst : %0d and ce :%0d" ,g.rst, g.ce);
			else
					  $display ("Randomization Failed!");
		end
	end
endmodule
