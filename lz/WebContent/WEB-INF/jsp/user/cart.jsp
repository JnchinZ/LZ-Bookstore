<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>购物车</title>
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
	
	
<!-- ajax -->

<script type="text/javascript">
	function getXmlHttpRequest() {
		var xmlhttp = null;

		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest(); // 针对于现在的浏览器包括IE7以上版本
		} else if (window.ActiveXObject) {
			// 针对于IE5,IE6版本
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		return xmlhttp;
	}
</script>
<script type="text/javascript">
	//var txt = document.getElementById("addGoods");
	//txt.onclick=function('${GoodsItem.bookId}'){
	function addGoods(id) {
		
		var ids = document.getElementsByName(id).item(1);
		var parrent = ids.parentNode;
		//alert(document.getElementById("subtotal_money"+id).innerHTML);
		//第一步:得到XMLHttpRequest对象.
		var xmlhttp = getXmlHttpRequest();

		//2.设置回调函数
		xmlhttp.onreadystatechange = function() {

			//5.处理响应数据  当信息全部返回，并且是成功
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				
				
				var span=parseInt(parrent.getElementsByTagName('span')[0].innerHTML);
					parrent.getElementsByTagName('span')[0].innerHTML=span+1;
				var subtotal_money=parseFloat(document.getElementById("subtotal_money"+id).innerHTML);
				var singleprice=subtotal_money/span;
				document.getElementById("subtotal_money"+id).innerHTML=parseFloat(singleprice*(span+1)).toFixed(1);
				var total_num=parseFloat(document.getElementById("total_num").innerHTML);
				document.getElementById("total_num").innerHTML=total_num+1;
				var total_money=parseInt(document.getElementById("total_price").innerHTML);
				document.getElementById("total_price").innerHTML=parseFloat(total_money+singleprice).toFixed(1);
				//操作右侧页面的物品综述
				document.getElementById("contentright_total_num").innerHTML=total_num+1;
			}
		};
		//alert("haha");
		//post请求方式，参数设置
		xmlhttp.open("GET", "${pageContext.request.contextPath }/cart/plus/" + id);

		xmlhttp.send(null);

	}
</script>
<script type="text/javascript">
	//var txt = document.getElementById("addGoods");
	//txt.onclick=function('${GoodsItem.bookId}'){
	function subGoods(id) {
		
		var ids = document.getElementsByName(id).item(1);
		var parrent = ids.parentNode;
		//alert(document.getElementById("subtotal_money"+id).innerHTML);
		//第一步:得到XMLHttpRequest对象.
		var xmlhttp = getXmlHttpRequest();

		//2.设置回调函数
		xmlhttp.onreadystatechange = function() {

			//5.处理响应数据  当信息全部返回，并且是成功
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				
				
				var span=parseInt(parrent.getElementsByTagName('span')[0].innerHTML);
				var subtotal_money=parseFloat(document.getElementById("subtotal_money"+id).innerHTML);
				var singleprice=parseInt(subtotal_money/span).toFixed(1);
				if((span-1)<=0)
					{
					var Goodsitem = document.getElementById(id);
					 Goodsitem.parentNode.removeChild(Goodsitem);
					}
				else
				{
					parrent.getElementsByTagName('span')[0].innerHTML=span-1;
					document.getElementById("subtotal_money"+id).innerHTML=parseFloat(singleprice*(span-1)).toFixed(1);
				}
				
				var total_num=parseFloat(document.getElementById("total_num").innerHTML);
				document.getElementById("total_num").innerHTML=total_num-1;
				var total_money=parseInt(document.getElementById("total_price").innerHTML);
				document.getElementById("total_price").innerHTML=parseFloat(total_money-singleprice).toFixed(1);
				//操作右侧页面的物品综述
				document.getElementById("contentright_total_num").innerHTML=total_num-1;
			}
		};
		//alert("haha");
		//post请求方式，参数设置
		xmlhttp.open("GET", "${pageContext.request.contextPath }/cart/plus/" + id);

		xmlhttp.send(null);

	}
</script>
<!-- ajax -->
</head>
<body>
<!--header-->
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="logo">
				<h1><a href="${pageContext.request.contextPath }"><i><img src="${pageContext.request.contextPath }/static/images/logo.png" alt="" /></i>LZ图书<span>A Best Bookstore</span></a></h1>
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
		<h3>购物车</h3>
		<div class="container">
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th>商品</th>
			      <th>商品名</th>
			      <th>单价</th>
			      <th>数量</th>
			      <th>小计</th>
			      <th>操作</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:set value="0" var="sum" />  
			  <c:if test="${cartList!=null}"/>
			  <c:forEach items="${cartList }" var="GoodsItem">
				  <tr id="${GoodsItem.bookId}">
				  <td><a href="${pageContext.request.contextPath }/book/bookInfo/${GoodsItem.bookId+1}"> <img style="height=100px"
											src="${pageContext.request.contextPath }/static/book_pic/${GoodsItem.bookPic}" alt="" title=""
											border="0" class="cart_thumb"> </a></td>
				      <td>${GoodsItem.bookName }</td>
				      <td>${GoodsItem.currentPrice }￥</td>
				      <td><a href="javascript:void(0)"
						name="${GoodsItem.bookId}" onclick="addGoods(this.name)">+</a>
						<span name="bookNum">${GoodsItem.bookNum }</span>
						<a href="javascript:void(0)"
						name="${GoodsItem.bookId}" onclick="subGoods(this.name)">-</a>
					</td>
				      <td ><span id="subtotal_money${GoodsItem.bookId}">${GoodsItem.bookNum*GoodsItem.currentPrice }</span>￥</td>
				      <td>
				      	<a href="${pageContext.request.contextPath }/cart/delete/${GoodsItem.bookId+1}">删除</a>
				      </td>
				      <c:set value="${sum + GoodsItem.currentPrice*GoodsItem.bookNum}" var="sum" />
				    </tr>
			  </c:forEach>
			    
			  </tbody>
			</table>
		</div>
		<div class="container">
			<h4 style="color: red;">
				<div class="row col-md-offset-8">
					<div class="col-md-5">
						总价：${sum}￥
					</div>
					<div class="col-md-4">
					<a href="${pageContext.request.contextPath }/cart/bill/${session_user.id}">
						<button class="btn btn-danger">去结算</button>
						</a>
					</div>
				</div>
			</h4>
		</div>
	</div>
<!-- //gallery -->
<!-- footer -->
<jsp:include page="../book/footer.jsp"></jsp:include>
</body>
</html>
