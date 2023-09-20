interface add_if;
	logic [3:0] a;
	logic [3:0] b;
	logic [4:0] sum;
	logic 		clk;
endinterface

class transaction;
	randc bit [3:0] a;
	randc bit [3:0] b;
			bit [4:0] sum;

	function void display();
		$display("a : %0d, b: %0d, sum: %0d",a,b,sum);
	endfunction
endclass

class monitor;   
	mailbox #(transaction) mbx;
	transaction trans;
	virtual add_if aif;

	function new (mailbox #(transaction) mbx);
		this.mbx = mbx;
	endfunction

	task run();
		trans = new();
		forever begin
		repeat (2) @(posedge aif.clk); //2사이클 기다린후 (안정적인 결과를 얻기위해서추가)
			trans.a = aif.a; //Transaction 에 저장
			trans.b = aif.b;
			trans.sum = aif.sum;
			$display ("-----------------------------");
			$display (" Data sent to socreboard");
			trans.display();
			mbx.put(trans); //Mailbox 에 전송
		end
	endtask
endclass

class scoreboard;
	mailbox #(transaction) mbx;
	transaction trans;
   monitor mon;
	function new(mailbox #(transaction) mbx);
		this.mbx =mbx;
	endfunction
	
	task compare (input transaction trans); //a,b 의 값과 Sum의 값이 맞는지 확인 
		if((trans.sum) == (trans.a + trans.b))
				  $display("Sum result matched");
		else
				  $error ("result mismatched");
	endtask

	task run();
		forever begin
			mbx.get(trans);
			$display("Data Receive From Monitor");
			trans.display();
			compare(trans); //compare 함수 지rr정
			#40;
		end	  
	endtask 
endclass

module tb;
	add_if aif();
	add dut (.a(aif.a), .b(aif.b), .sum(aif.sum), .clk(aif.clk));
	mailbox #(transaction) mbx;
	scoreboard sco;
	monitor mon;
	initial begin
		aif.clk = 0;
	end
	
	always #10 aif.clk = ~aif.clk;

	initial begin
		for(int i=0; i < 20; i++)begin
		repeat(2)@(posedge aif.clk); //2사이클 딜레이
			aif.a <= $urandom_range(0,15); //DUT 의 a,b, 포트에 Unsigned 값 0~15 무작위전송
			aif.b <= $urandom_range(0,15);
		end
	end
   
	initial begin 
		mbx = new();
	   sco = new(mbx);
		mon = new(mbx);
		mon.aif= aif;
	end

	initial begin
		fork
			mon.run();
			sco.run();
		join

	end

	initial begin
		$fsdbDumpvars;	//Verdi 디비깅 파일 생성
		#400;
		$finish();
	end
endmodule
