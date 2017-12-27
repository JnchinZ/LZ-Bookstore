package team.lz.service;

import java.util.List;

import team.lz.bean.User;

public interface UserService {
	List<User> findAll();
	
	User findById(Integer id);
	
	void add(User user);
	
	void modify(User user);
	
	void removeById(Integer id);
	
	List<User> findByAccountAndPwd(String account, String pwd);
}
