<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>个人主页-LZ图书</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath }/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/swipebox.css">
<link href="${pageContext.request.contextPath }/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.4.min.js"></script>
<!-- //js -->

<link href='http://fonts.useso.com/css?family=Viga' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<script src="${pageContext.request.contextPath }/static/js/responsiveslides.min.js"></script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
	<!-- swipe box js -->
		<script src="${pageContext.request.contextPath }/static/js/jquery.swipebox.min.js"></script> 
			<script type="text/javascript">
				jQuery(function($) {
				$(".swipebox").swipebox();
				});
		</script>
	<!-- //swipe box js -->
</head>
<body>
<!--header-->
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="logo">
				<h1><a href="${pageContext.request.contextPath }"><i><img src="${pageContext.request.contextPath }static/images/logo.png" alt="" /></i>LZ图书<span>A Best Bookstore</span></a></h1>
			</div>
			<div class="header-left">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<div class="header-right search">
							<form action="${pageContext.request.contextPath }/dimQuery" method="post">
								<input type="search" name="Search" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" required="">
								<input type="submit" value=" ">
							</form>
						</div>
						<nav class="link-effect-9" id="link-effect-9">
							<ul class="nav navbar-nav navbar-left">
								<li><a href="${pageContext.request.contextPath }" class="hvr-bounce-to-bottom">首页</a></li>
								<li><a href="${pageContext.request.contextPath }/book/books" class="hvr-bounce-to-bottom">图书</a></li>
								<li><a href="${pageContext.request.contextPath }/article/articles" class="hvr-bounce-to-bottom">文章</a></li>
							</ul>
							${html_str }
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
<!-- //header -->
<!-- gallery -->

	<div class="gallery">
		<h3>个人资料</h3>
		<div class="container">
			<form action="${pageContext.request.contextPath }/user/edit.action" method="post">
			<div class="row">
				<div class="col-md-6 col-md-offset-2">
					<table class="table table-hover">
					  <thead>
					    <tr>
					      <th>用户名</th>
					      <th>
					      	<input type="hidden" name="id" value="${user.id}">
					      	<input type="text" name="account" value="${user.account}" />
					      </th>
					    </tr>
					    <tr>
					      <th>密码</th>
					      <th>
					      	<input type="password" name="pwd"/>
					      </th>
					    </tr>
					    <tr>
					    	<th>手机号</th>
					    	<th>
					    		<input type="text" name="phoneNumber" value="${user.phoneNumber}" />
					    	</th>
					    </tr>
					    <tr>
					    	<th>邮箱</th>
					    	<th>
					    		<input type="text" name="email" value="${user.email}" />
					    	</th>
					    </tr>
					  </thead>
					</table>
				</div>
				<div class="col-md-2 col-md-offset-1 gal-left gal_mar">
					<a href="" class="b-link-stripe b-animate-go  swipebox">
						<div class="img-box">
							<img src="${pageContext.request.contextPath }/static/images/headshot.png" class="img-responsive zoom-img" />
						</div>
					</a>
				</div>
			</div>
			<div class="container">
				<h1 style="color: red;">
					<div class="row col-md-offset-8">
						<button type="submit" class="btn btn-danger">保存</button>
					</div>
				</h1>
			</div>
			</form>
		</div>
		
	</div>
<!-- //gallery -->
<!-- footer -->
<jsp:include page="../book/footer.jsp"></jsp:include>
</body>
</html>