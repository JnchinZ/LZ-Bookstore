<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LZ图书</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<div class="header">
		<div class="container">
			<div class="logo">
				<h1><a href="${pageContext.request.contextPath }"><i><img src="${pageContext.request.contextPath }/static/images/logo.png" alt="LZ图书" /></i>LZ图书<span>A Best Bookstore</span></a></h1>
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
								<li class="active"><a href="${pageContext.request.contextPath }/book/books.action" class="hvr-bounce-to-bottom">图书</a></li>
								<li><a href="${pageContext.request.contextPath }/book/books.action" class="hvr-bounce-to-bottom">文章</a></li>
							</ul>
							${html_str }
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
<!-- banner -->
<div class="banner page_head">
</div>
<!-- //banner -->
<!-- gallery -->
	<div class="gallery">
		<div class="container">
			<c:forEach items="${readingList}" var="item">
			<div class="col-md-3 gal-left gal_mar" style="width: 285px; height: 380px;">
				<div class="content-grid-effect slow-zoom vertical text-center">
					<a href="${pageContext.request.contextPath }/book/bookInfo/${item.id}">
						<div class="img-box">
							<img src="${pageContext.request.contextPath }/static/book_pic/${item.bookPic}" style="max-height: 356px; width: 285px;" alt="${item.bookName}" class="img-responsive zoom-img">	
						</div>
				
						<div class="info-box">
							<div class="info-content">
								<h4>${item.bookName}</h4>
								<span class="separator"></span>
								<p>${item.bookSummary}</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			
			</c:forEach>
			<div class="clearfix"></div>
		</div>
	</div>
<!-- //gallery -->
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- //footer -->
</body>
</html>