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
       액션 태그 : jsp 페이지간에 흐름제어, 자바빈즈 컴포넌트 지원
          사용법 : <jsp : 액션태그>
            ex) <jsp:include page="불러올 파일의 위치"></jsp:include>
            
         1. include : 현재 페이지에서 다른 페이지를 호출 또는 다른 
         페이지의 결과를 현재 페이지에서 보여주는 것
         
            --지시어 include
            <%@include file=""%>"   
            : 다른 페이지 소스 전체를 가져와서 현재 페이지에서 한번에 처리
            파라미터값을 전달 할 수 없다.
            잘 변경되지 않는 정적인 페이지에 많이 사용댐 
            
            - 액션 include 
            <jsp: include page="불러올 파일의 위치"></jsp:include>
            파라미터 전달 가능 <param>액션 사용
            자주 변경되는동적인 페이지에 많이 사용
            <jsp:include page="불러올 파일의 위치">
            <jsp:param value="" name""/>
            </jsp:include>
         
  --%>
<h2>include 지시어 사용하기</h2>
<%@include file="Ex04.jsp" %>
<hr>
<h2>include 액션 사용하기</h2>
<jsp:include page="Ex04.jsp"></jsp:include>
</body>
</html>