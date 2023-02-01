<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시어와 include 액션태그</title>
</head>
<body>
<%request.setAttribute("logchk", "1"); %>
<%@ include file="Ex12_Request_Result.jsp" %>
<hr>
<jsp:include page="Ex12_Request_Result.jsp">
<jsp:param value="logchk" name="1"></jsp:param>
</jsp:include>
</body>
</html>