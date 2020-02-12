package crm.pojo;

import java.sql.Timestamp;

public class Role {

	private int r_id;
	private String r_name;
	private String r_desc;
	private Timestamp r_utime;
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_desc() {
		return r_desc;
	}
	public void setR_desc(String r_desc) {
		this.r_desc = r_desc;
	}
	public Timestamp getR_utime() {
		return r_utime;
	}
	public void setR_utime(Timestamp r_utime) {
		this.r_utime = r_utime;
	}
	@Override
	public String toString() {
		return "Role [r_id=" + r_id + ", r_name=" + r_name + ", r_desc=" + r_desc + ", r_utime=" + r_utime + "]";
	}
	

}
