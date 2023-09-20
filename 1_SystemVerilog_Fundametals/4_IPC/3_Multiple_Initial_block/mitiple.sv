module tb;
	int data1,data2;
	event done;

	int i =0;
	
	//generator
	initial begin
		for (i=0; i<10; i++) begin
			data1 = $urandom();	//32비트 Unsigned 랜덤값
			$display ("Data sent : %0d", data1);
			#10;
		end
		-> done; //for문 종료시 done 트리거 발생
	end
	
	//Driver
	initial begin
		forever begin
		#10;
		data2 = data1;
		$display ("Data Receive : %0d", data2);
		end
	end

	initial begin
		wait (done.triggered);
		$finish(); //done 트리거 감지시 시뮬레이션 종료
	end
	
endmodule
