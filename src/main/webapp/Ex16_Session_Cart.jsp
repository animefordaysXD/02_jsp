<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function view_go(){
	location.href = "/02_jsp/Ex16_Controller2";
}
function view_go2(){
	location.href = "/02_jsp/Ex16_Controller3";
}
</script>
</head>
<body>
<h2>장바구니 담기</h2>
<form action="/02_jsp/Ex16_Controller" method="post"> 
   <select name="fruits">
   <option>:: 선택하세요 ::</option>
   <option>딸기</option>
   <option>키위</option>
   <option>망고</option>
   <option>참외</option>
   <option>수박</option>
   </select>
   <br>
   <input type="submit" value="장바구니에 추가">
</form>
<button onclick="view_go()">장바구니 보기</button>
<button onclick="view_go2()">장바구니 비우기</button>
</body>
</html>