class transaction;
	rand bit [3:0] din1;
	rand bit [3:0] din2;
	bit [4:0] dout;

endclass

class generator;
	transaction t;
	mailbox mbx;

	function new (mailbox mbx);	
		this.mbx = mbx;
	endfunction

	task main();
		t = new();	
			for (int i=0; i<10; i++) begin
				t.randomize();
				if (t.randomize)
						  $display (" Data sent : din1 : %0d and din2 : %0d", t.din1, t.din2);
				mbx.put(t); //Mainbox 에 데이터 전송
				#10;
		end
	endtask
endclass


class driver;
	transaction dc;
	mailbox mbx;
	
	function new (mailbox mbx);
      this.mbx = mbx;
   endfunction

	task main();
		forever begin
			mbx.get(dc); //Mailbox 로부터 데이터 수신
			$display(" DATA RCVD : din1 : %0d and din2 : %0d", dc.din1, dc.din2);
      #10;
    end
    endtask
endclass

module tb;
	generator g;
	driver d;
	mailbox mbx;

	initial begin
		mbx = new();
		g = new(mbx);
		d = new(mbx);
		
		fork
			g.main();
			d.main();
		join
	end


endmodule
