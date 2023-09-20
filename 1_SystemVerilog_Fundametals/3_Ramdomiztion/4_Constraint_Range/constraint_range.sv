class generator;
  
  randc bit [3:0] a, b; ////////////rand or randc 
  bit [3:0] y;
/* 
  constraint data {
  	a inside {[0:8], [10:11],15};	// 랜덤값 범위 지정 0~8, 10,11,15
	b inside {[3:11]};					// 랜덤값 범위 지정 3~11
} 
*/

  constraint data {
	!(a inside {[3:7]}); //제외 시키고 싶은 랜덤값범위 지정 3~7
   !(b inside {[5:9]}); ////제외 시키고 싶은 랜덤값범위 지정 5~9
  }

endclass
 
module tb;
  generator g;
  int i = 0;
  int status = 0;
  
  initial begin
   g = new();
    
    for(i=0;i<15;i++) begin
      
      assert(g.randomize()) 
			else $display("Randomization Failed");
      $display("Value of a :%0d and b: %0d", g.a,g.b);
      #10;
    end
    
  end
  
  
endmodule
