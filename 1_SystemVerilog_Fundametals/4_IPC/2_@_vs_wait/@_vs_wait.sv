module tb;

   event event_a;
   
   // Thread1: Triggers the event using "->" operator
   initial begin
    #20 ->event_a;
     $display ("[%0t] Thread1: triggered event_a", $time);
   end
   
   // Thread2: Waits for the event using "@" operator
              // waiting should start before event trigger happen
   initial begin
     $display ("[%0t] Thread2: waiting for trigger ", $time);
     	@(event_a);
     $display ("[%0t] Thread2: received event_a trigger ", $time);
   end
   
   // Thread3: Waits for the event using ".triggered"
   initial begin
     $display ("[%0t] Thread3: waiting for trigger ", $time);
    	 wait(event_a.triggered);
     $display ("[%0t] Thread3: received event_a trigger", $time);
   end
 endmodule


// 최초 실행부터 @연산자 실행, 20ns 이후 에 트리거가 실행후 @연산자는 감지가능 


/*
module tb;
  
  event event_a;
  
  // Thread1: Triggers the event using "->" operator
  initial begin
    #20 ->event_a;
    $display ("[%0t] Thread1: triggered event_a", $time);
  end
  
  // Thread2: Waits for the event using "@" operator
             // waiting should start before event trigger happen
  initial begin
    $display ("[%0t] Thread2: waiting for trigger ", $time);
    #20	@(event_a);
    $display ("[%0t] Thread2: received event_a trigger ", $time);
  end
  
  // Thread3: Waits for the event using ".triggered"
  initial begin
    $display ("[%0t] Thread3: waiting for trigger ", $time);
    #20	wait(event_a.triggered);
    $display ("[%0t] Thread3: received event_a trigger", $time);
  end
endmodule
*/
//@연산자의 경우이벤트가 발생할때까지 기다림, #20 시점에서 Thread1이 이미 트리거 되었으므로 Thread2의 @연산자는 감지를 못함
//Thread3 의 wait 연산자는 조건이 참일때 까지 중단.  wait문은 이미 발생한 trigger도 감지할 수 있으므로 정상적으로 trigger를 감지. 
