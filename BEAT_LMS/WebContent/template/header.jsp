<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
$(function(){
	
	<%
	String name= null;
	session=request.getSession();
	if(session.getAttribute("mid")==null){name="Guest";
	}else{
		name=(String)session.getAttribute("mid");
		
	}
	      %>
	$('<span id="welcome"><%=name %>님 환영합니다</span>').appendTo('.logo');
	$('#welcome').css({
		'position':'absolute',
		'left':'500px',
		'top':'120px'
	});
});

</script>

<body>
<div class="container_12">
<%-- 
		<%=session.getAttribute("mid")%> 님의 세션임
		<%=session.getAttribute("snum") %> :권한 확인~ 
		
		<%=session.getCreationTime() %>
		<%=session.getMaxInactiveInterval() %>
		<%=session.toString() %>
 --%>

		<!-- header -->
		<div class="grid_12 logo">
	
			<a href="index.lms"><img alt="logo" src="./imgs/logo.jpg" /></a>
		</div>
		<div class="clear"></div>
			
</body>
</html>