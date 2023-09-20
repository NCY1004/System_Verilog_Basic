class generator;
	int data = 12;
	mailbox mbx;

	function new (mailbox mbx);
		this.mbx = mbx;
	endfunction

	task run();
		mbx.put(data); //Mailbox 데이터 전송
		$display ("[GEN] : Data Send from Gen : %0d" ,data);
	endtask
endclass

class driver;
	mailbox mbx;
	int data;
	
	function new (mailbox mbx);
		this.mbx = mbx;
	endfunction

	task run();
		mbx.get(data); //Mailbox 데이터 수신
		$display("[DRV] : DATA receive : %0d", data);
	endtask
endclass

module tb;
	generator gen;
	driver drv;
	mailbox mbx;

	initial begin
	   mbx= new();
		gen = new(mbx);
		drv = new(mbx);
		
		//gen.mbx = mbx;	// class 안에 function new 생성자 선언시 해당 구문은 필요X
		//drv.mbx = mbx;

		gen.run();
		drv.run();
	end
endmodule
