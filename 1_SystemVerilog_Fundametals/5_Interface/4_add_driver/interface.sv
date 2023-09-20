`timescale 1ns/100ps
interface add_if;
	logic  [3:0] a;
	logic  [3:0] b;
	logic  [4:0] sum;
	logic        clk;
endinterface

class driver;
	virtual add_if aif; //Class 는 SW 개념이므로 HW 인 DUT와 연결을 위해서는 Virtual로 선언

	task run();
		forever begin
			@(posedge aif.clk); //Posedge 일떄 신호 발생
			aif.a <= 2;
			aif.b <= 3;
			$strobe ("Interface Trigger");
		end
	endtask
endclass


module tb;
	add_if aif(); //베릴로그 DUT 와 연결하기 위해서는 Interface를 Instance 화 해야한다

	add dut (.a(aif.a), .b(aif.b), .sum(aif.sum), .clk(aif.clk));
	
	driver drv;
	
	initial begin
		aif.clk =0;
	end

	always #10 aif.clk = ~aif.clk;

	initial begin
		drv = new();
	   drv.aif = aif; //테스트 벤치 인터페이스와 Class 인터페이스 연결
	   drv.run();	
	end

	initial begin
		$fsdbDumpvars;	//Verdi 디비깅 파일 생성
		#100;
		$finish();
	end
	
endmodule


