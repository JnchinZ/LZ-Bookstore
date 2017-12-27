package team.lz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.lz.bean.Book;
import team.lz.mapper.BookMapper;
import team.lz.service.BookService;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookMapper bookMapper;

	@Override
	public List<Book> findAll() {
		return bookMapper.selectAll();
	}

	@Override
	public Book findById(Integer id) {
		return bookMapper.selectById(id);
	}

	@Override
	public void add(Book book) {
		bookMapper.insert(book);
	}

	@Override
	public void modify(Book book) {
		bookMapper.update(book);
	}

	@Override
	public void removeById(Integer id) {
		bookMapper.deleteById(id);
	}

	@Override
	public List<Book> findByFuzzy(String str) {
		return bookMapper.selectByFuzzy(str);
	}

}
