<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>图书列表页面</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
				width: 70px;
				height: 80px;
			}
		</style>
</head>

<body>
<div>
<h3>Administrator:${session_user.account}<br>
<a href="${pageContext.request.contextPath }/admin/addBook.action">添加图书</a>
</h3>

	<table class="table table-hover">
		  <thead>
		    <tr>
		      <th>图书id</th>
		      <th>图书名称</th>
		      <th>图书简介</th>
		      <th>图书原价</th>
		      <th>图书现价</th>
		      <th>图书封面</th>
		      <th>作者名</th>
		      <th>作者简介</th>
		      <th>出版日期</th>
		      <th>出版社</th>
		      <th>图书目录</th>
		      <th>操作</th>
		    </tr>
		  </thead>
		  <tbody>
		    <c:forEach items="${bookList}" var="item">
			<tr>
				<td>
				<div id="td_">
				     <span>${item.id}</span>
				</div>
				</td>
				<td>
				<div id="td_">
				     <span>${item.bookName}</span>
				</div>
				</td>
				<td>
				<div id="td_">
				     <span>${item.bookSummary}</span>
				</div>
				</td>
								<td>
				<div id="td_">
				     <span>${item.fixPrice}</span>
				</div>
				</td>
								<td>
				<div id="td_">
				     <span>${item.currentPrice}</span>
				</div>
				</td>
								<td>
				<div id="td_">
				     <img src="${pageContext.request.contextPath }/static/book_pic/${item.bookPic}" style="width: 100px;" alt="${item.bookPic}"/>
				</div>
				</td>
								<td>
				<div id="td_">
				     <span>${item.authorName}</span>
				</div>
				</td>
								<td>
				<div id="td_">
				     <span>${item.authorSummary}</span>
				</div>
				</td>
								<td>
				<div id="td_">
				     <span>${item.publishDate}</span>
				</div>
				</td>
								<td>
				<div id="td_">
				     <span>${item.publishing}</span>
				</div>
				</td>
								<td>
				<div id="td_">
				     <span>${item.catalogue}</span>
				</div>
				</td>
								<td>
				 <button class="btn btn-primary" data-toggle="modal" data-target="#myModal_${item.id}">
		修改
		</button>
		</button>
      <button class="btn btn-danger" data-toggle="modal" data-target="#myModal2_${item.id}">
			删除
		</button>
				</td>
			</tr>
			
			

<!-- 模态框（修改操作） -->
<div class="modal fade" id="myModal_${item.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					<span style="color: red;">您正在修改图书信息</span>
				</h4>
			</div>
			<form id="form" class="form-horizontal" action="${pageContext.request.contextPath }/admin/editBook.action" method="get">
				<div class="modal-body" style="height:400px;">
					<div class="container col-md-12" >
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="id">图书ID：</label>
								<div class="col-md-9">
									<span style="color:red;">${item.id }</span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="bookName">*图书名：</label>
								<div class="col-md-9">
								<input id="id" type="hidden" name="id" value="${item.id }"/>
									<input id="bookName" type="text" name="bookName" value="${item.bookName }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="bookSummary">图书简介：</label>
								<div class="col-md-9">
									<input id="bookSummary" type="text" name="bookSummary" value="${item.bookSummary }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="fixPrice">*LZ固定价：</label>
								<div class="col-md-9">
									<input id="fixPrice" type="text" name="fixPrice" value="${item.fixPrice }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="currentPrice">*当前价格：</label>
								<div class="col-md-9">
									<input id="currentPrice" type="text" name="email" value="${item.currentPrice }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="bookPic">图书封面：</label>
								<div class="col-md-9">
									<input id="bookPic" type="text" name="bookPic" value="${item.bookPic }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="authorName">作者：</label>
								<div class="col-md-9">
									<input id="authorName" type="text" name="authorName" value="${item.authorName }" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="authorSummary">作者简介：</label>
								<div class="col-md-9">
									<input id="authorSummary" type="text" name="authorSummary" value="${item.authorSummary}" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="publishDate">出版日期：</label>
								<div class="col-md-9">
									<input id="publishDate" type="text" name="publishDate" value="${item.publishDate}" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="publishing">出版社：</label>
								<div class="col-md-9">
									<input id="publishing" type="text" name="publishing" value="${item.publishing}" class="form-control" />
									<span style="color: red;"></span>
								</div>
							</div>
							</div>
					<div class = "row">
							<div class="form-group">
								<label class="col-md-3" for="catalogue">图书目录：</label>
								<div class="col-md-9">
									<input id="catalogue" type="text" name="catalogue" value="${item.catalogue}" class="form-control" />
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
<div class="modal fade" id="myModal2_${item.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					<span style="color: red;">您要删除图书信息吗？</span>
				</h4>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<a href="${pageContext.request.contextPath }/admin/deleteB/${item.id}">
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
</div>

</body>
</html>
