<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COFFEE BEAN</title>
    <link rel="stylesheet" href="./css/coffee.css">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/admin.css">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
     <script>
   $(document).ready(function(){
	   $('.login').hover(function() {
		   $(this).css("color", "red");
		 }, function(){
		   $(this).css("color", "white");
		 });
   });
  
   </script>
</head>
<body>
<%

String adminID = null;
if(session.getAttribute("adminID") != null){
	
	adminID = (String)session.getAttribute("adminID");
}

	
%>
    <div class="wrap">
        <header class="hd">
            <nav class="tnb">
                <ul class="top_menu">
                    <li>
                                <%
           				 if(adminID == null){
           					 %>
           				 <a href="login.jsp" class="login">로그인</a>
           	 <%
           				 }else {
           					 
           				 
         	   %>
         	       <div class="wrap">
        <header class="hd">
            <nav class="tnb">
                <ul class="top_menu">
                    <li>
         	 <p style="float:right; position:relative; top:7px; right:60px; ">관리자<%=adminID %>님 환영합니다</p>
                  <% }%>
                       
                        
                    </li>
                </ul>
            </nav>
            <nav class="gnb">
                <ul class="bot_menu">
                    <li>
                        <a href="index.jsp"><img src="./img/logo.png" alt=""></a>
                        <a href="" class="mbtn1">BUY ONLINE</a>
                        <a href="">MEMBER'S CLUB</a>
                        <a href="">MENU</a>
                        <a href="">STORE</a>
                        <a href="">THE COFFEE BEAN</a>
                        <a href="">CBTL</a>
                        <a href=""><img src="./img/search.png" alt=""></a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <li id="point_txt">커피</li>
                        <a href="">원두 가이드</a>
                        <a href="">라이트 로스트</a>
                        <a href="">미디엄 로스트</a>
                        <a href="">다크 로스트</a>
                    </ul>
                    <ul>
                        <li id="point_txt">티</li>
                        <a href="">티 가이드</a>
                        <a href="">클래식 티</a>
                        <a href="">허브티</a>
                        <a href="">프룻티</a>
                    </ul>
                    <ul>
                        <li id="point_txt">상품</li>
                        <a href="">소풍커피</a>
                        <a href="">스틱커피</a>
                        <a href="">아이스 텀블러</a>
                        <a href="">보온 텀블러</a>
                        <a href="">머그</a>
                        <a href="">파우더</a>
                        <a href="">푸드</a>
                    </ul>
                    <ul>
                        <li id="point_txt">커피빈 멤버스 클럽</li>
                        <a href="">멤버스 클럽</a>
                        <a href="">커피빈 카드</a>
                    </ul>  
                    <ul>
                        <li id="point_txt">마이 커피빈</li>
                        <a href="">나의 콩/e-쿠폰보기</a>
                        <a href="">나의 커피빈 카드</a>
                        <a href="">커피빈 카드 등록</a>
                        <a href="">분실신고/환불신청</a>
                    </ul>
                    <ul>
                        <li id="point_txt">음료</li>
                        <a href="">티</a>
                        <a href="">티 라떼</a>
                        <a href="">에스프레소 음료</a>
                        <a href="">아이스 블렌디드</a>
                        <a href="">브루드 커피</a>
                        <a href="">커피빈 주스</a>
                        <a href="">기타 제조음료</a>
                    </ul>
                    <ul>
                        <li id="point_txt">푸드</li>
                        <a href="">CBTL가이드</a>
                        <a href="">CBTL서비스</a>
                        <a href="">AS 안내</a>
                        <a href="">AS 신청</a>
                        <a href="">CBTL FAQ</a>
                        <a href="">제품설명서</a>
                        <a href="">기업용 머신  </a>
                    </ul>
                    <ul>
                        <li id="point_txt">상품</li>
                        <a href="">베이커리</a>
                        <a href="">케익</a>
                        <a href="">샌드위치</a>
                        <a href="">기타</a>
                    </ul>
                    <ul>
                        <li id="point_txt">매장찾기</li>
                        <a href="">매장찾기</a>
                    </ul>
                    <ul>
                        <li id="point_txt">커피빈 소식</li>
                        <a href="">새소식</a>
                        <a href="">프로모션</a>
                        <a href="notice.html">공지사항</a>
                        <a href="">QnA</a>
                    </ul>
                    <ul>
                        <li id="point_txt">CBTL</li>
                        <a href="">CBTL가이드</a>
                        <a href="">CBTL서비스</a>
                        <a href="">AS 안내</a>
                        <a href="">AS 신청</a>
                        <a href="">CBTL FAQ</a>
                        <a href="">제품설명서</a>
                        <a href="">기업용 머신  </a>
                    </ul>
                </div>
            </nav>
        </header>