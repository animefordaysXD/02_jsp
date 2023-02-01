<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--스크립트 요소 : HTML안에서 자바코드를 사용할 수 있도록 만드는 요소들
   1)선언부(<%! 내용 %> : 변수 선언이나 메서드 선언할 때 사용 
   2) 스크립트릿 (<% 자바코드 %>) : 자바코드 코딩할때 사용
   3) 표현식 (<%= 내용 %> : 변수값이나 메서드의 결과값을 출력할 때 사용
   **주의** 선언부, 스크립트릿, 표현식은 겹쳐서(포함해서) 사용 안댐 --%>
   <h3> 0-10까지 자바의 for문을 사용해서 출력하자 </h3>
   <% for(int i=0;i<11;i++){%>
	  <%= i %>
  <%} %> 

  
  <hr>
  <h3>0-10까지 자바의 for문을 사용해서 출력하자</h3>
    <% for(int i=0;i<11;i++){
	  out.println(i);
  } %> 
<hr>
 <h3>0-10까지 합을 자바의 for문을 사용해서 출력하자</h3>
 <%! int a= 0; %>
   <% for(int i=0;i<11;i++){
	  
	  a+=i;
  } %> 
   <h3>결과: <%=a %></h3>
   <hr>
   
   <h3>0-10까지 합을 자바의 for문을 사용해서 출력하자</h3>
   <%! int a1= 0; %>
   <% for(int i=0;i<11;i++){
	  
	  a1+=i;
  } 
   out.println("<h3>" + a1 + "</h3>");
  %> 
  <hr>
   
   <h3>0-10까지 합을 자바의 for문을 사용해서 출력하자</h3>
   <%! int a2= 0; %>
   <% for(int i=0;i<11;i++){
	  
	  a2+=i;
  } 
  %> 
   <h3>결과 + <%out.println(a2); %> </h3>
   <hr>
   <h2>변수와 메서드를 만들어서 사용하자</h2>
   <%! public int add(int s1,int s2){return s1+s2;} 
   int res = 0;
   public void sub(int s1, int s2){
	   res = s1-s2;
   }
   %>
   <p>7+5 = <%= add(7,5) %></p>
   <% sub(7,5); %>
  <p>7+5 =<%=res %> </p>
  <hr>
  <h3>오늘의 운수 출력하기</h3>
  <hr>
  <%!
  Calendar now = Calendar.getInstance();
  int year = now.get(Calendar.YEAR);
	int month= now.get(Calendar.MONTH)+1;
	int day = now.get(Calendar.DATE);
	int lucky = (int)(Math.random()*101);
	String msg = year+". " + month+". " +day;
  %>
  
 <p><%=msg%>의 운세는 <%=lucky%>%입니다.</p>
  
</body>
</html>