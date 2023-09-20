class first;
	reg [2:0] data;
        reg [1:0] data2;

//	bit [2:0] data;
//	bit [1:0] data2;
endclass




module tb;
	first f;
	
	initial begin
		f=new(); // 생성자추가 (데이터멤버에대한 메모리할당)
		f.data = 3'b010;
		f.data2 = 2'b10;
		f = null; // 생성자 삭제 (객체삭제)
		#1;
		$display("value of data : %0d and data2: %0d", f.data, f.data2);
	end
endmodule
