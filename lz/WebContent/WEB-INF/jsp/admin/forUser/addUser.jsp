<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户添加页面</title>
</head>

<body>
<form action="${pageContext.request.contextPath }/admin/add.action" method="post">
账户：<input type="text" name="account" ><br>
密码：<input type="text" name="pwd" ><br>
昵称：<input type="text" name="nickname" ><br>
邮箱：<input type="text" name="email"><br>
手机号：<input type="text" name="phoneNumber" ><br>
地址：<input type="text" name="address" ><br>
头像：<input type="text" name="profileUrl" ><br>
等级：<input type="text" name="grade" ><br>
<button type="submit">提交</button>
</form>
</body>
</html>
