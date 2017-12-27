package team.lz.mapper;

import java.util.List;

import org.mybatis.spring.annotation.Mapper;

import team.lz.bean.Cart;


@Mapper
public interface CartMapper {
	List<Cart> selectAll();
	
	List<Cart> selectByBookId(Integer bookId);//ͨ��ͼ��id����
	
	List<Cart> selectByUserId(Integer userId);//ͨ���û�id����
	
	Cart selectById(Integer id);
	
	void insert(Cart cart);
	
	void update(Cart cart);
	
	void deleteById(Integer id);
}
