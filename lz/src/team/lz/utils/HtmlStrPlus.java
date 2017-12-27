package team.lz.utils;

import javax.servlet.http.HttpSession;

import team.lz.bean.User;

public class HtmlStrPlus {
	public void htmlStrPlus(HttpSession session) throws Exception {
		/**
		 * 首先在servlet中调用此方法，
		 * 然后再相应的jsp页面导航栏出代码中加入${html_str}即可实现页面效果
		 */
		
		try {//如果已经登陆
				User user = (User) session.getAttribute("session_user");
				String html_grade_str="";
				if (user.getGrade()==1) {
					//如果是管理员的话就添加一个下拉按钮
					html_grade_str="<li><a href=\"/lz/admin/queryAll.action\">返回管理员视图</a></li>";
				}
				
				String html_str = "<ul class=\"nav navbar-nav navbar-right\">\r\n" + 
						"	<li>\r\n" + 
						"		<a href=\"/lz/cart/editCart/"+user.getId()+"\"><span class=\"glyphicon glyphicon-shopping-cart\"></span>购物车</a>\r\n" + 
						"	</li>\r\n" + 
						"	<li class=\"dropdown\">\r\n" + 
						"		<a href=\"/lz/user/editUI/"+user.getId()+"\"><span class=\"glyphicon glyphicon-user\"></span>已登陆</a>\r\n" + 
						"		<ul class=\"dropdown-menu\">  \r\n" + 
						"			<li><a href=\"/lz/user/editUI/"+user.getId()+"\">"+user.getAccount()+"</a></li>  \r\n" + 
						"			<li><a href=\"/lz/user/logout.action\">注销登录</a></li>  \r\n" + html_grade_str+
						"		</ul>  \r\n" + 
						"	</li>\r\n" + 
						"<style type=\"text/css\">.navbar .nav > li .dropdown-menu {margin: 0;}.navbar .nav > li:hover .dropdown-menu {display: block;}</style></ul>";
				session.setAttribute("html_str", html_str);
					
				} catch (Exception e) {
					//如果未登录
					String html_str = "<ul class=\"nav navbar-nav navbar-right\">\r\n" + 
							"	<li>\r\n" + 
							"		<a href=\"/lz/user/loginUI.action\"><span class=\"glyphicon glyphicon-log-in\"></span>未登录</a>\r\n" + 
							"	</li>\r\n" + 
							"	<li>\r\n" + 
							"		<a href=\"/lz/user/registerUI.action\"><span class=\"glyphicon glyphicon-user\"></span>去注册</a>\r\n" + 
							"	</li>\r\n" + 
							"</ul>";
					session.setAttribute("html_str", html_str);
					throw new Exception("用户未登录");
				}
			}
}
