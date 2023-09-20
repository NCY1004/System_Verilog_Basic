module tb;

   bit [4:0] res = 0;
   bit [4:0] ain = 4'b0100;
   bit [3:0] bin = 4'b0010;

function bit [4:0] add();
	return ain + bin;
endfunction

/*
  function bit [4:0] add(input bit [3:0] a,b);	//bit [4:0] 는 이벤트 데이터 크기
    return a + b;
  endfunction

  bit [4:0] res = 0;
  bit [4:0] ain = 4'b0100;
  bit [3:0] bin = 4'b0010;
*/

function void display_ain_bin();
   #10;
	$display("value of ain : %0d and bin : %0d", ain,bin);
endfunction


  initial begin
   // res = add ();
    //$display ("Value of addtion : %0d", res);
	display_ain_bin();
  end

endmodule
	
