/**
 * 
 */

 checkAddProduction = (event) =>{
	 event.preventDefault();
	 const $productId =  document.querySelector('#productId');
	 const $name =  document.querySelector('#name');
	 const $unitPrice =  document.querySelector('#unitPrice');
	 const $unitsInStock =  document.querySelector('#unitsInStock');
	 
	 // 상품 아이디 체크
	 if(!check(/^P[0-9]{4,11}$/, $productId , "[상품코드]\nP와 숫자를 조합해서 5~12자리까지 입력하세요\n첫 글자는 P로 시작해야 합니다.")){
		 return false;
	}
	// 상품명 체크
	if($name.value.length< 4 || $name.value.length>12 ){
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		$name.select();
		$name.focus();
		return false;
	}	 
	// 상품 가격 체크
	if($unitPrice.value.length === 0 || isNaN($unitPrice.value)){
		alert('[가격]\n숫자만 입력하세요');
		$unitPrice.select();
		$unitPrice.focus();
		return false;
	} else if($unitPrice.value<0){
		alert('[가격]\n 음수는 입력할 수 없습니다.');
		$unitPrice.select();
		$unitPrice.focus();
		return false;
	}
	// 재고수
		if($unitsInStock.value.length === 0 || isNaN($unitsInStock.value)){
		alert('[재고수]\n숫자만 입력하세요');
		$unitsInStock.select();
		$unitsInStock.focus();
		return false;
	} else if($unitsInStock.value<0){
		alert('[재고수]\n 음수는 입력할 수 없습니다.');
		$unitsInStock.select();
		$unitsInStock.focus();
		return false;
	}
	document.newProduct.submit();
	
 };

 
/** 
* regExp: 정규 표현식
* e : 검사할 객체
* msg: 경고뮨
*/
 check = (regExp, e, msg ) =>{
	 if(regExp.test(e.value)){
		 return true;
	 }
	 alert(msg);
	 e.select();
	 e.focus();
	 return false;
	 
 }