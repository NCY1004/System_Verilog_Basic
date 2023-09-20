class first;
	rand int data;
	constraint data_c {data <20; data > 0;}
endclass

class second;
	rand int data;
	constraint data_c {data > 10; data <20;}
endclass

class main;
	semaphore sem; //여러 프로세스 또는 스레드 사이에서 공유 자원에 대한 접근을 제어. 경쟁 조건(race condition)을 방지

	first f;
	second s;

	int data;
	int i =0;

	task send_first();
		//sem.get(1); // 1번 key semaphore get

		for (i=0; i<10; i++)begin
			f.randomize();
			data = f.data;
			$display ("First aceess Semaphore and data : %0d , time = %0d",f.data, $time);
			#10;
		end

		//sem.put(1); // 상기 반복문 완료후 1번 semaphore put

		$display("Semaphore Unoccupied");
	endtask

	task send_second();
		//sem.get(1); // 1번 key semaphore get (위 send_first가 semaphore put을 해야 get가능)
		for (i=0; i<10; i++) begin
			s.randomize();
			data = s.data;
			$display ("Second access Semaphore and data : %0d, time = %0d",s.data, $time);
			#10;
		end
		//sem.put(1); //// 상기 반복문 완료후 1번 semaphore put
		$display("Semaphore Unoccupied");
	endtask

	task run();
		sem = new(1);
		f = new();
		s = new();

		fork
			send_first();
			send_second();
		join
	endtask
endclass

module tb;
	main m;

	initial begin
		m = new();
		m.run();
	end

	initial begin
		#250;
		$finish();
	end
endmodule
