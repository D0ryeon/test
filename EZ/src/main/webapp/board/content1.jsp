<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="logon.CommentDataBean" %>
<%@ page import="logon.CommentDBBean" %>
<%@ page import="logon.BoardDataBean" %>
<%@ page import="logon.BoardDBBean" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="color.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
function writeSave(){
	if(document.comment.commentt.value==""){
		alert("작성자를 입력하십시오.");
		document.comment.commentt.focus();
		return false;
	}
}
</script>
</head>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	String pageNum=request.getParameter("pageNum");
	int pageSize=10;
	
	String cPageNum = request.getParameter("cPageNum");
	if(cPageNum==null){
		cPageNum = "1";
	}
	int cCurrentPage = Integer.parseInt(cPageNum);
	int startRow = (cCurrentPage * 10) - 9;
	int endRow = cCurrentPage* pageSize;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	try{
		BoardDBBean dbPro=BoardDBBean.getInstance();
		BoardDataBean article=dbPro.getArticle(num);
		CommentDBBean cdb=CommentDBBean.getInstance();
		ArrayList comments=cdb.getComments(article.getNum(), startRow, endRow);
		int count=cdb.getCommentCount(article.getNum());
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
%>
<body>

</body>
</html>