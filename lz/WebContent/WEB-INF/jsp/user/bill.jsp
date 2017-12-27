<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>订单详情</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath }/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/swipebox.css">
<link href="${pageContext.request.contextPath }/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-2.1.4.min.js"></script>
<!-- //js -->

<link href='http://fonts.useso.com/css?family=Viga' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<script src="js/responsiveslides.min.js"></script>
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
<jsp:include page="../book/header.jsp"></jsp:include>
<div class="gallery">
		<h3>订单</h3>
		<div class="container">
			<div class="container">
				<span style="color: red;">
					${user.account}&nbsp;&nbsp;${user.phoneNumber}
				</span>
				<br />
				<span class="glyphicon glyphicon-map-marker" style="color: gray;">
					山东科技大学泰安西校区
				</span>
			</div>
			<hr />
			<table class="table table-striped">
				<thead>
					<tr>
						<th>
							<h4>
								商品名称：
							</h4>
							<c:forEach items="${bookList}" var="item">
							<span style="color:red;">${bookList.bookName}</span>
							</c:forEach>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							原价：
						</td>
					</tr>
					<tr>
						<td>
							优惠：8.5折
						</td>
					</tr>
					<tr>
						<td>
							现价：
						</td>
					</tr>
				</tbody>
			</table>
			<hr />
			<div class="container">
				<div class="col-md-3 col-md-offset-9">
					<h4>
						<span style="color: red;">
							实际付款：000.00￥
						</span>
						<br />
						<br />
						<button class="btn btn-danger glyphicon glyphicon-check">结账</button>
					</h4>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<jsp:include page="../book/footer.jsp"></jsp:include>
</body>
</html>