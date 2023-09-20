module tb;
  int arr[$]; //integer 형 queue 생성
  int j;

  initial begin
  	arr = {1,2,3};
	$display("arr:%0p",arr);

	arr.push_front(7); //arr의 맨첫번째 요소에 7 추가
	$display("arr:%0p",arr);
	
	arr.push_back(9); //arr의 맨 마지막 요소에 9 추가 
	$display("arr:%0p",arr);
	
	arr.insert(2,10); //arr의 중간에 2,10 추가
	$display("arr:%0p",arr);

	j = arr.pop_front(); // arr의 맨 첫번째 요소를 j 변수에 이동
	$display("arr:%0p",arr);
	$display("Value of j : %0d", j);

	j = arr.pop_back(); // arr의 맨 마지막 요소를 j 변수에 이동 
	$display("arr:%0p",arr);
	$display("Value of j : %0d", j);
	
	arr.delete(1); // arr의 2번째 요소 삭제 
	$display("arr:%0p",arr);

  end
endmodule
