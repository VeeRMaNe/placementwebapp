package newproject;

public class Admin {
	String adminid;
	String adminpass;
	public Admin(String adminid, String adminpass) {
		super();
		this.adminid = adminid;
		this.adminpass = adminpass;
	}
	public Admin() {
		super();
	}
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getAdminpass() {
		return adminpass;
	}
	public void setAdminpass(String adminpass) {
		this.adminpass = adminpass;
	}
	
	
	

}
