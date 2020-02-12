package crm.service;



import crm.pojo.User;

public interface UserService {

	
	 User validate(String username, String password);
}
