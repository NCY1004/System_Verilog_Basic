class generator;
	int data = 12;
	mailbox mbx;

	task run();
		mbx.put(data); //Mailbox 데이터 전송
		$display ("[GEN] :Data Send from Gen : %0d" ,data);
	endtask
endclass

class driver;
	mailbox mbx;
	int data;

	task run();
		mbx.get(data); //Mailbox 데이터 수신
		$display("[DRV] : DATA rcvd : %0d", data);
	endtask
endclass

module tb;
	generator gen;
	driver drv;
	mailbox mbx;

	initial begin
		gen = new();
		drv = new();
		mbx= new();
		
		gen.mbx = mbx;	// genarator 클래스 와 driver 클래스 사이에 작동하는 mailbox 선언
		drv.mbx = mbx;

		gen.run();
		drv.run();
	end
endmodule
