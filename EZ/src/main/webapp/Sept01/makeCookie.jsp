<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr" import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name",URLEncoder.encode("�ֹ���","euc-kr"));
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<title>��Ű ����</title>
</head>
<body>
<%= cookie.getName() %> ��Ű�� �� ="<%= cookie.getValue() %>"
</body>
</html>