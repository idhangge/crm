package crm.service;

import java.util.List;

import crm.pojo.Role;

public interface RoleService {

	List<Role> list();
	
	void add(Role role);
	Role selectRole(String id);
	void update(Role role);

	void delete(int id);

	
}
