<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>LZ图书管理系统-主页</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/bootstrap.min.css" />
		<style type="text/css">
			a {
				color: gray;
			}
			
			a:hover {
				text-decoration: none;
			}
			
			ul {
				list-style-type: none;
				margin: 0;
				padding: 0;
			}
		</style>
		<script src="${pageContext.request.contextPath }/static/js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath }/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="pull-left">
					<h2 style="margin: 7px 0px;">LZ图书管理系统</h2>
				</div>
				<div class="pull-right">
					<div class="dropdown">
						<button type="button" class="btn btn-default" style="margin: 7px 30px;" data-toggle="dropdown">
							用户<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li>
								<a href="#">个人设置</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath }">回到用户视图</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<br /><br /><br />
		<div class="pull-left" style="width: 16vw;">
			<div class="panel panel-default">
				<div class="panel-body" style="height: 85vh;">
					<div class="panel panel-default">
						<div class="panel-heading">
							<a href="${pageContext.request.contextPath }/admin/forBook.action" target="right"><span class="glyphicon glyphicon-home">首页</span></a>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<a href="#hide" data-toggle="collapse"><span class="glyphicon glyphicon-align-justify">读物管理</span></a>
						</div>
						<div id="hide" class="collapse panel-collapse">
							<div class="panel-body">
								<ul>
									<li>
										<a href="${pageContext.request.contextPath }/admin/forBook.action" target="right">图书管理</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath }/admin/forBook.action" target="right">文章管理</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<a href="#hideAssetsInvertory" data-toggle="collapse"><span class="glyphicon glyphicon-align-justify">用户管理</span></a>
						</div>
						<div id="hideAssetsInvertory" class="collapse panel-collapse">
							<div class="panel-body">
								<ul>
									<li>
										<a href="${pageContext.request.contextPath }/admin/forUser.action" target="right">普通用户</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="pull-left" style="margin-left: 5px;width: 82vw;">
			<div class="embed-responsive embed-responsive-16by9">
				<iframe name="right" class="embed-responsive-item" src="${pageContext.request.contextPath }/admin/forBook.action"></iframe>
			</div>
			<!--<iframe name="right" src="index.html" style="width: 100%;height: 85vh;" frameborder="no" border="no" scrolling="yes"></iframe>-->
		</div>
		<div class="navbar navbar-default navbar-fixed-bottom">
			<div class="container">
				@LZ团队制作
			</div>
		</div>
	</body>

</html>