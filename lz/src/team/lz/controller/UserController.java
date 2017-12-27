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
////	用户查询页面
//	@RequestMapping(value="/queryUser",method={RequestMethod.GET})
//	public ModelAndView queryUser() throws Exception {
//		List<User> userList = userService.findAll();
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("userList", userList);
//		mv.setViewName("user/list");
//		return mv;
//	}
	/**
	 * 注册用户页面
	 * @return
	 * @throws Exception
	 */
	//跳转到注册页面，即添加用户页面
	@RequestMapping("/registerUI")
	public String registerUI() throws Exception{
		return "user/register";
	}
	//添加用户的操作
	@RequestMapping(value="/register",method= {RequestMethod.POST})
	public String register(User user) throws Exception{
		userService.add(user);
		//跳转到注册成功页面
		return "redirect:/user/welcome.action";
	}
	
	/**
	 * 修改用户页面
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
	 * 删除用户页面
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
	 * 登录页面
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
				//如果是管理员
				return "redirect:/admin/queryAll.action";
			}else {
				return "redirect:/";
			}
		}else {
			model.addAttribute("account", account);
			model.addAttribute("errorMessage", "用户名或者密码错误！");
			return "user/login";
		}
	}
	//注销登录
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
