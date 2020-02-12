package crm.mapper;

import java.util.List;

import crm.pojo.Role;

public interface RoleMapper {

		List<Role> list();
		
		void add(Role role);
		
		Role selectRole(String id);
		
		void update(Role role);
		
		void delete(int id);
}
