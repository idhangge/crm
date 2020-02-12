package crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.remoting.rmi.RmiBasedExporter;
import org.springframework.stereotype.Service;

import crm.mapper.RoleMapper;
import crm.pojo.Role;
import crm.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper rm;
	
	@Override
	public List<Role> list() {
		return rm.list();
	}

	@Override
	public void add(Role role) {
		
		rm.add(role);
	}

	@Override
	public Role selectRole(String id) {
		return rm.selectRole(id);
	}
	@Override
	public void update(Role role) {
		rm.update(role);
		
	}

	@Override
	public void delete(int id) {
		rm.delete(id);
		
	}

	
	
}
