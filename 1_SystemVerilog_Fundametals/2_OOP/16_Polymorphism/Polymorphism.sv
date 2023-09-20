class first;  ///부모 클래스
  
  int data = 12;
  
  virtual function void display();
     $display("FIRST : Value of data : %0d", data);
  endfunction
  
 
  
endclass
 
 
class second extends first; //자식 클래스
 
  int temp = 34;
  
  function void add();
    $display("secomd:Value after process : %0d", temp+4);
  endfunction
  
 
  function void display();
    $display("SECOND : Value of data : %0d", data);
  endfunction
 
  
  
  
endclass
 
 
module tb;
  
  first f;
  second s;
  
  
  initial begin
    f = new();
    s = new();
    
    f = s;
    f.display();
    
  end
  
 
  
endmodule
