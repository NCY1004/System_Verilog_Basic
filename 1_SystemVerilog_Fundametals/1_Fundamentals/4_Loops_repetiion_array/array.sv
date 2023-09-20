// Code your testbench here
// or browse Examples
module tb;
  
  int arr[10];///0-9
  int i =0;
 
 
 initial begin
   
   repeat(10) begin //10번 반복
     arr[i] = i;
     i++;
   end
   
   $display("arr : %0p",arr);
   
 end

 
/*
initial begin

	foreach(arr[j]) begin //0---9 //배열요소 반복문
  		arr[j] = 5;
  	$display("%0d", arr[j]);
	end

end
*/

/*
  initial begin
    
    for(i= 0; i< 10; i++) begin //기본 반복문
      arr[i] = i;    
    end
    
    
    $display("arr : %0p", arr);
    
    
  end
 */ 
  
  

  
endmodule
