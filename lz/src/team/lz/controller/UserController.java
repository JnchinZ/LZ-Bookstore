package team.lz.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import team.lz.bean.User;
import team.lz.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
////	�û���ѯҳ��
//	@RequestMapping(value="/queryUser",method={RequestMethod.GET})
//	public ModelAndView queryUser() throws Exception {
//		List<User> userList = userService.findAll();
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("userList", userList);
//		mv.setViewName("user/list");
//		return mv;
//	}
	/**
	 * ע���û�ҳ��
	 * @return
	 * @throws Exception
	 */
	//��ת��ע��ҳ�棬������û�ҳ��
	@RequestMapping("/registerUI")
	public String registerUI() throws Exception{
		return "user/register";
	}
	//����û��Ĳ���
	@RequestMapping(value="/register",method= {RequestMethod.POST})
	public String register(User user) throws Exception{
		userService.add(user);
		//��ת��ע��ɹ�ҳ��
		return "redirect:/user/welcome.action";
	}
	
	/**
	 * �޸��û�ҳ��
	 * @param id
	 * @param session 
	 * @param model 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("editUI/{id}")
	public ModelAndView editUI(@PathVariable("id")Integer id) throws Exception{
		User user=userService.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		mv.setViewName("user/edit");
		return mv;
	}
	@RequestMapping(value="/edit",method= {RequestMethod.POST})
	public String edit(User user) throws Exception{
		userService.modify(user);
		return "redirect:/user/queryUser.action";
	}
	
	/**
	 * ɾ���û�ҳ��
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/delete")
	public String delete(Integer id) throws Exception{
		userService.removeById(id);
		return "redirect:/user/registerUI.action";
	}
	
	/**
	 * ��¼ҳ��
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/loginUI")
	public String loginUI() throws Exception{
		return "user/login";
	}
	@RequestMapping(value="/login",method= {RequestMethod.POST})
	public String login(@RequestParam("account")String account,@RequestParam("pwd")String pwd,HttpSession session,Model model) throws Exception{
		List<User> users = userService.findByAccountAndPwd(account, pwd);
		if (users!=null&&users.size()==1) {
			session.setAttribute("session_user",users.get(0));
			session.setMaxInactiveInterval(30 * 60);
			if (users.get(0).getGrade()==1) {
				//����ǹ���Ա
				return "redirect:/admin/queryAll.action";
			}else {
				return "redirect:/";
			}
		}else {
			model.addAttribute("account", account);
			model.addAttribute("errorMessage", "�û��������������");
			return "user/login";
		}
	}
	//ע����¼
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception{
		session.removeAttribute("session_user");
		return "redirect:/";
	}
//	@RequestMapping("/welcome")
//	public ModelAndView welcome() throws Exception{
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("user/welcome");
//		return mv;
//	}
	
	@RequestMapping("/welcome")
	public String welcome() throws Exception{
		return "user/welcome";
	}

}
