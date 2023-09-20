`timescale 1ns / 1ps
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

	function transaction copy(); //mailbox 에 변수 하나씩 넣으면 코드가 길어지므로 hardcopy 함수로 만듬
		copy = new();
		copy.a = this.a;
		copy.b = this.b;
		
	endfunction
endclass

class generator;
	mailbox #(transaction) mbx;
   transaction trans;
 	event done;	
	event send;
		
	function new (mailbox #(transaction) mbx);
        this.mbx = mbx;
		  trans = new();
   endfunction
   
	int i =0;
	task run();
		for (i=0; i<40; i++) begin
			trans.randomize();
			if (trans.randomize) begin
			   $display ("------------------------------>Random Start!!");
				$display ("Random Generate Complete!");
				mbx.put(trans.copy);
	 			->send; // 랜덤값 생성및 메일박스 전송시 Send 이벤트 발생
		   end
	   	#40;
		end
		->done;
	endtask
endclass

class driver;
    mailbox #(transaction) mbx;
    transaction trans;
 	 virtual add_if aif;   
	 
	 event send_done;
    function new (mailbox #(transaction) mbx);
 	   this.mbx = mbx;
      trans = new();
    endfunction

	task run();
	 forever begin
			 repeat (2)  @(posedge aif.clk); // 2클럭 기다린후 데이터 전송
	 		  		mbx.get (trans);
	   	  		aif.a <= trans.a;
			  		aif.b <= trans.b;
		  	  		$display ("Random data sent to DUT");
		     		$display ("--------------Send Complete--------------");
			  		->send_done;
	 end
	endtask
endclass

class monitor;   
	mailbox #(transaction) mbx;
	transaction trans;
	virtual add_if aif;
   
	event receive;

	function new (mailbox #(transaction) mbx);
		this.mbx = mbx;
	endfunction

	task run();
		trans = new();
		forever begin
				repeat (2) @(posedge aif.clk); 	//  2클럭 기다린후  Data Receive
					trans.a = aif.a; //Transaction 에 저장
					trans.b = aif.b;
					trans.sum = aif.sum;
					$display ("Data sent to socreboard => a :%0d, b:%0d, sum: %0d" ,trans.a, trans.b, trans.sum);
					//trans.display();
					if((trans.sum) == (trans.a + trans.b))
       	        $display("Sum result matched => a: %0d, b: %0d, sum: %0d" ,trans.a, trans.b, trans.sum);
		         else
        	        $error ("result mismatched=> a: %0d, b: %0d, sum: %0d" ,trans.a, trans.b, trans.sum);

					mbx.put(trans); //Mailbox 에 전송
					$display ("--------------Send Receive Complete!--------------");

		end
	endtask
endclass
/*
class scoreboard;
	mailbox #(transaction) mbx;
	transaction trans;
   monitor mon;
	function new(mailbox #(transaction) mbx);
		this.mbx =mbx;
	endfunction
	
	task compare (input transaction trans); //a,b 의 값과 Sum의 값이 맞는지 확인 
		if((trans.sum) == (trans.a + trans.b))
				  $display("Sum result matched => a: %0d, b: %0d, sum: %0d" ,trans.a, trans.b, trans.sum);
		else
				  $error ("result mismatched=> a: %0d, b: %0d, sum: %0d" ,trans.a, trans.b, trans.sum);
	endtask

	task run();
			forever begin
				mbx.get(trans);
				$display("Data Receive From Monitor");
				compare(trans); //compare 함수 지정
			end
	endtask 
endclass
*/
module tb;
	add_if aif();
	add dut (.a(aif.a), .b(aif.b), .sum(aif.sum), .clk(aif.clk));
	mailbox #(transaction) mbx;
	
	generator gen;
	driver drv;
	//scoreboard sco;
	monitor mon;

	event done;
	event send;
	event send_done;
	event receive;
	initial begin
		aif.clk = 0;
	end
	
	always #10 aif.clk = ~aif.clk;

	initial begin 
		mbx = new();
		gen = new(mbx);
		drv = new(mbx);
	   //sco = new(mbx);
		mon = new(mbx);

		drv.aif = aif;
		mon.aif = aif;

		done = gen.done;
		send = gen.send;
		send_done = drv.send_done;
		receive = mon.receive;
	end

	initial begin
		fork
			gen.run();
			//mon.run();
         //sco.run();
		wait(send.triggered); //generator 에서 send 이벤트 발생시 Drive Task 실행
			drv.run();
		wait(send_done.triggered);
			mon.run();
	//	wait(receive.triggered);
         //sco.run();

 		join_none
			wait(done.triggered);
			$finish();
	end

	initial begin
		$fsdbDumpvars;	//Verdi 디비깅 파일 생성
		#600;
		$finish();
	end
endmodule
