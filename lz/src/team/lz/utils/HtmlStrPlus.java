package team.lz.utils;

import javax.servlet.http.HttpSession;

import team.lz.bean.User;

public class HtmlStrPlus {
	public void htmlStrPlus(HttpSession session) throws Exception {
		/**
		 * ������servlet�е��ô˷�����
		 * Ȼ������Ӧ��jspҳ�浼�����������м���${html_str}����ʵ��ҳ��Ч��
		 */
		
		try {//����Ѿ���½
				User user = (User) session.getAttribute("session_user");
				String html_grade_str="";
				if (user.getGrade()==1) {
					//����ǹ���Ա�Ļ������һ��������ť
					html_grade_str="<li><a href=\"/lz/admin/queryAll.action\">���ع���Ա��ͼ</a></li>";
				}
				
				String html_str = "<ul class=\"nav navbar-nav navbar-right\">\r\n" + 
						"	<li>\r\n" + 
						"		<a href=\"/lz/cart/editCart/"+user.getId()+"\"><span class=\"glyphicon glyphicon-shopping-cart\"></span>���ﳵ</a>\r\n" + 
						"	</li>\r\n" + 
						"	<li class=\"dropdown\">\r\n" + 
						"		<a href=\"/lz/user/editUI/"+user.getId()+"\"><span class=\"glyphicon glyphicon-user\"></span>�ѵ�½</a>\r\n" + 
						"		<ul class=\"dropdown-menu\">  \r\n" + 
						"			<li><a href=\"/lz/user/editUI/"+user.getId()+"\">"+user.getAccount()+"</a></li>  \r\n" + 
						"			<li><a href=\"/lz/user/logout.action\">ע����¼</a></li>  \r\n" + html_grade_str+
						"		</ul>  \r\n" + 
						"	</li>\r\n" + 
						"<style type=\"text/css\">.navbar .nav > li .dropdown-menu {margin: 0;}.navbar .nav > li:hover .dropdown-menu {display: block;}</style></ul>";
				session.setAttribute("html_str", html_str);
					
				} catch (Exception e) {
					//���δ��¼
					String html_str = "<ul class=\"nav navbar-nav navbar-right\">\r\n" + 
							"	<li>\r\n" + 
							"		<a href=\"/lz/user/loginUI.action\"><span class=\"glyphicon glyphicon-log-in\"></span>δ��¼</a>\r\n" + 
							"	</li>\r\n" + 
							"	<li>\r\n" + 
							"		<a href=\"/lz/user/registerUI.action\"><span class=\"glyphicon glyphicon-user\"></span>ȥע��</a>\r\n" + 
							"	</li>\r\n" + 
							"</ul>";
					session.setAttribute("html_str", html_str);
					throw new Exception("�û�δ��¼");
				}
			}
}
