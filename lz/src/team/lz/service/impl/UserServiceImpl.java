package team.lz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.lz.bean.User;
import team.lz.mapper.UserMapper;
import team.lz.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> findAll() {
		return userMapper.selectAll();
	}

	@Override
	public User findById(Integer id) {
		return userMapper.selectById(id);
	}

	@Override
	public void add(User user) {
		userMapper.insert(user);
	}

	@Override
	public void modify(User user) {
		userMapper.update(user);
	}

	@Override
	public void removeById(Integer id) {
		userMapper.deleteById(id);
	}

	@Override
	public List<User> findByAccountAndPwd(String account, String pwd) {
		return userMapper.selectByAccountAndPwd(account, pwd);
	}

}
