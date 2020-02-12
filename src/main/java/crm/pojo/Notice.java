package crm.pojo;

import java.sql.Timestamp;

public class Notice {
   private int n_id;
   private int n_uid;
   private int n_did;
   private String n_theme;
   private String n_content;
   private Timestamp n_beginTime;
   private Timestamp n_endTime;
   private String departmentName;
	private String userName;
	public int getN_id() {
		return n_id;
	}
	public void setN_id(int n_id) {
		this.n_id = n_id;
	}
	public int getN_uid() {
		return n_uid;
	}
	public void setN_uid(int n_uid) {
		this.n_uid = n_uid;
	}
	public int getN_did() {
		return n_did;
	}
	public void setN_did(int n_did) {
		this.n_did = n_did;
	}
	public String getN_theme() {
		return n_theme;
	}
	public void setN_theme(String n_theme) {
		this.n_theme = n_theme;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public Timestamp getN_beginTime() {
		return n_beginTime;
	}
	public void setN_beginTime(Timestamp n_beginTime) {
		this.n_beginTime = n_beginTime;
	}
	public Timestamp getN_endTime() {
		return n_endTime;
	}
	public void setN_endTime(Timestamp n_endTime) {
		this.n_endTime = n_endTime;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "Notice [n_id=" + n_id + ", n_uid=" + n_uid + ", n_did=" + n_did + ", n_theme=" + n_theme
				+ ", n_content=" + n_content + ", n_beginTime=" + n_beginTime + ", n_endTime=" + n_endTime
				+ ", departmentName=" + departmentName + ", userName=" + userName + "]";
	}

}
