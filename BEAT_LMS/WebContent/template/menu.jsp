<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>
<!-- menu 
직원/일반 동일 JSP 사용 메뉴 => about us/Notice
직원/일반 상이 JSP 사용 메뉴 => contact us / lecture~administration

-->

<!-- ABOUT US 공통메뉴 -->
      <div class="menu">
      <div class="grid_2">&nbsp;</div> <!--빈칸-->
         <div class="grid_2">
         <ul>
            <li><a href="aboutus.lms">&nbsp;ABOUT US&nbsp;</a>
               <ul>
                  <li><a href="aboutus.lms">조직도</a></li>
                  <li><a href="aboutus.lms">강사소개</a></li>
                  <li><a href="aboutus.lms">약력</a></li>
               </ul>
            </li>
         </ul>
         </div>
         

<!-- 로그인 안했을 때 메뉴 선택 시 로그인 화면으로 처리 -->         
<% if(session.getAttribute("snum")==null) { %>
      <div class="grid_2">
         <ul>
            <li><a href="login.lms">CONTACT US</a>
               <ul>
                  <li><a href="login.lms">상담신청</a></li>
                  <li><a href="login.lms">질문사항</a></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="grid_2">
         <ul>
            <li><a href="login.lms">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOTICE&nbsp;</a>
               <ul>
                  <li><a href="login.lms">학사공지</a></li>
                  <li><a href="login.lms">일반공지</a></li>
               </ul></li>
         </ul>
      </div>
      <div class="grid_2">
         <ul>
            <li><a href="login.lms">LECTURE</a>
               <ul>
                  <li><a href="login.lms">강의소개</a></li>
                  <li><a href="login.lms">수강강의</a></li>
               </ul></li>
         </ul>
      </div>

      <%
}else if(session.getAttribute("snum").equals("1")){
	%>
	  <div class="grid_2">
         <ul>
            <li><a href="login.lms">CONTACT US</a>
               <ul>
                  <li><a href="contactus.lms">상담신청</a></li>
                  <li><a href="qna.lms?page=1">질문사항</a></li>
               </ul>
            </li>
         </ul>
      </div>
      <div class="grid_2">
         <ul>
            <li><a href="notice.lms">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOTICE&nbsp;</a>
               <ul>
                  <li><a href="notice.lms">학사공지</a></li>
                  <li><a href="notice_general.lms">일반공지</a></li>
               </ul></li>
         </ul>
      </div>
      <div class="grid_2">
         <ul>
            <li><a href="lecture.lms">LECTURE</a>
               <ul>
                  <li><a href="lecture.lms">강의소개</a></li>
                  <li><a href="myLecture.lms">수강강의</a></li>
               </ul></li>
         </ul>
      </div>
	<%	
}else if(session.getAttribute("snum").equals("2")){ //직원이면~ 
   %>
      <div class="grid_2">
         <ul>
            <li><a href="contactus.lms">CONTACT US</a>
               <ul>
                  <li><a href="contactus.lms">상담신청</a></li>
                  <li><a href="qna.lms?page=1">질문사항</a></li>
               </ul>
            </li>
         </ul>
         </div>
         
                  <div class="grid_2">
         <ul>
            <li><a href="notice.lms">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOTICE&nbsp;</a>
               <ul>
                  <li><a href="notice.lms">학사공지</a></li>
                  <li><a href="notice_general.lms">일반공지</a></li>
               </ul>
            </li>
         </ul>
         </div>
 
      <div class="grid_2">
         <ul>
            <li><a href="mnglist.lms">ADMINISTRATION</a>
               <ul>
                  <li><a href="mnglist.lms">회원관리</a></li>
                  <li><a href="adminLecture.lms">강의관리</a></li>
                  <li><a href="adminCousel.lms">상담관리</a></li>
                  <li><a href="student.lms">수강생관리</a></li>
               </ul>
            </li>
         </ul>
         </div>
      
   <%
   } 
   %>         
         <div class="grid_2">&nbsp;</div> <!--빈칸-->


      </div>
      <div class="clear"></div>
</body>
</html>