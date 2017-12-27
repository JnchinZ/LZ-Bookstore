<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册-LZ图书</title>
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
	<h3>注册</h3>
	<div class="container" style="width: 400px;margin-top: 50px;">
		<form id="form" class="form-horizontal" action="${pageContext.request.contextPath }/user/register.action" method="post">
			<div class="form-group">
				<label class="col-md-3" for="account">用户名：</label>
				<div class="col-md-9">
					<input id="account" type="text" name="account" class="form-control" placeholder="用户名" />
					<span style="color: red;"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3" for="email">邮箱：</label>
				<div class="col-md-9">
					<input id="email" type="text" name="email" class="form-control" placeholder="邮箱" />
					<span style="color: red;"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3" for="pwd">密码：</label>
				<div class="col-md-9">
					<input id="pwd" type="password" name="pwd" class="form-control" placeholder="密码" />
					<span style="color: red;"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3" for="c_pwd">确认密码:</label>
				<div class="col-md-9">
					<input id="c_pwd" type="password" name="c_pwd" class="form-control" placeholder="确认密码" />
					<span style="color: red;"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3" for="phoneNumber">手机号：</label>
				<div class="col-md-9">
					<input id="phoneNumber" type="text" name="phoneNumber" class="form-control" placeholder="手机号" />
					<span style="color: red;"></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3" for="ver_c">验证码：</label>
				<div class="col-md-9 form-inline">
					<input type="text" name="ver_c" id="ver_c" class="form-control" placeholder="验证码" />
					<input type="button" id="checkCode" class="btn btn-primary" value="2144"/>
					<span style="color: red;"></span>
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-danger form-control">注册</button>
			</div>
			<div class="form-group">
				<a href="${pageContext.request.contextPath }/user/loginUI.action">
				<button type="button" class="btn btn-default form-control">已经注册？去登陆</button>
				</a>
			</div>
		</form>
	</div>
	<style type="text/css">
		#form label{
			margin-bottom: 0px;
			margin-top: 7px;
			text-align: right;
		}
	</style>
	<script type="text/javascript">
	<% int i;%>
		$(function() {
// 			var code;
// 			$('#checkCode').click(function(){
// 				var random = new Array([0,1,2,3,4,5,6,7,8,9,'A','B','C','D']);
// 				code='';
// 				for (i =0;i<4;i++) {
// 					code+=random[Math.floor(Math.random()*14)];
// 				}
// 				$(this).val()=code;
// 			})
			
			$('form').submit(function() {
				var flag = 0;
				var $account = $('form [name=account]')
				var $pwd = $('form [name=pwd]')
				var $c_pwd = $('form [name=c_pwd]')
				var $email = $('form [name=email]')
				var $phoneNumber = $('form [name=phoneNumber]')
				var $ver_c = $('form [name = ver_c]')
		
				if(!$account.val()) {
					$account.next().text('用户名不能输入为空！');
					flag += 1;
				} else {
					$account.next().empty();
					flag = 0;
				}
				if($pwd.val() && $c_pwd.val() && $pwd.val() != $c_pwd.val()) {
					$pwd.next().text("两次输入的密码不一致！");
					$c_pwd.next().text("两次输入的密码不一致！");
					flag = 0;
				} else {
					$pwd.next().empty();
					$c_pwd.next().empty();
					flag +=1;
					if(!$pwd.val()) {
						$pwd.next().text("密码不能输入为空！");
						flag = 0;
					} else {
						$pwd.next().empty();
						flag +=1;
					}
					if(!$c_pwd.val()) {
						$c_pwd.next().text("确认密码不能输入为空！");
						flag = 0;
					} else {
						$c_pwd.next().empty();
						flag +=1;
					}
				}
		
				if(!$email.val()) {
					$email.next().text("邮箱地址不能输入为空！");
					flag = 0;
				} else {
					$email.next().empty();
					flag +=1;
				}
				if(!$phoneNumber.val()) {
					$phoneNumber.next().text("手机号不能为空！");
					flag = 0;
				} else {
					$phoneNumber.next().empty();
					flag +=1;
				}
				
				
				if(flag==5){
					return true
				}else{
					return false
				}
				
// 				var items = $('#checkCode').text().split(' ');
// 				var sum = parseInt(items[0])+parseInt(items[2]);
// 				if (sum != $ver_c.val()) {
// 					$ver_c.next().text("验证码错误！");
// 					flag=false;
// 				} else{
// 					$ver_c.next().empty();
// 					flag=true;
// 				}
// 				return flag;
			})
		});
	</script>
</div>
<!-- //contact -->
<jsp:include page="../book/footer.jsp"></jsp:include>
</body>
</html>