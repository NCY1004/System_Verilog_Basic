class generator;
  
  randc bit [3:0] raddr, waddr;
  rand bit wr; ///write to mem
  rand bit oe; ///output enable
  
  constraint wr_c {
    wr dist {0:= 50, 1 := 50};
  }
  
  
  constraint oe_c {
    oe dist {1:= 50, 0 := 50};
  }
  
  constraint wr_oe_c {
    ( wr == 1 ) <-> (oe == 0); 
  }
 
  constraint write_read {
    
    if(wr == 1)
    {
      waddr inside {[11:15]};  //제약조건 안의 조건문
      raddr == 0;
    }
      else
      {
      waddr == 0;
      raddr inside {[11:15]};  
      }    
        
  
  }
    
  
endclass
 
module tb;
  
  generator g;
  
  initial begin
    g = new();
    
    for (int i = 0; i<15 ; i++) begin
     if(g.randomize()) 
     		$display("Value of wr : %0b | oe : %0b |  raddr : %0d | waddr : %0d |", g.wr, g.oe,g.raddr, g.waddr);
	  else 
		   $display("Randomization Failed");
    end
    
  end
 
  
endmodule
