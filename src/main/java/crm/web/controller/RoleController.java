package crm.web.controller;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import crm.pojo.Role;
import crm.service.RoleService;

@Controller
@RequestMapping("/admin/role")
public class RoleController {

	@Autowired
	private RoleService rs;
	//查询
	@RequestMapping("/list.action")
	public String list(Model model) {
		List<Role> list = rs.list();
		model.addAttribute("list", list);

		return "/role/roleList";
	}
	//跳转到添加角色界面
	@RequestMapping("/addRole.action")
	public String toAddRole(){
		
		return "/role/addRole";
	}
	//添加
	@RequestMapping("/add.action")
	public String add(Role role) {
		role.setR_utime(new Timestamp(System.currentTimeMillis()));
		rs.add(role);
		return "redirect:/admin/role/list.action";
	}
	
	//编辑
	//1.跳转到编辑页面,并携带参数
	@RequestMapping("/queryById.action")
	public String toUpdate(String id,Model model) {
		Role role = rs.selectRole(id);
		model.addAttribute("role",role);
		
		return "/role/updateRole";
	}
	//2.编辑角色
	@RequestMapping("/update.action")
	public String Update(Role role){
		//通常根据主键id值进行编辑
		role.setR_utime(new Timestamp(System.currentTimeMillis()));
		rs.update(role);
		return "redirect:/admin/role/list.action";
	}

	@RequestMapping("/delete.action")
	public String delete(int id){
		//通常根据主键id值进行删除
		rs.delete(id);
		return "redirect:/admin/role/list.action";
	}

}
