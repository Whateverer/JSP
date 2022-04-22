function CheckAddBook(){
	//bookcode
	var bookCode = document.getElementById("bookCode");
	//도서명
	var bookName = document.getElementById("bookName");
	
	var price = document.getElementById("price");
	
	var uniStock = document.getElementById("uniStock");
	
	/*
	도서 아이디가 ISBN으로 시작되고 숫자를 포함하여 문자 길이가 5~12자 인지 검사
	도서명의 문자 길이가 4~12인지 검사
	가격의 문자 길이가 0인지 숫자인지 검사(길이가 0이면 안됨)
	가격이 음수인지 검사(음수이면 안됨)
	재고 수가 숫자인지 검사
	*/
	
	//도서 코드 체크
	if(!check(/^ISBN[0-9]{1,8}$/,bookCode,
		"[도서코드]\nISBN과 숫자를 조합하여 5~12자까지 입력하세요\n첫글자는 반드시 ISBN로 시작하세요")){
		return false;
	}
	
	//도서명 체크
	if(bookName.value.length < 4 || bookName.value.length > 12){
		alert("[도서명]\n최소 4자에서 최대 12자까지 입력하세요");
		bookName.select();
		bookName.focus();
		return false;
	}
	
	//가격 체크
	if(price.value.length == 0 || isNaN(price.value)){
		alert("[가격]\n숫자만 입력해주세요");
		price.select();
		price.focus();
		return false;
	}
	
	if(price.value < 0){
		alert("[가격]\n음수는 입력할 수 없습니다.");
		price.select();
		price.focus();
		return false;
	}
	
	//재고 수 체크
	if(isNaN(uniStock.value)){
		alert("[재고 수]\n숫자만 입력해주세요");
		uniStock.select();
		uniStock.focus
	}
	
	function check(regExp, e, msg){
		//정규식에 맞으면 바로 true를 return
		if(regExp.test(e.value)){
			return true;
		}
		//정규식에 맞지 않으면...
		alert(msg);
		e.select();
		e.focus();
		//form이 submit 되지 않음
		return false;
	}
	//<form name=""...
	document.newBook.submit();
	
}
