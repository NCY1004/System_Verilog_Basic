module tb;
	task first();
		$display ("Task 1 start at %0d",$time);
			#20;
		$display ("Task 1 completed at %0d",$time);
	endtask

	task second();
      $display("Task 2 Started at %0t",$time);
      #30;      
     $display("Task 2 Completed at %0t",$time);     
    endtask

	 task third();
      $display("Reached next to Join at %0t",$time);     
    endtask
  
	initial begin
		
	fork		  
		first();
		second();
	join

		third(); //fork join 구문 안의 모든 프로세스 완료후 실행

	end	  
endmodule
