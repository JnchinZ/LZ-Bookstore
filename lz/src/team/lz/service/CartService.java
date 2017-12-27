package team.lz.service;

import java.util.List;

import team.lz.bean.Cart;

public interface CartService {
	List<Cart> findAll();
	
	List<Cart> findByBookId(Integer bookId);//ͨ��ͼ��id����
	
	List<Cart> findByUserId(Integer userId);//ͨ���û�id����
	
	Cart findById(Integer id);
	
	void add(Cart cart);
	
	void modify(Cart cart);
	
	void removeById(Integer id);
	
}
