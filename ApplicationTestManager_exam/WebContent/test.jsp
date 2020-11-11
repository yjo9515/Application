<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
function send(){
	
	//$(".ck:not(:checked)").attr("value", "off");
	//$(".ck:checked").attr("value", "on");
	//$(".ck").prop("checked", "true");
	
	var frm = document.getElementById("frm1").submit();	
}
$(document).ready(function(){
	$("#clr").click(function(){
		$("input[type=checkbox]").prop("checked", "false");
		$("input[type=checkbox]").removeAttr("checked");
	});
});
</script>
<link rel="shortcut icon" sizes="128x128" href="favicon.png">
<title>숫자 체크 테스트하기</title>
<style>
@charset "utf-8";
* { margin:0; padding:0; }
body, html { width: 100%; font-family:"돋움", Dotum, sans-serif; }
ul { list-style:none; }
a { text-decoration: none; }

.nav { clear:both; height:28px; background-color: #d0d0d0;  position:relative; }
.nav li { float:left;  }
.nav li a { display:block; color:#000; height: 28px; text-indent:28px; 
	font-weight:500; line-height: 28px; font-size:14px; }
.nav li .sub { display:none; position:absolute; }
.nav li .sub li { clear:both; }
.nav li:hover .sub { display:block; }
.nav li .sub li a { width: 120px; background-color:#eee; }
.nav li .sub li a:hover { background-color: #d8d8d8;} 

.tit { text-align:center; line-height: 100px; font-weight:500; }
.chkgroup { width: 450px; margin:20px auto; }
.chkgroup li { width: 150px; float:left; line-height: 80px; } 
</style>
</head>
<body>
	<nav class="nav">
		<ul>
			<li><a href="">메뉴</a>
				<ul class="sub">
					<li><a href="test.jsp">새로 시작</a></li>
					<li><a onclick="send();">결과보기</a></li>
					<li><a id="clr">취소</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<h4 class="tit">숫자 체크 테스트하기</h4>
	<form class="frm" id="frm1" name="frm1" action="result.jsp" method="get">	
		<ul class="chkgroup">
	<%
		 
		
			for(int j=0;j<9;j++){
	%>
			<li>
				<input type="checkbox" name="chk" id="chk<%=j%>" value="<%=j%>" class="ck"/>
				<label for="chk<%=j%>">chk<%=j%></label>
			</li>		
	<%
				
			}
		
	%>
		</ul>
	</form>
</body>
</html>