<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String[] hobby = request.getParameterValues("hobby");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>결과 표시</h2>
    <h3> 
        <ul>
          <li>이름: <%=name %>
          <li>나이: <%=age %>
          <li>성별: <%=gender %>
          <li>취미: <%for(String k : hobby){
        	    out.println(k+ "&nbsp;&nbsp;&nbsp;");
          }%>
        
        </ul>
    
    </h3>

</body>
</html>