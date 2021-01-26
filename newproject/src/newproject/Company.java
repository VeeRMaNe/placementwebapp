package newproject;


public class Company {
	
	private String compid;
	private String compname;
	private String comppass;
	private String criteria;
	private String role;
	private String date;
	
	
	public Company() {
		super();
	}
	public Company(String compid, String compname, String comppass, String criteria, String role, String date) {
		super();
		this.compid = compid;
		this.compname = compname;
		this.comppass = comppass;
		this.criteria = criteria;
		this.role = role;
		this.date = date;
	}
	public String getCompid() {
		return compid;
	}
	public void setCompid(String compid) {
		this.compid = compid;
	}
	public String getCompname() {
		return compname;
	}
	public void setCompname(String compname) {
		this.compname = compname;
	}
	public String getComppass() {
		return comppass;
	}
	public void setComppass(String comppass) {
		this.comppass = comppass;
	}
	public String getCriteria() {
		return criteria;
	}
	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	

}
