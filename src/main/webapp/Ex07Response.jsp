<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function send_go(){
	location.href = "Ex08_result.jsp";
}
function send_go2(){
	location.href = "Ex08_result.jsp?name=마루치&age=18";
}
</script>
</head>
<body>
	<%-- 
response(응답): response는 응답 정볼르 담는 역할을 한다.
-헤더 정보 입력
-쿠키 정보 전승 
-리다이렉트 : response.sendRedirect("이동할 주소")


==============================================
웹 페이지 이동
1. a태그를 통해서 페이지 이동
<a href="이동할 주소"> text</a>
<a href="이동할 주소?name=value&name=value"> text</a>

2.자바스크립트를 통해서 웹 페이지 이동
-location.href = "아동할 주소"
-location.href = "이동할 주소?name=value&name=value"

-history.go(숫자)


**1.과 2.는 이벤트 처리를 해야만 웹 페이지가 이동 된다.
3. 리다이렉트 : response.sendRedirect("이동할 주소");
             기존의 request와 response 정보는 사라진다.
             새로운 request와 response가 만들어진다. 
             파라미터 정보도 사라진다.
             주소창에는 최종 주소가 보인다.
             
4. 포워드 : request.getRequestDispacher("이동할 주소").forward(request,response);
          기존의 request와 response 정보는 유지한다.
          파라미터 정보가 사라지지 않는다.
          주소창에는 최초 주소가 보인다. 
          
          **3. 과 4.는 이벤트 처리 없이 자동으로 웹 페이지가 이동됨 

 --%>
 
 <%--a 링크 --%>
 <a href="Ex08_result.jsp">
 ex08_result.jsp 이동(파라미터 없음)
 </a>
 <hr>
 <a href="Ex08_result.jsp?name=둘리&age=32">
 ex08_result.jsp?name="둘리"&age="32" 이동(파라미터 있음)
 </a>
 <hr>
 
 <%--자바 스크립를 이용한 페이지 이동 --%>
 <button onclick="send_go()">Ex08>result.jsp 이동(파라미터 없)</button>
 <hr>
  <button onclick="send_go2()">Ex08>result.jsp 이동(파라미터 있)</button>
 <hr>
 
 
 <%--redirect --%>
 <%-- <%response.sendRedirect("Ex08_result.jsp"); %>  --%>
   <%-- <%response.sendRedirect("Ex08_result.jsp?name=hello&age=13"); %> --%>  


<%-- forward --%>

<%-- <%request.getRequestDispatcher("Ex08_result.jsp"); %>--%>
<%-- <%request.getRequestDispatcher("Ex08_result.jsp?name=안녕&age=45"); %> --%>

<%-- form --%>
<form action="Ex08_result.jsp" method="post">
<p>이름 : <input type ="text" name="name" required></p>
<p>나이 : <input type="number" name = "age" required></p>
<input type="submit" value="보내기?">
</form>




</body>
</html>