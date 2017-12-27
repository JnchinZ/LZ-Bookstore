<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户列表页面</title>
</head>
<body>
<!--header-->
<jsp:include page="../book/header.jsp"></jsp:include>
<!-- header -->
	
<!-- banner -->
<div class="banner page_head">
</div>
<!-- //banner -->
<!-- contact -->
<div class="gallery">
		<div class="container" style="width: 400px;margin-top: 100px;">
			<h1 class="text-center">登录</h1>
			<br /><br />
			<span style="color: red;">${errorMessage}</span>
			<form class="form-group" action="${pageContext.request.contextPath }/user/login.action" method="post">
				<div class="form-group">
					<input type="text" name="account" value="${account }" class="form-control" placeholder="请输入账户名"/>
					<span style="color: red;"></span>
				</div>
				<div class="form-group">
					<input type="password" name="pwd" class="form-control" placeholder="请输入密码"/>
					<span style="color: red;"></span>
				</div>
				
				<label>
					<input type="checkbox"/>记住我
				</label>
				<div class="form-group">
					<button type="submit" class="form-control btn btn-danger">登录</button>
				</div>
				<div class="form-group">
					<a href="${pageContext.request.contextPath }/user/registerUI.action">
					<button type="button" class="form-control btn btn-default">没有账号？去注册</button>
					</a>
				</div>
			</form>
		</div>
	</div>
<jsp:include page="../book/footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
		$(function(){
			$('form').submit(function(){
				var flag = true
				var $account=$('form [name=account]')
				var $pwd=$('form [name=pwd')
				
				if(!$account.val()){
					$account.next().text("用户名不能为空！")
					flag = false
				}else{
					$account.next().empty()
					flag = true
				}
				if (!$pwd.val()) {
					$pwd.next().text("密码不能为空！")
					flag = false
				} else{
					$pwd.next().empty()
					flag = true
				}
				
				return flag
			})
		})
	</script>
</html>
