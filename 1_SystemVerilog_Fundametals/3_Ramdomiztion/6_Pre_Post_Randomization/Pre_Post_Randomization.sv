//pre-randomize
//post-randomize
 
 
class generator;
  
  randc bit [3:0] a,b; 
  bit [3:0] y;
  
  int min;
  int max;
  
  function new(input int min_val, input int max_val); //pre-randomize
 	 this.min = min_val;
  	 this.max = max_val;  
  endfunction
  
  constraint data {
    a inside {[min:max]};
    b inside {[min:max]};
  }
  
  function void post_randomize(); //post-randomize
    $display("Value of a :%0d and b: %0d", a,b);
  endfunction
   
  
  
endclass
 
 
module tb;
  
  int i =0;
  generator g;
  
  initial begin
    g = new(3,8); //객체생성시 인수 값전달 
    
    for(i = 0; i<10;i++)begin
      g.randomize();
      #10;
    end
    
  end
  
  
endmodule
