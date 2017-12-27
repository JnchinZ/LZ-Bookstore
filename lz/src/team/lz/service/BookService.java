package team.lz.service;

import java.util.List;

import team.lz.bean.Book;

public interface BookService {
	List<Book> findAll();
	
	List<Book> findByFuzzy(String str);
	
	Book findById(Integer id);
	
	void add(Book book);
	
	void modify(Book book);
	
	void removeById(Integer id);
	
}
