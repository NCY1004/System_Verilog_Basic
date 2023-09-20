class first;
	int data1;
	bit [7:0] data2;
	shortint data3;

	function new(input int data1 = 0, input bit[7:0] data2 = 8'h00, input shortint data3 =0);
		this.data1 = data1; //this 클래스 내부 Function new 안에 사용되고 클래스안의 객체 자체를 가리키는 포인터
		this.data2 = data2;
		this.data3 = data3;
   endfunction

	task display();
		$display ("Value if data1 :%0d, data2 : %0d, data3 : %0d", data1, data2, data3);
	endtask
endclass

module tb;
	first f1;

	initial begin
		//f1 = new(23,,35);
		  f1 = new(.data2(4), .data3(5), .data1(23));
		  f1.display(); //클래스 안의 task 호출
	end
endmodule
