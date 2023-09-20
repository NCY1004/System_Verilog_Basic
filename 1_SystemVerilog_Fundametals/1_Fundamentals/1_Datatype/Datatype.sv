`timescale 1ns/1ps
module tb;
	bit a =1;

	byte b =0; 		//부호있는 8비트
	shortint c =0; //부호있는 16비트
	int d =0; 		//부호있는 32 비트
	longint e =0;	//부호있는 64비트

	bit [7:0] f = 8'b00000000;
	bit [15:0] g = 16'h0000;

	real h =0; //소수점 표시 가능 부호 있는 64비트
	shortreal j = 0; //소수점 표시 가능 부호있는 32비트
   
/////////////////////////////////////////////////////////////////
	byte var1 = -127; //-128 ~ +127
	bit [7:0] var2  =130; // 0 to 255
   time fix_time = 0; // 고정소수점 
	time fix_time2 = 0;
	realtime real_time = 0; // 부동 소수점

	//$time() ->고정소수점 자리 수까지 시뮬레이션 시간 반환
	//$realtime() ->부동 소수점 자리수 까지 시뮬레이션 시간 반환
	
	initial begin
	#12.67
		$display ("value of var1 : %0d", var1);
		$display ("value of var2 : %0d", var2);
		
		fix_time = $time();
		fix_time2 = $realtime();
		real_time = $realtime();

		$display ("value of fix_time : %0t", fix_time);
		$display ("value of fix_time2 : %0t", fix_time2);
		$display ("value of real_time : %0t", real_time);

	end

endmodule
