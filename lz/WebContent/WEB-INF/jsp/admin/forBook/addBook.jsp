<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>添加图书页面</title>
</head>

<body>
<form action="${pageContext.request.contextPath }/admin/addB.action" method="get">
图书名称：<input type="text" name="bookName" ><br>
图书简介：<input type="text" name="bookSummary" ><br>
图书原价：<input type="text" name="fixPrice" ><br>
图书现价：<input type="text" name="currentPrice"><br>
图书封面地址：<input type="text" name="bookPic"><br>
作者名：<input type="text" name="authorName"><br>
作者简介：<input type="text" name="authorSummary"><br>
出版日期：<input type="text" name="publishDate"><br>
出版社：<input type="text" name="publishing"><br>
图书目录：<input type="text" name="catalogue"><br>
<button type="submit">提交</button>
</form>
</body>
</html>
