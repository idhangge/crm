package crm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.mapper.UserMapper;
import crm.pojo.User;
import crm.service.UserService;
//逻辑业务层
@Service
public class UserServiceImpl implements UserService {
	//和mapper层连接
	@Autowired
	private UserMapper um;

	@Override
	public User validate(String username, String password) {
		//调用UserMapper.login方法
		User user = um.login(username, password);
		if (user != null) {

			return user;
		}

		return null;
	}

}
