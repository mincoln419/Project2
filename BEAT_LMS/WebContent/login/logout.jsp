<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logout page - no view</title>
<script>
	location.href= 'index.lms';
</script>
</head>
<body>
	<% session.invalidate();
		session=request.getSession();
		session.setAttribute("mid","guest");
		session.setAttribute("snum","1");
		
	%>
</body>
</html>