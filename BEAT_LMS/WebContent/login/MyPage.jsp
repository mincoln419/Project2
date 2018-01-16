<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/join.css">
<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./js/address.js"></script>

<script>
	var errList = [ "pwInputErr", "pwInputReErr", "nameErr",
    			"bDayErr", "genErr", "phoErr", "emErr"];
    var inputList = [ "idInput", "pwInput", "pwInputRe", "userName", "bDay",
    			"gender", "phoneFirst", "email"]; 
    var pwToggle;

	/*  아래부터는 메인*/
	var returnTfCount;
	var datakit="";
	var midlist="";
	var mid;
		$(function() {	
				
		$('#btn button').on('click',function() {				
				
			submitCheck();
			
			var result = false;
			
			if (returnTfCount == 0) {
				result=true;
			}
			
			returnTfCount=0;
			return result;
		});
	});
	
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<form action="join.lms" method="post">
	
			<div id="logo">
				<img alt="logo" src="./imgs/mypagelogo.jpg">
			</div>
			
			
			<div id="id">
				<label for="id">아이디</label> <input type="text" name="mid"
					id="idInput" value="${bean.mid}" />		
		
			</div>
			<div id="pw">
				<label for="password">비밀번호</label> <input type="password" name="mpw"
					id="pwInput" value="${bean.mpw}"/>
				<div id="pwInputErr">암호를 입력해주세요.</div>
			</div>

			<div id="pw2">
				<label for="password2">비밀번호 확인</label> <input type="password"
					id="pwInputRe" name="password2" value='${bean.mpw}' />
				<button type="button" onclick="showPW();">보기</button>
				<div id="pwInputReErr">암호를 확인해주세요.</div>
			</div>
			<div id="name">
				<label for="name">이름</label> <input type="text" id="userName"
					name="name" value="${bean.mname }">
				<div id="nameErr">이름을 입력해주세요.</div>
			</div>
			<div id="birth">
				<label for="birth">생년월일</label> <input type="date" id="bDay"
					name="mbirth" value="${bean.mbirth}"/>
				<div id="bDayErr">생년월일을 입력해주세요.</div>
			</div>
			<div id="number">
				<label for="number">연락처</label> <input type="text" id="phoneFirst"
					name="mphone" value="0${bean.mphone}">
				<div id="phoErr">전화번호를 입력해주세요.</div>
			</div>
			<div id="mail">
				<label for="mail">e_mail</label> <input type="email" name="mmail"
					id="email" value="${bean.mmail}" />
				
			</div>
			<div id="address">
				<label for="address">주소</label> <input type="text" id="postcode" value="${param.maddnum}"
					placeholder="우편번호" name="maddnum" > <input type="button"
					onclick="execDaumPostcode()" value="우편번호 찾기"><br> <input
					type="text" id="roadAddress" placeholder="도로명주소" name="maddress" value="${bean.maddress}"><br>
				<input type="text" id="jibunAddress" placeholder="지번주소"> <span
					id="guide" style="color: #999"></span>
			</div>
			
			<div id="gender">
				<label for="gender">성별</label>
				
			</div>
			<div id="btn">
				<button type="submit" id="jbtn">수정</button>
				<button type="reset" id="cbtn">취소</button>
			</div>
		
		</form>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>