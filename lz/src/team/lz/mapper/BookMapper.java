package team.lz.mapper;

import java.util.List;

import org.mybatis.spring.annotation.Mapper;

import team.lz.bean.Book;

@Mapper
public interface BookMapper {
	List<Book> selectAll();
	
	List<Book> selectByFuzzy(String str);
	
	Book selectById(Integer id);
	
	void insert(Book book);
	
	void update(Book book);
	
	void deleteById(Integer id);

}
