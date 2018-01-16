<%@page import="com.beat.Management.model.CounselPageDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/960.css">
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/administration_counselList.css">
<link rel="stylesheet" href="./css/footer.css">
<script>
	 function mouseOver(obj){
		 obj.style.cursor='pointer';
		 obj.style.backgroundColor="#dddddd";
	 }
	 
	 function mouseOut(obj){
		 obj.style.backgroundColor="";
	 }
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>
	<jsp:include page="../template/aside_menu_administration.jsp"></jsp:include>


	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="./imgs/menu_topimg1.jpg">
		<div class="layout">
			<div>
				<img alt="" src="">
			</div>
			<p>
				<b>상담목록</b>
			</p>
			<div id="select">
				<select name="select">
					<option value="">선택</option>
					<option value="1">이름</option>
					<option value="2">아이디</option>
					<option value="2">제목</option>
				</select> <input type="text">
				<button>검색</button>
			</div>
			<div>
				<table class="list">
					<tr>
						<th>이름</th>
						<th>아이디</th>
						<th>로그번호 : 날짜</th>
						<th>연락처</th>
						<th>비고</th>
					</tr>
	<% ArrayList<CounselPageDto> list = (ArrayList<CounselPageDto>)request.getAttribute("list");
	for(CounselPageDto bean : list){
	%>
					<tr onmouseover="mouseOver(this);" onmouseout="mouseOut(this);" onclick="location.href='mngcounsel.lms?counsellog=<%=bean.getCounsellog()%>'">
						<td><%=bean.getMname() %></td>
						<td><%=bean.getMid() %></td>
						<td><%=bean.getCounsellog() %> : <%=bean.getCounseldate() %></td>
						<td>0<%=bean.getMphone() %></td>
						<td></td>
					</tr>
					
<%} %>

				</table>
			</div>
		</div>


	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>