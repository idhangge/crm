package crm.pojo;

import java.sql.Timestamp;

public class Department {
	
	private int d_id;  //id id名称
	private String d_name; //name 岗位名称
	private String d_desc;  //desc 岗位描述
	private Timestamp d_utime;  //time 时间
     //alt+shift+s  快捷键 选GGS alt+shift+s快捷键 之后选GTS
	public int getD_id() {
		return d_id;
	}
	public void setD_id(int d_id) {
		this.d_id = d_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_desc() {
		return d_desc;
	}
	public void setD_desc(String d_desc) {
		this.d_desc = d_desc;
	}
	public Timestamp getD_utime() {
		return d_utime;
	}
	public void setD_utime(Timestamp d_utime) {
		this.d_utime = d_utime;
	}
	@Override
	public String toString() {
		return "Department [d_id=" + d_id + ", d_name=" + d_name + ", d_desc=" + d_desc + ", d_utime=" + d_utime + "]";
	}
	
	
}
