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
public class HomepageController {
	@Autowired
	private BookService bookService;

	@RequestMapping(value="/",method= {RequestMethod.GET})
	public ModelAndView indexPage(HttpSession session) throws Exception{
		HtmlStrPlus hPlus = new HtmlStrPlus();
		try {
			hPlus.htmlStrPlus(session);
		}catch (Exception e) {
			// TODO: handle exception
		}
		List<Book> readingList = bookService.findAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("readingList", readingList);
		mav.setViewName("index");
		return mav;
	}
	
	//Ä£ºý²éÑ¯
	@RequestMapping(value="/dimQuery",method= {RequestMethod.POST})
	public ModelAndView dimQuery(@PathVariable("Search")String str, HttpSession session)throws Exception{
		HtmlStrPlus hPlus = new HtmlStrPlus();
		try {
			hPlus.htmlStrPlus(session);
		}catch (Exception e) {
			// TODO: handle exception
		}
		List<Book> readingList = bookService.findByFuzzy(str);
		ModelAndView mav = new ModelAndView();
		mav.addObject("readingList", readingList);
		mav.setViewName("book/readings");
		return mav;
	}
}
