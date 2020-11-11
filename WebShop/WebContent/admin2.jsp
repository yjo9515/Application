<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prafix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prafix="fmt" %> --%>
<%@ include file="admin_header.jsp" %>

  <div class="contents" id="con">
        <nav class="menu">
        <ul class="gnb2">
        	<li><a href="memberList.jsp" class="login">회원관리</a></li>
        	<li><a href="boardList.jsp" class="login">게시판관리</a></li>
        	<li><a href="salesList.jsp" class="login">판매관리</a></li>
        	<li><a href="purchaseList.jsp" class="login">구매관리</a></li>
        	<li> <a href="sendSns.jsp" class="login">고객문자발송</a></li>
        	<li><a href="admin_edit.jsp">관리자 정보 수정</a></li>
        </ul>
        <br>
        <br>
        <br>
        <h3 class="menude">관리할 메뉴를 선택해주세요</h3>
        
        
        
        
        </nav>
        </div>
  <%@ include file="admin_footer.jsp" %>