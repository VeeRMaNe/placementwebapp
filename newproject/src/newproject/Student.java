package newproject;

public class Student {
	private String prn;
	private String pass,fname,mname,lname,email,gender,address,dob,branch,skills,phoneno;
	private String sscmarks,hscmarks,diploma,ugmarks;
    boolean status;
    public Student() {
		super();
    }
    
	public Student(String prn, String pass, String fname, String mname, String lname, String email, String gender,
			String address, String dob, String branch, String skills, String phoneno, String sscmarks, String hscmarks,
			String diploma, String ugmarks, boolean status) {
		super();
		this.prn = prn;
		this.pass = pass;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.email = email;
		this.gender = gender;
		this.address = address;
		this.dob = dob;
		this.branch = branch;
		this.skills = skills;
		this.phoneno = phoneno;
		this.sscmarks = sscmarks;
		this.hscmarks = hscmarks;
		this.diploma = diploma;
		this.ugmarks = ugmarks;
		this.status = status;
	}

	public Student(String gender, String address, String dob, String branch, String skills, String phoneno,
			String sscmarks, String hscmarks, String diploma, String ugmarks, boolean status) {
		super();
		this.gender = gender;
		this.address = address;
		this.dob = dob;
		this.branch = branch;
		this.skills = skills;
		this.phoneno = phoneno;
		this.sscmarks = sscmarks;
		this.hscmarks = hscmarks;
		this.diploma = diploma;
		this.ugmarks = ugmarks;
		this.status = status;
	}

	public Student(String prn, String pass, String fname, String mname, String lname, String email) {
		super();
		this.prn = prn;
		this.pass = pass;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.email = email;
	}

	public String getPrn() {
		return prn;
	}
	public void setPrn(String prn) {
		this.prn = prn;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getSscmarks() {
		return sscmarks;
	}
	public void setSscmarks(String sscmarks) {
		this.sscmarks = sscmarks;
	}
	public String getHscmarks() {
		return hscmarks;
	}
	public void setHscmarks(String hscmarks) {
		this.hscmarks = hscmarks;
	}
	public String getDiploma() {
		return diploma;
	}
	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}
	public String getUgmarks() {
		return ugmarks;
	}
	public void setUgmarks(String ugmarks) {
		this.ugmarks = ugmarks;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
}
