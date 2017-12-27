<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>首页-LZ图书</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath }/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!--animate-->
<link href="${pageContext.request.contextPath }/static/css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="${pageContext.request.contextPath }/static/js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
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

</head>
<body>
<!--header-->
<!-- header -->
	<div class="header wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.3s">
		<div class="container">
			<div class="logo">
				<h1><a href=""><i><img src="${pageContext.request.contextPath }/static/images/logo.png" alt="LZ" /></i>老子图书<span>A Best Library</span></a></h1>
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
							<form action="${pageContext.request.contextPath }/dimQuery.action" method="post">
								<input type="search" name="Search" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" required="">
								<input type="submit" value=" ">
							</form>
						</div>
						<nav class="link-effect-9" id="link-effect-9">
							<ul class="nav navbar-nav">
								<li class="active"><a class="hvr-bounce-to-bottom" href="${pageContext.request.contextPath }">首页</a></li>
								<li><a href="${pageContext.request.contextPath }/book/books.action" class="hvr-bounce-to-bottom">图书</a></li>
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
<!-- //header -->
<!-- banner -->
<div class="banner">
	<div class="container">
		<div class="banner-info">
			<div class="col-md-7 banner-left wow flipInY" data-wow-duration="1.5s" data-wow-delay="0s">
				<h3>欢迎来到 <span> LZ图书 </span> Books and Articles</h3>
				<p>Книга - это ступень человеческого прогресса.</p>
				<a class="hvr-outline-out" href="${pageContext.request.contextPath }/user/registerUI.action">加入我们</a>
			</div>
			<div class="col-md-5 banner-right wow flipInY" data-wow-duration="1.5s" data-wow-delay="0s">
					<style type="text/css">
						a:link{
							color: white;
							text-decoration: none;
						}
					</style>
					<a class="scroll" href="#recommend">
					<div class="ban-icon ban-col1">
						<h1 class="glyphicon glyphicon-thumbs-up"></h1>
						<span>&nbsp;推荐</span>
						<!--<img src="images/icon1.png" alt="" />-->
					</div>
					</a>
					<a class="scroll" href="#hotbook">
					<div class="ban-icon ban-col2">
						<h1 class="glyphicon glyphicon-book"></h1>
						<span>&nbsp;热书</span>
						<!--<img src="images/icon2.png" alt="" />-->
					</div>
					</a>
					<a class="scroll" href="#hotarticle">
					<div class="ban-icon3">
						<h1 class="glyphicon glyphicon-pencil"></h1>
						<span>&nbsp;热文</span>
						<!--<img src="images/icon3.png" alt="" />-->
					</div>
					</a>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div id="recommend" class="banner-bottom wow bounceInUp" data-wow-duration="1s" data-wow-delay="0s">
	<div class="container">
		<h3>今日推荐</h3>
		<p class="para1">劳于读书,逸于作文。</p>
		<div class="col-md-4 bottom-grid multi-gd-text">
			<!--推荐图书的图片-->
			<a href="${pageContext.request.contextPath }/book/bookInfo.action"><img src="${pageContext.request.contextPath }/static/book_pic/${readingList[0].bookPic}" alt="${readingList[0].bookName}"/></a>
			<h4>《${readingList[0].bookName}》</h4>
		</div>
		<div class="col-md-4 bottom-grid mar-pad">
				<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						 // Slideshow 4
						$("#slider3").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
						$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
							}
							});
						});
				</script>
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">			
					<c:forEach items="${readingList}" var="item" varStatus="i" begin="0" end="4" step="1">
						<li>
							<h4>${item.bookName}</h4>
							<p>${item.bookSummary}</p>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="col-md-4 bottom-grid multi-gd-text">
			<!--推荐文章的图片-->
			<a href="${pageContext.request.contextPath }/book/bookInfo/3">
			<h4>${readingList[2].bookName}</h4>
			</a>
			<p>${readingList[2].bookSummary}</p>
			
			
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //banner-bottom -->
<!-- services -->
<div id="hotbook" class="main_ser">
	<div class="container">
		<div class="col-md-8 main_ser_one wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<h3>今日热书</h3>
			<div class="cont-grids">
				<c:forEach items="${readingList}" var="item" varStatus="i" begin="0" end="5" step="1">
				<div class="col-sm-6 cont-grid-one yes_magr">
					<div class="cont-grid-left wel-grid">
						<div class="btm-clr4">
							<figure class="icon">
								<img src="${pageContext.request.contextPath }/static/book_pic/${item.bookPic}" alt="${item.bookName}" />
							</figure>
						</div>
					</div>
					<div class="cont-grid-right">
						<h4>${item.bookName}</h4>
						<p> ${item.bookSummary}</p>
					</div>
					<div class="clearfix"></div>
				</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-4 main_ser_two wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<h3>畅销图书</h3>
			<table class="table table-striped table-hover table-condensed">
			  <thead>
			    <tr>
			      <th>排行</th>
			      <th>书名</th>
			      <th>作者</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${readingList}" var="item" varStatus="i" begin="0" end="10" step="1">
			   <a href="${pageContext.request.contextPath }/article/articleInfo.action">
			   <tr>
			      <td style="width: 75px;">${item.id }</td>
			      <td style="width: 100px;">${item.bookName }</td>
			      <td style="width: 75px;">${item.authorName }</td>
			    </tr>
			   </a>
			   </c:forEach>
			  </tbody>
			</table>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //services -->
<!-- treatments -->
<div id="hotarticle" class="treatments">
	<div class="col-md-8 treat-grids treat-pad wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0s">
		<h3>今日热文</h3>
		<div class="cont-grids">
			<!--这里开始加forEach循环输出文章信息-->
			<div class="col-sm-6 cont-grid-one yes_magr">
				<div class="cont-grid-right">
					<h4>${readingList[2].bookName}</h4>
					<p> ${readingList[2].bookSummary}</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<!--文章信息-->
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="col-md-4 treat-grids grid wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.1s">	
		<h3>热文排行</h3>
			<table class="table table-striped table-hover table-condensed">
			  <thead>
			    <tr>
			      <th>排行</th>
			      <th>文章</th>
			      <th>作者</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${readingList}" var="item" varStatus="i" begin="0" end="10" step="1">
			   <a href="${pageContext.request.contextPath}/article/articleInfo.action">
			   <tr>
			      <td style="width: 75px;">${item.id }</td>
			      <td style="width: 100px;">${item.bookName }</td>
			      <td style="width: 75px;">${item.authorName }</td>
			    </tr>
			   </a>
			   </c:forEach>
			  </tbody>
			</table>
	</div>
	<div class="clearfix"></div>
</div>
<!-- //treatments -->
	<jsp:include page="book/footer.jsp"></jsp:include>
</body>
</html>