package team.lz.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import team.lz.bean.Cart;
import team.lz.bean.User;
import team.lz.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;
	private User user;
	private Cart cart;
//	/**
//	 * 购物车图书查询页面
//	 * @return
//	 * @throws Exception
//	 */	
//	@RequestMapping(value="/yourCart",method={RequestMethod.GET})
//	public ModelAndView cartCarts() throws Exception {
//		List<Cart> cartList = cartService.findAll();
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("cartList", cartList);
//		mv.setViewName("user/cart");
//		return mv;
//	}
//	/**
//	 * 购物车添加图书页面
//	 * @return
//	 * @throws Exception
//	 */
	//添加或删除图书
	@RequestMapping("editCart/{userId}")
	public ModelAndView editCart(@PathVariable("userId")Integer userId, HttpSession session) throws Exception{
		String set_view_name = "user/cart";
		try {
			user = (User) session.getAttribute("session_user");
		}catch (Exception e) {
			set_view_name = "user/login";
		}
		List<Cart> cartList=cartService.findByUserId(userId);
		ModelAndView mv = new ModelAndView();
		mv.addObject("cartList",cartList);
		mv.setViewName(set_view_name);
		return mv;
	}
	//添加至购物车
	@RequestMapping("addToCart/{bookId}")
	public String addToCart(@PathVariable("bookId")Integer bookId, HttpSession session) throws Exception{
		cart.setId(bookId);//将cartId默认设为bookId
		cart.setBookId(bookId);
		cart.setBookNum(cart.getBookNum()+1);
		
		try {
			user = (User) session.getAttribute("session_user");
			cart.setUserId(user.getId());
			cartService.add(cart);
			return "book/bookInfo/{bookId}";
		} catch(Exception e) {
			return "redirect:/user/loginUI.action";
		}
		

	}
	//加号
	@RequestMapping("plus/{bookId}")
	public String plus(@PathVariable("bookId")Integer bookId, HttpSession session) throws Exception{
		try {
			user = (User) session.getAttribute("session_user");
			cart.setBookId(bookId);
			cart.setUserId(user.getId());
			cart.setBookNum(cart.getBookNum()+1);
			return "redirect:/cart/edit.action";
		}catch (Exception e) {
			return "redirect:/user/loginUI.action";
		}
	}
	//减号
	@RequestMapping("minus/{bookId}")
	public String minus(@PathVariable("bookId")Integer bookId, HttpSession session) throws Exception{
		try {
			user = (User) session.getAttribute("session_user");
			cart.setBookId(bookId);
			cart.setUserId(user.getId());
			cart.setBookNum(cart.getBookNum()-1);
			return "redirect:/cart/edit.action";
		}catch (Exception e) {
			return "redirect:/user/loginUI.action";
		}
	}
	@RequestMapping(value="/edit",method= {RequestMethod.GET})
	public String edit(Cart cart) throws Exception{
		cartService.modify(cart);
		return "redirect:editCart/"+user.getId();
	}

	/**
	 * 从购物车删除商品操作
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/delete/{bookId}")
	public String delete(@PathVariable("bookId")Integer bookId) throws Exception{
		cartService.removeById(bookId);
		return "redirect:/cart/editCart/"+user.getId();
	}
	
	/**
	 * 订单查询
	 * @param session 
	 */
	@RequestMapping("bill/{userId}")
	public String bill(@PathVariable("userId")Integer userId, HttpSession session) throws Exception{
		try {
			user = (User) session.getAttribute("session_user");
			cart.setBookId(userId);
			cart.setUserId(user.getId());
			cart.setBookNum(cart.getBookNum()+1);
			return "redirect:/cart/billOk/";
		}catch (Exception e) {
			return "redirect:/cart/billOk/";
		}
		
	}
	@RequestMapping("billOk")
	public String billOk()throws Exception{
		return "user/billOk";
	}
}
