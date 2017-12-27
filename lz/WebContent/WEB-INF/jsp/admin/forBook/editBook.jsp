<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户列表页面</title>
</head>

<body>
<form action="${pageContext.request.contextPath }/admin/forBook/edit.action" method="get">
<input type="hidden" name="id" value="${book.id}">
图书名称：<input type="text" name="bookName" value="${book.bookName}"><br>
图书简介：<input type="text" name="bookSummary" value="${book.bookSummary }"><br>
图书原价：<input type="text" name="fixPrice" value="${book.fixPrice}"><br>
图书现价：<input type="text" name="currentPrice" value="${book.currentPrice}"><br>
图书封面地址：<input type="text" name="bookPic" value="${book.bookPic}"><br>
作者名：<input type="text" name="authorName" value="${book.authorName}"><br>
作者简介：<input type="text" name="authorSummary" value="${book.authorSummary}"><br>
出版日期：<input type="text" name="publishDate" value="${book.publishDate}"><br>
出版社：<input type="text" name="publishing" value="${book.publishing}"><br>
图书目录：<input type="text" name="catalogue" value="${book.catalogue}"><br>
<button type="submit">提交</button>
</form>
</body>
</html>
