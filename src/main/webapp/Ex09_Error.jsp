<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   errorPage="Ex10_Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어: error ㅊ처리</title>
</head>
<body>
    <h2>에러 처리</h2>
     age: <%=Integer.parseInt(request.getParameter("age")) %>
   

</body>
</html>