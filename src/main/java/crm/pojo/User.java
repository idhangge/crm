package crm.pojo;

import java.sql.Timestamp;
//用户表
public class User {

	private int u_id;
	private String u_name;
	private String u_pwd;
	private int u_did;
	private int u_rid;
	private String u_sex;
	private String u_phone;
	private String u_addr;
	private int u_age;
	private String u_tel;
	private String u_card;
	private String u_email;
	private String u_qq;
	private String u_hobby;
	private String u_edu;
	private String u_money;
	private String u_nation;
	private String u_marry;
	private String u_remark;
	private Timestamp u_utime;
	private String departmentName;
	private String roleName;
	
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public int getU_did() {
		return u_did;
	}
	public void setU_did(int u_did) {
		this.u_did = u_did;
	}
	public int getU_rid() {
		return u_rid;
	}
	public void setU_rid(int u_rid) {
		this.u_rid = u_rid;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_addr() {
		return u_addr;
	}
	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}
	public int getU_age() {
		return u_age;
	}
	public void setU_age(int u_age) {
		this.u_age = u_age;
	}
	public String getU_tel() {
		return u_tel;
	}
	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}
	public String getU_card() {
		return u_card;
	}
	public void setU_card(String u_card) {
		this.u_card = u_card;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_qq() {
		return u_qq;
	}
	public void setU_qq(String u_qq) {
		this.u_qq = u_qq;
	}
	public String getU_hobby() {
		return u_hobby;
	}
	public void setU_hobby(String u_hobby) {
		this.u_hobby = u_hobby;
	}
	public String getU_edu() {
		return u_edu;
	}
	public void setU_edu(String u_edu) {
		this.u_edu = u_edu;
	}
	public String getU_money() {
		return u_money;
	}
	public void setU_money(String u_money) {
		this.u_money = u_money;
	}
	public String getU_nation() {
		return u_nation;
	}
	public void setU_nation(String u_nation) {
		this.u_nation = u_nation;
	}
	public String getU_marry() {
		return u_marry;
	}
	public void setU_marry(String u_marry) {
		this.u_marry = u_marry;
	}
	public String getU_remark() {
		return u_remark;
	}
	public void setU_remark(String u_remark) {
		this.u_remark = u_remark;
	}
	public Timestamp getU_utime() {
		return u_utime;
	}
	public void setU_utime(Timestamp u_utime) {
		this.u_utime = u_utime;
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_name=" + u_name + ", u_pwd=" + u_pwd + ", u_did=" + u_did + ", u_rid="
				+ u_rid + ", u_sex=" + u_sex + ", u_phone=" + u_phone + ", u_addr=" + u_addr + ", u_age=" + u_age
				+ ", u_tel=" + u_tel + ", u_card=" + u_card + ", u_email=" + u_email + ", u_qq=" + u_qq + ", u_hobby="
				+ u_hobby + ", u_edu=" + u_edu + ", u_money=" + u_money + ", u_nation=" + u_nation + ", u_marry="
				+ u_marry + ", u_remark=" + u_remark + ", u_utime=" + u_utime + ", departmentName=" + departmentName
				+ ", roleName=" + roleName + "]";
	}

	
	
	
	
	
}
