<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户列表页面</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	#form label{
		margin-bottom: 0px;
		margin-top: 7px;
		text-align: right;
	}
</style>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/bootstrap.min.css"/>
<script src="${pageContext.request.contextPath }/static/js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
			table{
				table-layout: fixed;
				word-break: break-all;
				word-wrap: break-word; //表格固定布局
				}
			td{
				overflow:auto;
				}
			#td_{
				width: 80px;
				height: 40px;
			}
		</style>
</head>

<body>
<div>
<h3>Administrator:${session_user.account}<br>
<a href="${pageContext.request.contextPath }/admin/addUI.action">添加用户</a></h3>
</div>
<div>
<table class="table table-hover">
	  <thead>
	    <tr>
	      <th>用户id</th>
	      <th>帐号名</th>
	      <th>密码</th>
	      <th>昵称</th>
	      <th>电子邮件</th>
	      <th>电话号码</th>
	      <th>地址</th>
	      <th>头像</th>
	      <th>等级</th>
	      <th>操作</th>
	    </tr>
	  </thead>
	  <tbody>
	<c:forEach items="${userList}" var="item">
	<tr>
      <td>
      	<div id="td_">
      		<span>
      		${item.id}
      		</span>
      	</div>
      </td>
      <td>
      	<div id="td_">
      		<span>
      		${item.account}
      		</span>
      	</div>
      </td>
      <td>
      	<div id="td_">
      		<span>
      		${item.pwd}
      		</span>
      	</div>
      </td>
      <td>
      	<div id="td_">
      		<span>
      		${item.nickName}
      		</span>
      	</div>
      </td>
      <td>
      	<div id="td_">
      		<span>
      		${item.email}
      		</span>
      	</div>
      </td>
      <td>
      	<div id="td_">
      		<span>
      		${item.phoneNumber}
      		</span>
      	</div>
      </td>
      <td>
      	<div id="td_">
      		<span>
      		${item.address}
      		</span>
      	</div>
      </td>
      <td>
      	<img src="图片地址" style="height: 36px;"/>
      </td>
      <td>
      	<div id="td_">
      		<span>
      		${item.grade}
      		</span>
      	</div>
      </td>
      <td>
      <button class="btn btn-primary" data-toggle="modal" data-target="#myModal_${item.id }">
		修改
		</button>
		</button>
      <button class="btn btn-danger" data-toggle="modal" data-target="#myModal2_${item.id }">
			删除
		</button>
    </tr>
    
    
    
    
    
    
    
<!-- 模态框（修改操作） -->
<div class="modal fade" id="myModal_${item.id }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					<span style="color: red;">您正在修改用户信息<慎重!></span>
				</h4>
			</div>
			<form id="form" class="form-horizontal" action="${pageContext.request.contextPath }/admin/edit.action" method="get">
				<div class="modal-body" style="height:350px;">
					<div class="container col-md-12">
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="id">用户ID：</label>
								<div class="col-md-9">
									<span style="color:red;">${item.id }</span>
								</div>
							</div>
					</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="account">*账户名：</label>
								<div class="col-md-9">
								<input id="id" type="hidden" name="id" value="${item.id }" />
									<input id="account" type="text" name="account" value="${item.account }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="pwd">*密码：</label>
								<div class="col-md-9">
									<input id="pwd" type="text" name="pwd" value="${item.pwd }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="nickName">昵称：</label>
								<div class="col-md-9">
									<input id="nickName" type="text" name="nickName" value="${item.nickName }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="email">邮箱：</label>
								<div class="col-md-9">
									<input id="email" type="text" name="email" value="${item.email }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="phoneNumber">手机号：</label>
								<div class="col-md-9">
									<input id="phoneNumber" type="text" name="phoneNumber" value="${item.phoneNumber }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="address">地址：</label>
								<div class="col-md-9">
									<input id="address" type="text" name="address" value="${item.address }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="profileUrl">头像地址：</label>
								<div class="col-md-9">
									<input id="profileUrl" type="text" name="profileUrl" value="${item.profileUrl}" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="grade">用户等级：</label>
								<div class="col-md-9">
									<input id="grade" type="text" name="grade" value="${item.grade}" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						关闭
					</button>
					<button type="submit" class="btn btn-danger">
						提交更改
					</button>
				</div>
			</form>
		</div><!-- /.modal-content -->
	</div>
</div>

<!-- /.modal -->
<!-- 模态框（删除操作） -->
<div class="modal fade" id="myModal2_${item.id }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					<span style="color: red;">您要删除用户信息吗？<慎重!></span>
				</h4>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<a href="${pageContext.request.contextPath }/admin/delete/${item.id }">
					<button type="button" class="btn btn-danger">
						确认删除
					</button>
				</a>
			</div>
		</div><!-- /.modal-content -->
	</div>
</div>
<!-- /.modal --> 
    
    
    
    
    
    
    
    
    
    
    
    
		</c:forEach>
		 </tbody>
		</table>
	</table>
</div>




<script type="text/javascript">
	$('form').submit(function() {
		var flag = true;
		var $account = $('form [name=account]')
		var $pwd = $('form [name=pwd]')

		if(!$account.val()) {
			$account.next().text('账户名不能输入为空！');
			flag = false;
		} else {
			$account.next().empty();
			flag = true;
		}
		if(!$pwd.val()) {
			$pwd.next().text("密码不能输入为空！");
			flag = false;
		} else {
			$pwd.next().empty();
			flag = true;
		}
		return flag;
	})
</script>
</body>
</html>
