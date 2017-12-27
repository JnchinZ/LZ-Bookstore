package team.lz.mapper;

import java.util.List;

import org.mybatis.spring.annotation.Mapper;

import team.lz.bean.User;

@Mapper
public interface UserMapper {
	List<User> selectAll();

	void insert(User user);
	
	void update(User user);
	
	void deleteById(Integer id);
	
	User selectById(Integer id);

	List<User> selectByAccountAndPwd(String account, String pwd);
}
