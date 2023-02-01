<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html 주석 : 소스가 보임. -->
<%--JSP 주석 : 소스 보기에서 안보임 

   JSP: Java Server Page
   HTML 안에 자바 코드를 사용할 수 있게 만든 스크립트 언어 
   JSP 구성 
   1. 지시어 (디렉티브) : <%@ 지시어 %>
   --> <%@ page %>,<%@ taglib %>,<%@ include %>
   
   2. 스크립트 요소 : HTML안에서 자바코드를 사용할 수 있도록 만드는 요소들
   1)선언부(<%! 내용 %> : 변수 선언이나 메서드 선언할 때 사용 
   2) 스크립트릿 (<% 자바코드 %>) : 자바코드 코딩할때 사용
   3) 표현식 (<%= 내용 %> : 변수값이나 메서드의 결과값을 출력할 때 사용 
   
   
   **주의 사항 : 선언부, 스크립트랩, 표현식은 겹쳐서 (포함해서) 사용 안댐 
   
   1. 지시어 : <%@ page %>,<%@ taglib %>,<%@ include %>
   1) page 지시어 : 보통 해당 문서의 맨 앞에 나온다. 
                  현재 해당 페이지(JSP)에 대한 정보 제공 
                  톰캣이 해당 page 지시어를 보고, 해당 페이지를 어떻게 
                  해석하고 실행할지 판단. (보통은 안고침)
                  
      page 지시어 속성들
      -language : 스크립트 코드에서 사용하는 언어 지정 
      -contentType; 해당 페이지의 문서 타입과 문자셋 지정 
      -인코딩(부호화,암호화) : 정보의 형태를 변환
      -디코딩(복호화)       : 변환된 정보를 원래 형태로 되돌리는 것 
      pageEncoding : 해당 페이지를 변경(UTF-8)
      -session : 세션(저장공간) 사용 여부 (기본: true)	;
      -buffer : 출력에 사용되는 임시 저장공간 (기본 : 8kb)
      -autoFlush : 출력 버퍼가 다 차지 않아도 바로 출력 시켜줌  
      -errorPage : 해당 페이지가 오류를 처리할 수 있는 페이지로 지정 
      -isErrorPage: 해당 페이지가 오류 처리 가능한 페이지면 true 아니면 false
      
      
      2)taglib 지시어 : 해당 페이지에서 사용할 태그 라이브러리를 지정 
                       나중에 EL, JSTL를 사용할 때 필요 
                       
      3)include 지시어 : html의 iframe과 비슷
      현재 페이지에서 특정 영역에 다른 문서를 포함 시킬때 사용
      <%@include file="다른 문서 위치/이름" %>
      **include는 지시어를 사용하는 방법과 액션태그를 사용하는 방법 2가지가 있음
      
      
      
      
      
      
                  

 --%>


</body>
</html>