<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LZ图书</title>
</head>
<body>
<!-- footer -->
<div class="footer">
	<div class="container">
		<h2>Get In Touch</h2>
		<p class="para">可以通过以下方式联系到我们</p>
		<div class="col-md-6 footer-left wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="col-sm-2 foo-left text-center">
				<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
			</div>
			<div class="col-sm-10 foo-right">
				<h4>其他平台网站</h4>
				<p>balabalabalabalabala...</p>
				<ul class="fb_icons">
					<li><a class="fb" href="#"></a></li>
					<li><a class="twit" href="#"></a></li>
					<li><a class="goog" href="#"></a></li>
					<li><a class="pin" href="#"></a></li>
					<li><a class="drib" href="#"></a></li>
				</ul>

			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-6 footer-right wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<div class="col-sm-2 foo-left text-center">
				<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
			</div>
			<div class="col-sm-10 foo-right">
				<h4>建议信</h4>
				<p>balabalabalabalabala...</p>
				<form action="#" method="post">
					<input type="text" name="Your email" value="Your email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Your email';}" required="">
					<input type="submit" value="Subscribe">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
		<p class="copy-right"><a target="_blank" href="">lz团队制作</a></p>
	</div>
</div>
<!-- //footer -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>