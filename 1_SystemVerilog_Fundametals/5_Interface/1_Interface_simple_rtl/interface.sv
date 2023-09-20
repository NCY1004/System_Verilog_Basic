`timescale 1ns/100ps
interface add_if;
	logic [3:0] a;
	logic [3:0] b;
	logic [4:0] sum;
endinterface


module tb;
	add_if aif(); //베릴로그 DUT 와 연결하기 위해서는 Interface를 Instance 화 해야한다

	//add dut (aif.a, aif.b, aif.sum) //Order by list
	  add dut (.a(aif.a), .b(aif.b), .sum(aif.sum)); //Order by list ->DUT와 Instance 화된 Interface 서로연결

	initial begin
	  aif.a = 4'b0100;
	  aif.b = 4'b0100;
	  #10;
	  aif.a = 4'b0011;
	  #10;
	  aif.b = 4'b0111;
	  #10;
	  $display("a : %b , b : %b and y : %b",aif.a, aif.b, aif.sum);
	end
	
	initial begin
	$fsdbDumpvars;
	#100;
	$finish();
	end
	
endmodule

