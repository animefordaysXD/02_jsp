<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL :fmt(국제화) : 숫자와 날짜 포매팅</title>
</head>
<body>
   <h3> 천다위 숫자 처리와 숫자만 받기</h3>
   <h3>
       <li><fmt:formatNumber value="123456.578"></fmt:formatNumber>   </li>
   
   </h3>
   
   <h2>숫자 처리(정수만 구하기)</h2>
   <li><fmt:formatNumber value="123456.789" pattern="#,###"></fmt:formatNumber></li>
   <li><fmt:formatNumber value="123456.567" pattern="#,###"></fmt:formatNumber></li>
   
   
   <h2>반올림 처리(정수만 구하기)</h2>
   <li><fmt:formatNumber value="123456.789" pattern="#,###"></fmt:formatNumber></li>
   <li><fmt:formatNumber value="567123.567" pattern="#,###.#"></fmt:formatNumber></li>
   <li><fmt:formatNumber value="123456" pattern="#,###.#"></fmt:formatNumber></li>
   <li><fmt:formatNumber value="123456" pattern="#,###.0"></fmt:formatNumber></li> 
   
   
   
   
   
   
</body>
</html>