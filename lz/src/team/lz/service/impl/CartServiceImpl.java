package team.lz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.lz.bean.Cart;
import team.lz.mapper.CartMapper;
import team.lz.service.CartService;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartMapper cartMapper;

	@Override
	public List<Cart> findAll() {
		return cartMapper.selectAll();
	}

	@Override
	public Cart findById(Integer id) {
		return cartMapper.selectById(id);
	}

	@Override
	public void add(Cart cart) {
		cartMapper.insert(cart);
	}

	@Override
	public void modify(Cart cart) {
		cartMapper.update(cart);
	}

	@Override
	public void removeById(Integer id) {
		cartMapper.deleteById(id);
	}

	@Override
	public List<Cart> findByBookId(Integer bookId) {
		return cartMapper.selectByBookId(bookId);
	}

	@Override
	public List<Cart> findByUserId(Integer userId) {
		return cartMapper.selectByUserId(userId);
	}
}
