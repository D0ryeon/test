<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<link href="style.css" rel="stylesheet" type="text/css">

<% 
try{
	if(session.getAttribute("memId")==null){ %>
<script languge="javascript">
function focusIt(){
	document.inform.id.focus();
}

function checkIt(){
	inputForm = eval("document.inform");	
	if(!inputForm.id.value){
		alert("아이디를 입력하세요.");
		inputForm.id.focus();
		return false;
	}
	if(!inputForm.passwd.value){
		alert("비밀번호를 입력하세요.");
		inputForm.passwd.focus();
		return false;
	}
}
</script>
</head>

<body onLoad="focusIt(); bgcolor="<%= bodyback_c %>">
<%}else{%>
<%}
}catch(NullPointerException e){}
%>
</body>
</html>