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
import team.lz.service.BookService;
import team.lz.utils.HtmlStrPlus;

@Controller
@RequestMapping("/book")
public class BookController {

	@Autowired
	private BookService bookService;
	/**
	 * ͼ���б�ҳ��
	 * @param session 
	 * @param session 
	 * @param model 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/books",method={RequestMethod.GET})
	public ModelAndView books(HttpSession session) throws Exception {
		HtmlStrPlus hPlus = new HtmlStrPlus();
		try {
			hPlus.htmlStrPlus(session);
		}catch (Exception e) {
			// TODO: handle exception
		}
		List<Book> bookList = bookService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("bookList", bookList);
		mv.setViewName("book/books");
		return mv;
	}
	
	//ͨ��ͼ��id��ѯ
	@RequestMapping("bookInfo/{id}")
	public ModelAndView findByBookId(@PathVariable("id")Integer id, HttpSession session) throws Exception{
		HtmlStrPlus hPlus = new HtmlStrPlus();
		try {
			hPlus.htmlStrPlus(session);
		}catch (Exception e) {
			// TODO: handle exception
		}
		Book book = bookService.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("book", book);
		mv.setViewName("book/bookInfo");
		return mv;
	}
	@RequestMapping("bookInfo")
	public String bookInfo(Book book)throws Exception{
		return "book/bookInfo";
	}
	
//	/**
//	 * ���ͼ��ҳ��
//	 * @return
//	 * @throws Exception
//	 */
//	//��ת�����ͼ��ҳ��
//	@RequestMapping("/addBook")
//	public String addBook() throws Exception{
//		return "book/add";
//	}
//	//����û��Ĳ���
//	@RequestMapping(value="/add",method= {RequestMethod.POST})
//	public String add(Book book) throws Exception{
//		bookService.add(book);
//		//��ת��ע��ɹ�ҳ��
//		return "redirect:/book/books.action";
//	}
//	
//	/**
//	 * �޸��û�ҳ��
//	 * @param id
//	 * @return
//	 * @throws Exception
//	 */
//	@RequestMapping("editUI/{id}")
//	public ModelAndView editUI(@PathVariable("id")Integer id) throws Exception{
//		Book book=bookService.findById(id);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("book",book);
//		mv.setViewName("book/edit");
//		return mv;
//	}
//	@RequestMapping(value="/edit",method= {RequestMethod.POST})
//	public String edit(Book book) throws Exception{
//		bookService.modify(book);
//		return "redirect:/book/queryBook.action";
//	}
//	
//	/**
//	 * ɾ���û�ҳ��
//	 * @param id
//	 * @return
//	 * @throws Exception
//	 */
//	@RequestMapping(value="/delete")
//	public String delete(Integer id) throws Exception{
//		bookService.removeById(id);
//		return "redirect:/book/queryBook.action";
//	}
	
//	/**
//	 * ��¼ҳ��
//	 * @return
//	 * @throws Exception
//	 */
//	@RequestMapping("/loginUI")
//	public String loginUI() throws Exception{
//		return "book/login";
//	}
//	@RequestMapping(value="/login",method= {RequestMethod.POST})
//	public String login(@RequestParam("account")String account,@RequestParam("pwd")String pwd,HttpSession session,Model model) throws Exception{
//		List<Book> books = bookService.findByAccountAndPwd(account, pwd);
//		if (books!=null&&books.size()==1) {
//			session.setAttribute("session_book",books.get(0));
//			return "redirect:queryBook.action";
//		}else {
//			model.addAttribute("account", account);
//			model.addAttribute("errorMessage", "�û����������");
//			return "book/login";
//		}
//	}
}
