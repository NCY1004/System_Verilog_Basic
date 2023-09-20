// trigger : ->
// edge sensitive 감지 @(), level_Sensitive 감지 wait()

module tb;
	event a; //이벤트 선언 


	//Thread 1
	initial begin
		#10;
		-> a; //10ns 일때 a 트리거 발생
	end
	//Thread 2
	initial begin
		//@(a);
		wait (a.triggered);	//a신호발생까지 기다림
		$display ("Receive Event at %0d", $time); // a의 edge 신호 감지시 시간출력

	end
endmodule
