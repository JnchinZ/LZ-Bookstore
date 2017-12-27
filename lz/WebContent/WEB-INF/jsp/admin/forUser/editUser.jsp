<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户修改页面</title>
</head>

<body>
<form action="${pageContext.request.contextPath }/user/edit.action" method="post">
<input type="hidden" name="id" value="${user.id}">
账户：<input type="text" name="account" value="${user.account}">
密码：<input type="text" name="pwd" >
手机号：<input type="text" name="phoneNumber" value="${user.phoneNumber}">
邮箱：<input type="text" name="email" value="${user.email}">
<button type="submit">提交</button>
</form>
</body>
</html>
