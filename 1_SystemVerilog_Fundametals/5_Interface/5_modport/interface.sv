`timescale 1ns/100ps
interface add_if;
	logic  [3:0] a;
	logic  [3:0] b;
	logic  [4:0] sum;
	logic        clk;

	modport DRV (input a,b, input sum,clk);	//modport 와 DUT 의 신호 방향이 맞지 않을시 컴파일에러
endinterface

class driver;
	virtual add_if.DRV aif; // class 의 Interface 에도 modport 선언
	

	task run();
		forever begin
			@(posedge aif.clk);
			aif.a <= 2;
			aif.b <= 3;
			$strobe ("Interface Trigger");
		end
	endtask
endclass


module tb;
	add_if aif(); 

	add dut (.a(aif.a), .b(aif.b), .sum(aif.sum), .clk(aif.clk));
	
	driver drv;
	
	initial begin
		aif.clk =0;
	end

	always #10 aif.clk = ~aif.clk;

	initial begin
		drv = new();
	   drv.aif = aif; 
	   drv.run();	
	end

	initial begin
		$fsdbDumpvars;	//Verdi 디비깅 파일 생성
		#100;
		$finish();
	end
	
endmodule


