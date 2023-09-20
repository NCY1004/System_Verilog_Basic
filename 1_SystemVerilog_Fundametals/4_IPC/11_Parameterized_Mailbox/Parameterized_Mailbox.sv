class transaction;
	
	bit [7:0] data;

endclass

class generator;
	int data =12;

	transaction t;

	mailbox #(transaction) mbx;  //mailbox가 어떤 데이터 타입을 처리할 수 있는지를 지정
											//즉 trasnsaction 클래스안의 datatype 을 처리 할수 있음

	bit [7:0] temp =3;

	function new (mailbox #(transaction) mbx);
		this.mbx = mbx;
	endfunction

	task run();

		t = new(); //객체생성
		t.data = 45;
		mbx.put(temp); //trasnsaction 클래스가 아닌 다른 datatype 을 mailbox 에 put시 컴파일에러
		$display ("Data Send from gen : %0d",t.data);
	endtask
endclass

class driver;
	mailbox #(transaction) mbx;
	transaction data;

	function new (mailbox #(transaction) mbx);
		this.mbx = mbx; 
	endfunction

	task run();
			  mbx.get(data); //Mailbox 클래스의 객체를 생성하지 않아도 엑세스를 할수 있음
			  $display ("DATA Receive : %0d",data.data);
	endtask
endclass

module tb;
	generator gen;
	driver drv;
	mailbox #(transaction) mbx;

	initial begin
		mbx = new();
		gen = new(mbx);
		drv = new(mbx);

		gen.run();
		drv.run();
	
	end
endmodule
