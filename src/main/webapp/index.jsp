<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String filePath=	request.getParameter("filePath");
    if ( filePath == null)
    	filePath= "home";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title> </title>
</head>
<body>
<!-- 	마지막 테스트   -->
	<!-- WK : 헤더 네비게이션 구현 먼저 해주세요.  -->
	<jsp:include page=""/>

		<jsp:include page='<%=filePath +".jsp" %>'/>


</body>
</html>