<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 결과 페이지 </h2>
	<%
	   // 컨트롤러에서 페이지이동을 리다이렉트로 해서 request 정보가 사라짐
	   // request.getAttribute("logchk")가 null 되서 오류 발생
		String res = (String)request.getAttribute("logchk");
	    if(res.equals("1")){
	    	out.println("<h2> 로그인 성공 </h2>");
	    }else if(res.equals("0")){%>
	    	//out.println("<h2> 로그인 실패 </h2>");
	    	<script type="text/javascript">
	    	alert("로그인 실패");
	    	location.href = "Ex11_RequestInput.jsp";
	    	</script>
	   <% }%>
	
	
</body>
</html>