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
		<title> 인클루딩 page/ 기본 style 셋팅 </title>
<style type="text/css">
body{
width: 100%;
height: auto;
}
#container{
width: 90%;
height : 800px; 
padding: 5px;
margin: 0px;
box-sizing: border-box;
list-style: none;
text-decoration: none;
font-family: sans-serif;
margin: auto;
text-align: center;
}
		

</style>
</head>
<body>
<!--  JY JY JY   -->
	<!-- WK : 헤더 네비게이션 구현 먼저 해주세요.  -->
	
	
	<jsp:include page="header.jsp"/>
		
		<div id="container">
		<jsp:include page='<%=filePath +".jsp" %>'/>
		</div>

</body>
</html>