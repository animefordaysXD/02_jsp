<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
JSP 내장객체 : JSP에서 사용할 수 있도록 지원하는 객체를 말함
request, response, out, page, pageContext,session,application,config
,exception

out은 화면(브라우저)에 출력할때 사용 
out은 태그도 사용 가능
 --%>
 <h2>Hello JSP</h2>
 <hr>
 <%out.print("<h2> Hello World<h2>"); %>
 <hr>
 <%!String str = "<h2> Hello World<h2>"; %>
 <hr>
 <%=str %>
</body>
</html>