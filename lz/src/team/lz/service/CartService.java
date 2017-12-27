package team.lz.service;

import java.util.List;

import team.lz.bean.Cart;

public interface CartService {
	List<Cart> findAll();
	
	List<Cart> findByBookId(Integer bookId);//通过图书id查找
	
	List<Cart> findByUserId(Integer userId);//通过用户id查找
	
	Cart findById(Integer id);
	
	void add(Cart cart);
	
	void modify(Cart cart);
	
	void removeById(Integer id);
	
}
