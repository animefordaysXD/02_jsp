<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
    1. 라이브러리 다운받아서 해당 프로젝트에 넣기(tomcat apache)
    2. 다운받은 라이브러리를 WEB-INF안에 lib 폴더에 넣기
    3. 지시어 중 taglib를 선언하고 사용
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 core(코어)사용법: <c:명령어>
 fmt(국제화=숫자,날짜 사용) 사용법: <fmt:명령어>
 
 --%>
 <%--변수 생성 및 데이터 저장 --%>
 
 <%--변수 생성(set): <c:set var="변수명" value=""/> --%>
 <c:set var="str" value="hi mum!"/>
 
 <%-- 변수 출력(out) : <c:out value=출력할 데이터를 EL로 표시"/> --%>
 <c:out value="str"/> <!-- str -->
 <c:out value="${str }"/> <!-- hi mum! -->
 ${str } <!--hi mum! -->

<hr>
<!-- 밑에 아무것도 출력 안댐 -->
<c:remove var="str"/> 
<c:out value="${str }"/>
${str }

<%--if문: else가 없음, 조건식이 참일때만 실행 --%>

<c:if test="${4>3 }" >
<h3>Hello mum</h3>
</c:if>
 <c:if test="${4<3 }" >
<h3>Goodbye mum</h3>
</c:if>






<%--  if문은 else가 없어서 불편하기에 choose문 사용ㅁ(switch case
랑 비슷함) 

<c:choose>
<c:when test="조건식">참일때 실행</c:when>
<c:when test="조건식">참일때 실행</c:when>
<c:when test="조건식">참일때 실행</c:when>
<c:otherwise>default일때 실행</c:otherwise>
</c:choose>
--%>


<c:set var="avg" value="89"/>
<c:choose>
<c:when test="${ avg>80}"><h3>합격</h3></c:when>
<c:when test=""></c:when>
<c:when test=""></c:when>
<c:otherwise><h3>불합격</h3></c:otherwise>
</c:choose>

<c:set var="score" value="69"/>
<c:choose>
<c:when test="${ score>90}"><h3>A 학점</h3></c:when>
<c:when test="${ score>80}"><h3>B 학점</h3></c:when>
<c:when test="${ score>70}"><h3>C 학점</h3></c:when>
<c:otherwise><h3>F 학점</h3></c:otherwise>
</c:choose>

<%-- for문
          1. 일반적인 for 문
          <c: forEach begin ="시작값" end ="끝값" step="증가/감소단계"
          var="변수이름" varStatus="인덱스값/>
          
          2.개선된 for 문
          
          


 --%>
<h3>1-10까지 출력</h3>
<c:forEach begin="1" end="10" step="1" var="num" varStatus="vs">
${vs.index } : ${vs.count } : ${num} : ${vs.first } : ${vs.last }<br>
</c:forEach>
<!-- 1 : 1 : 1 : true : false
2 : 2 : 2 : false : false
3 : 3 : 3 : false : false
4 : 4 : 4 : false : false
5 : 5 : 5 : false : false
6 : 6 : 6 : false : false
7 : 7 : 7 : false : false
8 : 8 : 8 : false : false
9 : 9 : 9 : false : false
10 : 10 : 10 : false : true -->
<c:forEach begin="10" end="20" step="1" var="num" varStatus="vs">
<c:if test="${num%2==0 }"><p>${num }</p><br></c:if>
</c:forEach>

<%-- 배열 생성  --%>
<c:set var="arr_1" value="홍길동,장길산,임꺽정,일지매"/>
<c:forEach var="k" items="${arr_1 }">
<h4>${k }님</h4>
</c:forEach>
<hr>

<%--반복해서 나누기 --%>
<c:set var="arr_2" value="홍길동,장길산,임꺽정/일지매,둘리,희둥이/고길동"/>
<c:forTokens items="${arr_2}" delims="," var="k"> 
<h4>${k }님</h4>

</c:forTokens>
<hr>
<c:set var="arr_2" value="홍길동,장길산,임꺽정/일지매,둘리,희둥이/고길동"/>
<c:forTokens items="${arr_2}" delims="/" var="k"> 
<h4>${k }님</h4>

</c:forTokens>
<hr>
<c:set var="arr_2" value="홍길동,장길산,임꺽정/일지매,둘리,희둥이/고길동"/>
<c:forTokens items="${arr_2}" delims=", /" var="k"> 
<h4>${k }님</h4>

</c:forTokens>
 




</body>
</html>