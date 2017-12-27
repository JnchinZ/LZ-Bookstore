package team.lz.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import team.lz.bean.Book;
import team.lz.bean.User;
import team.lz.service.BookService;
import team.lz.service.UserService;

/**
 * ����Ա����ҳ����Ӧ
 * @author Jnchin
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UserService userService;
	
	//������ҳ��
	@RequestMapping(value="/queryAll",method={RequestMethod.GET})
	public String queryAdmin(HttpSession session) throws Exception {
		try {
			User user = (User) session.getAttribute("session_user");
			if (user.getGrade()==1) {
				return "admin/admin";
			}else {
				return "redirect:/";
			}
		}catch (Exception e) {
			return "redirect:/";
		}
		
	}

	//�û�����
	//��ѯ�û�ҳ��
	@RequestMapping(value="/forUser",method={RequestMethod.GET})
	public ModelAndView userList() throws Exception {
		List<User> userList = userService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList);
		mv.setViewName("admin/forUser/userList");
		return mv;
	}
	
	/**
	 * ����û�ҳ��
	 * @return
	 * @throws Exception
	 */
	//����û�ҳ��
	@RequestMapping("/addUI")
	public String addUI() throws Exception{
		return "admin/forUser/addUser";
	}
	//����û��Ĳ���
	@RequestMapping(value="/add",method= {RequestMethod.POST})
	public String add(User user) throws Exception{
		userService.add(user);
		//��ת��ע��ɹ�ҳ��
		return "redirect:/admin/forUser.action";
	}
	
	/**
	 * �޸��û�ҳ��
	 * @param id
	 * @return
	 * @throws Exception
	 */
//	@RequestMapping("editUI/{id}")
//	public ModelAndView editUI(@PathVariable("id")Integer id) throws Exception{
//		User user=userService.findById(id);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("user",user);
//		mv.setViewName("admin/forUser/editUser");
//		return mv;
//	}
	//�޸Ĳ���
	@RequestMapping(value="/edit",method= {RequestMethod.GET})
	public String edit(User user) throws Exception{
		userService.modify(user);
		return "redirect:/admin/forUser.action";
	}
	
	/**
	 * ɾ���û�ҳ��
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/delete/{id}")
	public String delete(@PathVariable("id")Integer id) throws Exception{
		userService.removeById(id);
		return "redirect:/admin/forUser.action";
	}
	
	/**
	 * ͼ�����
	 */
	@Autowired
	private BookService bookService;
	
	//��ѯͼ��ҳ��
	@RequestMapping(value="/forBook",method={RequestMethod.GET})
	public ModelAndView bookList() throws Exception {
		List<Book> bookList = bookService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("bookList", bookList);
		mv.setViewName("admin/forBook/bookList");
		return mv;
	}
	/**
	 * ���ͼ��ҳ��
	 * @return
	 * @throws Exception
	 */
	//���ͼ��ҳ��
	@RequestMapping(value="/addBook",method= {RequestMethod.GET})
	public String addBook() throws Exception{
		return "admin/forBook/addBook";
	}
	//���ͼ��Ĳ���
	@RequestMapping(value="/addB",method= {RequestMethod.GET})
	public String addB(Book book) throws Exception{
		List<Book> bookList = bookService.findAll();
		book.setId(bookList.size()+1);
		bookService.add(book);
		//��ת����ѯͼ��ҳ��
		return "redirect:/admin/forBook.action";
	}
	
	/**
	 * �޸�ͼ��ҳ��
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/editBook",method= {RequestMethod.GET})
	public String editBook(Book book) throws Exception{
		bookService.modify(book);
		return "redirect:/admin/forBook.action";
	}
//	@RequestMapping("editB/{id}")
//	public ModelAndView editB(@PathVariable("id")Integer id) throws Exception{
//		Book book=bookService.findById(id);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("book",book);
//		mv.setViewName("admin/forBook/bookList");
//		return mv;
//	}

	/**
	 * ɾ��ͼ�����
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteB/{id}")
	public String deleteB(@PathVariable("id")Integer id) throws Exception{
		bookService.removeById(id);
		return "redirect:/admin/forBook.action";
	}
}
