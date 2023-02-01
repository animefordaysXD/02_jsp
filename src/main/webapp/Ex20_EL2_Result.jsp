<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>EL를 이용한 파라미터값 출력</h2>
<h3>
    <ul>
    <li> 이름 : ${name} </li>
    <li> 나이 : ${age} </li>
    <li> 성별 : ${gender} </li>
    <li> 취미 : ${hobby} </li>
    <hr>
    
    <!-- 잘 사용 안함(JSTL에서 별도로 배움) -->
    <li>취미 : ${hobby[0] };</li>
    <li>취미 : ${hobby[1] };</li>
    <li>취미 : ${hobby[2] };</li>
    <li>취미 : ${hobby[3] };</li>
    
    
   
    
    </ul>


</h3>
</body>
</html>