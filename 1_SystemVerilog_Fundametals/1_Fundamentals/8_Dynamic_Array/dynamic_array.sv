module tb;
	int arr []; //배열 크기를 지정 X
	int farr[30];
	initial begin 
	
	arr = new [5]; //매서드 를 생성하여 배열 크기 생성
	
	for (int i=0; i<5; i++) begin
		arr[i] = 5*i;
	end


	//arr = new[30];	//배열크기 증가 (기존데이터 삭제)
	arr = new[30](arr); // 배열크기 증가 (기존데이터 유지)
	$display ("arr : %p", arr);
	farr = arr; //배열복사 (배열 끼리 크기가 같지 않으면 컴파일오류)
	$display ("farr : %p", farr);







/*	
	arr.delete();	//arr 매서드 삭제

	for (int i=0; i<5; i++) begin
   	arr[i] = 5*i;
	end

	$display ("arr : %p", arr);
	*/
end
endmodule
