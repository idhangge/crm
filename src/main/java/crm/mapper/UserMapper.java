package crm.mapper;

import org.apache.ibatis.annotations.Param;

import crm.pojo.User;

public interface UserMapper {
	 
	//登录校验
	//注意返回的类型是User @Param强制转换类型
	User login(@Param("u_name") String u_name, @Param("u_pwd") String u_pwd);
	
}
