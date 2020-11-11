<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
function send(){
	var frm = document.getElementById("frm1").submit();	
}
$(document).ready(function(){
	$("#clr").click(function(){
		$("input[type=checkbox]").prop("checked", "false");
		//$("input[type=checkbox]").removeAttr("checked");
	});
});
	
	
</script>
<link rel="shortcut icon" sizes="128x128" href="favicon.png">
<title>체크된 숫자 확인하기</title>
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
.chkresult, #result { display:block; width: 450px; margin:20px auto; text-indent:0; text-align:left; } 
#result { overflow:scroll; border:1px solid #ccc; line-height:1.1; }
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
	<h4 class="tit">체크된 숫자 확인하기</h4>
	<%
		request.setCharacterEncoding("UTF-8"); //받아올 데이터의 인코딩	
		String[] arr = request.getParameterValues("chk");
		String[] str = new String[9];

		for(int a=0;a<str.length;a++) {
			str[a] = "false";		
		}

		for (int i = 0; i < arr.length; i++) {
			if(Integer.parseInt(arr[i]) >= 0 && Integer.parseInt(arr[i]) <= 8){
				str[Integer.parseInt(arr[i])] = "true";
			}
			System.out.println(arr[i]);
		}
	%>
	<form class="frm" id="frm2" name="frm2" method="get">	
		<div class="chkresult">
			<textarea cols="100" rows="30" id="result">
	<%
			for(int j=0;j < str.length;j++){
	%>
  <%=j%>:<%=str[j]%>
	<%
			}
	%>
			</textarea>
		</div>
	</form>
</body>
</html>