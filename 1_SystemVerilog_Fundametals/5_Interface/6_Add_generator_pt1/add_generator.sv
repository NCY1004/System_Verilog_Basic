//Transaction시 중요사항
//1. Generator cumtom Constructor에 Transaction Constructor를추가 
//2. Transaction의 Deep Copy를 Generator 와 driver 사이에 전송
class transaction;
	randc bit [3:0] a;
	randc bit [3:0] b;

	function void display ();
		$display (" a : %0d  b : %0d" ,a,b);
	endfunction

	function transaction copy(); //deep copy
		copy = new();
		copy.a = this.a;
		copy.b = this.b;
	endfunction

endclass

class generator;
	transaction trans;
	mailbox #(transaction) mbx;
	int i=0;

	function new(mailbox #(transaction) mbx);
		this.mbx = mbx;
		trans = new();		//Mailbox 를 통해서 객체 생성
	endfunction

	task run();
		for (i=0; i<20; i++) begin
			trans.randomize();
			if (trans.randomize) begin
				  trans.display();
              mbx.put(trans.copy);
				  $display ("Data sent to driver");
			end
 			else
			  	  $display ("Randomize Failed");
		end
	endtask
endclass

module tb;
	generator gen;
	mailbox #(transaction) mbx;

	initial begin
		mbx = new();
		gen= new(mbx);
		gen.run();
	end
endmodule
