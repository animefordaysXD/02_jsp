<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
      pageContext.setAttribute("name","홍길동");
      request.setAttribute("name","일지매");
      session.setAttribute("name","임꺽정");
      application.setAttribute("name","둘리");
%>

    <h2> pageContext : <%=pageContext.getAttribute("name") %></h2>
    <h2> request : <%=request.getAttribute("name") %></h2>
    <h2> session : <%=session.getAttribute("name") %></h2>
    <h2> application : <%=application.getAttribute("name") %></h2>
    <hr>
    
    
    <h2> EL로 호출하기 </h2>
    <!-- 우선 순위 : pageContext > Request > Session > Application -->
    <h2>일반적인 호출 : ${"name"}</h2>
    <h2> pageContext : ${pageScope.name }</h2>
    <h2> request : ${requestScope.name }</h2>
    <h2> session : ${sessionScope.name }</h2>
    <h2> application : ${applicationScope.name }</h2>
    <hr>
    
    
</body>
</html>





