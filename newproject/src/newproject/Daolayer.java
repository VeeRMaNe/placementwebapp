package newproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Daolayer {
	private static Connection conn;
	public static Daolayer db;
		public Daolayer() {
			String driver="com.mysql.cj.jdbc.Driver";
			String url="jdbc:mysql://localhost/placementproject";
			String uname="root";
			String pwd="root";
			try {
				Class.forName(driver);
				conn=DriverManager.getConnection(url,uname,pwd);
				System.out.println("connected");
			}catch(Exception e) {
				//System.out.println("hii");
				System.out.println(e);
			}
		}
		
		private static final String INSERT_STUDENTS_SQL = "INSERT INTO STUDENTS" + "  (prn,fname,mname,lname, email,pass) VALUES "
				+ " (?, ?, ?, ?, ?, ?);";

		private static final String SELECT_STUDENTS_BY_PRN = "select prn,fname,mname,lname,email,pass from students where prn =?;";
		private static final String SELECT_ALL_STUDENTS = "select * from students;";
		private static final String DELETE_STUDENTS_SQL = "delete from students where prn = ?;";
		private static final String UPDATE_STUDENTS_SQL = "update students set fname = ?,mname = ?,lname = ?,email= ?, pass =? where prn = ?;";
		
		
		
		private static final String INSERT_COMPANIES_SQL = "INSERT INTO COMPANIES" + "  (compid,compname,comppass,criteria, role,date) VALUES "
				+ " (?, ?, ?, ?, ?, ?);";

		private static final String SELECT_COMPANIES_BY_ID = "select compid,compname,comppass,criteria, role,date from companies where compid =?;";
		private static final String SELECT_ALL_COMPANIES = "select * from companies;";
		private static final String DELETE_COMPANIES_SQL = "delete from companies where compid = ?;";
		private static final String UPDATE_COMPANIES_SQL = "update companies set compname = ?,comppass = ?,criteria= ?, role =?, date =? where compid = ?;";
		
		
	    public static Daolayer getInstance() {
	        if (db == null)
	        {
	            db = new Daolayer();
	        }
	        return db;
	    }
	    
	    //Admin Authenication
	    public static boolean getAdminLogin(Admin s) {
	    	boolean st=false;
	    	Daolayer.getInstance();
	    	try {System.out.println("getting Admin  data");
	    		String query="select * from admin where adminid=? and adminpass=?";
	    		PreparedStatement ps=conn.prepareStatement(query);
	    		ps.setString(1, s.getAdminid());
	    		ps.setString(2, s.getAdminpass());
	    		ResultSet rs=ps.executeQuery();
	    		while(rs.next()) {
	    			st=true;break;
	    		}
	    	}catch(Exception e) {
	    		System.out.println(e);
	    	}
	    	return st;
}
	    
	    //add student by admin
	    public static boolean addstudent(Student s) {
	    	Daolayer.getInstance();
	    	boolean sta=false;
	    	System.out.println("adding student details");
	    	try {
	    		String query="INSERT INTO students" + "  (prn,fname,mname,lname,pass,email) VALUES "
	    				+ " (?, ?, ?, ?, ?, ?);";
	    		PreparedStatement ps =conn.prepareStatement(query);
	    		ps.setString(1,s.getPrn());
	    		ps.setString(2, s.getFname());
	    		ps.setString(3,s.getMname());
	    		ps.setString(4,s.getLname());
	    		ps.setString(5,s.getPass());
	    		ps.setString(6,s.getEmail());
	    		int i=ps.executeUpdate();
	    		System.out.println(i);
	    		if(i>0)
	    			sta=true;
	    	}catch (Exception e) {
	    		System.out.println(e);
	    	}
	    	return sta;
	    	}
	    
	    
	    //display the list of student in the admin page
	    public static List<Student>getstudentlist(){
	    	Daolayer.getInstance();
	    	List<Student> l = new ArrayList<Student>();
	    	System.out.println("getting ");
	    	try {
	    	String query="select * from students";
	    	PreparedStatement stmt=conn.prepareStatement(query);
	    	ResultSet ra=stmt.executeQuery();
	    	while(ra.next())
	    	{
	    		Student s = new Student();
	            s.setPrn(ra.getString("prn"));
	    		s.setEmail(ra.getString("email"));
	    		s.setFname(ra.getString("fname"));
	    		s.setLname(ra.getString("lname"));
	    		s.setMname(ra.getString("mname"));
	    		s.setPass(ra.getString("pass"));
	    		l.add(s);
	    	}
	    	}catch(Exception e) {
	    			System.out.println(e);
	    		}
	    		return l;
	    	
	    }

	    
	    
	    //Get the specific student for editing purpose
	    public static Student getstudentdetails(String prn){ 
	    	Student student =null;
			Daolayer.getInstance();
			// Step 1: Establishing a Connection
			try (
					// Step 2:Create a statement using connection object
					PreparedStatement ps = conn.prepareStatement(SELECT_STUDENTS_BY_PRN);) {
				ps.setString(1, prn);
				System.out.println(ps);
				// Step 3: Execute the query or update query
				ResultSet rs = ps.executeQuery();

				// Step 4: Process the ResultSet object.
				while (rs.next()) {
				
					String fname = rs.getString("fname");
					String mname = rs.getString("mname");
					String lname = rs.getString("lname");	
					String email = rs.getString("email");
					String pass = rs.getString("pass");
					student = new Student ();
					student.setFname(fname);
					student.setMname(mname);
					student.setLname(lname);
					student.setEmail(email);
					student.setPass(pass);
					student.setPrn(prn);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return student ;
		}

	    
	    
	    
	    
	    
	    
	 // update student  by  the admin
		public static boolean AdminstudentUpdate(Student student) {
			boolean st=false;
	    	int abc=0;
	    	Daolayer.getInstance();
	    		System.out.println("starting to updating password");
				try (
						PreparedStatement statement = conn.prepareStatement(UPDATE_STUDENTS_SQL);) {
			
					System.out.println(student.getFname()+student.getMname()+student.getLname()+ student.getEmail()+student.getPass()+student.getPrn());
					statement.setString(1, student.getFname());
					statement.setString(2, student.getMname());
					statement.setString(3, student.getLname());
					statement.setString(4, student.getEmail());
					statement.setString(5, student.getPass());
					statement.setString(6, student.getPrn());
					System.out.println("updated student:"+statement);
					abc = statement.executeUpdate();
					if(abc >= 1)
						st=true;
				
			}

		catch(SQLException e) {
			e.printStackTrace();
		}
				return st;
	    
	    }

		
		
		//delete student by the admin
		public static boolean deletestudent(String prn)  {
			System.out.println(prn);
			boolean rowDeleted=false;
			try (
					PreparedStatement statement = conn.prepareStatement(DELETE_STUDENTS_SQL);) {
				statement.setString(1, prn);
				int x = statement.executeUpdate();
				if(x>=1)
					rowDeleted= true;
				else
					rowDeleted=false;
			}
			catch(SQLException e) {
				e.printStackTrace();
				
			}
			
			return rowDeleted;
		}
		
		 //student authenication to log in the student home page
	    public static boolean getstudentLogin(Student s) {
	    	boolean st=false;
	    	Daolayer.getInstance();
	    	try {System.out.println("getting login data");
	    		String query="select * from students where prn=? and pass=?";
	    		PreparedStatement ps=conn.prepareStatement(query);
	    		ps.setString(1, s.getPrn());
	    		ps.setString(2, s.getPass());
	    		ResultSet rs=ps.executeQuery();
	    		while(rs.next()) {
	    		
	    		String fname = rs.getString("fname");
	    		s.setFname(fname);
	    			st=true;
	    		}
	    	}catch(Exception e) {
	    		System.out.println(e);
	    	}
	    	return st;

	    }
	    
	    //data giving to the student profile by the admin
	    public static List<Student>StudentdetailsAdmin(String prn){
	    	Daolayer.getInstance();
	    	List<Student> l = new ArrayList<Student>();
	    	System.out.println(prn);
	    	System.out.println("getting ");
	    	try {
	    	String query="select * from students where prn=?";
	    	PreparedStatement stmt=conn.prepareStatement(query);
	    	stmt.setString(1, prn);
	    	ResultSet ra=stmt.executeQuery();
	    	while(ra.next())
	    	{
	    		Student s = new Student();
	    		s.setEmail(ra.getString("email"));
	    		s.setFname(ra.getString("fname"));
	    		s.setLname(ra.getString("lname"));
	    		s.setMname(ra.getString("mname"));
	    		l.add(s);
	    	}
	    	}catch(Exception e) {
	    			System.out.println(e);
	    		}
	    		return l;
	    	
	    }
	    


	  //data giving to the student profile by the admin
	    public static List<Student>StudentProfilDetail(String prn){
	    	Daolayer.getInstance();
	    	List<Student> l = new ArrayList<Student>();
	    	System.out.println(prn);
	    	System.out.println("getting ");
	    	try {
	    	String query="select * from students where prn=?";
	    	PreparedStatement stmt=conn.prepareStatement(query);
	    	stmt.setString(1, prn);
	    	ResultSet ra=stmt.executeQuery();
	    	while(ra.next())
	    	{
	    		Student s = new Student();
	    		s.setEmail(ra.getString("email"));
	    		s.setFname(ra.getString("fname"));
	    		s.setLname(ra.getString("lname"));
	    		s.setMname(ra.getString("mname"));
	    		s.setAddress(ra.getString("address"));
	    		s.setBranch(ra.getString("branch"));
	    		s.setDiploma(ra.getString("diploma"));
	    		s.setDob(ra.getString("dob"));
	    		s.setSscmarks(ra.getString("sscmarks"));
	    		s.setHscmarks(ra.getString("hscmarks"));
	    		s.setUgmarks(ra.getString("ugmarks"));
	    		s.setSkills(ra.getString("skills"));
	    		s.setGender(ra.getString("gender"));
	    		s.setPhoneno(ra.getString("phoneno"));
	    		
	    		l.add(s);
	    	}
	    	}catch(Exception e) {
	    			System.out.println(e);
	    		}
	    		return l;
	    	
	    }
	    
	    public static boolean insertStudent(Student sde,String prn) {
	    	boolean update=false;
	    	try {
	    		
	    		String query="update students set address=?,gender=?,dob=?,branch=?,skills=?,phoneno=?,sscmarks=?,hscmarks=?,diploma=?,ugmarks=? where prn = ?;";
	    		PreparedStatement ps = conn.prepareStatement(query);
	    		
	    		ps.setString(1,sde.getAddress());
	    		ps.setString(2,sde.getGender());
	    		ps.setString(3, sde.getDob());
	    		ps.setString(4,sde.getBranch());
	    		ps.setString(5,sde.getSkills());
	    		ps.setString(6, sde.getPhoneno());
	    		ps.setString(7,sde.getSscmarks());
	    		ps.setString(8,sde.getHscmarks());
	    		ps.setString(9,sde.getDiploma());
	    		ps.setString(10,sde.getUgmarks());
	    		ps.setString(11,prn);
	    		
	    		int x=ps.executeUpdate();
	    		if(x>=1) {
	    			update=true;
	    		}
	    		else
	    		{
	    			update=false;
	    		}
	    		
	    		
	    	}
	    	catch(Exception e) {
	    		System.out.println(e);
	    		update=false;
	    		
	    	}
	    	
	    	return update;
	    	
	    }
	    
		
	    
	    
	 // insert company
	 		public static boolean insertcompany(Company c) {
	 			Daolayer.getInstance();
	 			boolean sta=false;
	 			System.out.println("adding company details");
	 	
	 			try (
	 					PreparedStatement preparedStatement = conn.prepareStatement(INSERT_COMPANIES_SQL)) {
	 				preparedStatement.setString(1, c.getCompid());
	 				preparedStatement.setString(2, c.getCompname());
	 				preparedStatement.setString(3, c.getComppass());
	 				preparedStatement.setString(4, c.getCriteria());
	 				preparedStatement.setString(5, c.getRole());
	 				preparedStatement.setString(6, c.getDate());
	 				int i=preparedStatement.executeUpdate();
		    		System.out.println(i);
		    		if(i>0)
		    			sta=true;
	 			} catch (SQLException e) {
	 				System.out.println(e);
	 			}
	 			return sta;
	 		}


	    
	 		
	 		//list company
			public static List<Company>selectallcompanies() {
		    	Daolayer.getInstance();
				
				List<Company> l = new ArrayList<Company>();
				System.out.println("getting ");
			try (
					PreparedStatement preparedStatement = conn.prepareStatement(SELECT_ALL_COMPANIES);){
					System.out.println(preparedStatement);
				
					ResultSet rs = preparedStatement.executeQuery();

					while (rs.next()) {
						Company c =new Company();
						c.setCompid (rs.getString("compid"));
						c.setCompname (rs.getString("compname"));
						c.setComppass (rs.getString("comppass"));
						c.setCriteria (rs.getString("criteria"));
						c.setRole (rs.getString("role"));
						c.setDate (rs.getString("date"));
						l.add(c);
						
					}
				} catch (SQLException e) {
				System.out.println(e);
				}
				return l;
			}
			
			
			   //Get the specific company for editing purpose
		    public static Company getcompanydetails(String compid){ 
		    	Company company =null;
				Daolayer.getInstance();
				// Step 1: Establishing a Connection
				try (
						// Step 2:Create a statement using connection object
						PreparedStatement ps = conn.prepareStatement(SELECT_COMPANIES_BY_ID);) {
					ps.setString(1, compid);
					System.out.println(ps);
					// Step 3: Execute the query or update query
					ResultSet rs = ps.executeQuery();

					// Step 4: Process the ResultSet object.
					while (rs.next()) {
					
						String compname = rs.getString("compname");
						String criteria= rs.getString("criteria");
						String date= rs.getString("date");	
						String role = rs.getString("role");
						String comppass = rs.getString("comppass");
				          company = new Company();
				          company.setCompname(compname);
				          company.setCriteria(criteria);
				          company.setDate(date);
				          company.setRole(role);
				          company.setComppass(comppass);
				          company.setCompid(compid);
					}
				}
						
				catch (SQLException e) {
					e.printStackTrace();
				}
				return company ;
			}
		    
		    
		    // update company  by  the admin
			public static boolean AdminCompanyUpdate(Company company) {
				boolean st=false;
		    	int abc=0;
		    	Daolayer.getInstance();
		    		System.out.println("starting to updating the company by admin");
					try (
							PreparedStatement statement = conn.prepareStatement(UPDATE_COMPANIES_SQL );) {
					//	"update compnies set compname = ?,comppass = ?,criteria= ?, role =?, date =? where compid = ?;"
				
						statement.setString(1, company.getCompname());
						statement.setString(2, company.getComppass());
						statement.setString(3, company.getCriteria());
						statement.setString(4, company.getRole());
						statement.setString(5, company.getDate());
						statement.setString(6, company.getCompid());
						System.out.println("updated company:"+statement);
						abc = statement.executeUpdate();
						if(abc >= 1)
							st=true;
					
				}

			catch(SQLException e) {
				e.printStackTrace();
			}
					return st;
		    
		    }
			
			
			
			//delete company by admin
			public static boolean deletecompany(String prn)  {
				System.out.println(prn);
				boolean rowDeleted=false;
				try (
						PreparedStatement statement = conn.prepareStatement( DELETE_COMPANIES_SQL);) {
					statement.setString(1, prn);
					int x = statement.executeUpdate();
					if(x>=1)
						rowDeleted= true;
					else
						rowDeleted=false;
				}
				catch(SQLException e) {
					e.printStackTrace();
					
				}
				
				return rowDeleted;
			}


			
			
			//student password change
			  public static boolean Studentupdatepassword(String currentp,String newpass,String confirmpass,String prn) {
			    	boolean st=false;
			    	int abc=0;
			    	Daolayer.getInstance();
			    	try {
			    		System.out.println("starting to updating password");
			    		
			    		String query="select * from students where pass=? and prn=?";
			    		PreparedStatement ps=conn.prepareStatement(query);
			    		ps.setString(1, currentp);
			    		ps.setString(2, prn);
			    		ResultSet rs=ps.executeQuery();
			  
			    		while(rs.next()) {
			    			if(newpass.equals(confirmpass)) {
			    				
			    				String query1="update students Set pass=? where prn=?";
			    				PreparedStatement ps1=conn.prepareStatement(query1);
			    				ps1.setString(1, newpass);
			    				ps1.setString(2, prn);
			    				int a=ps1.executeUpdate();
			    				if(a>0)
			    					st=true;
			    			}
			    		}
			    		
			    	}catch(Exception e)
			    	{
			    		System.out.println(e);
			    	}
			    	return st;
			    }
			  
	    
	    
		
	    public static boolean getStudentInfo (String prn, String compname) {
	    	
	    	boolean info=false;
	    	Daolayer.getInstance();
	    	try{
	    		String select = "select * from students where prn=?";
	    		PreparedStatement ps = conn.prepareStatement(select);
	    		ps.setString(1, prn);
	    		ResultSet res = ps.executeQuery();
	    		if(res.next()) {
	    			String fname = res.getString("fname");
	    			String lname = res.getString("lname");
	    			String sscmarks = res.getString("sscmarks");
	    			String hscmarks = res.getString("hscmarks");
	    			String diploma = res.getString("diploma");
	    			String ugmarks = res.getString("ugmarks");
	    			String email = res.getString("email");
	    			String branch = res.getString("branch");
	    			
	    			//checking by compname and prn
	    			String get = "select * from info where prn=? and compname=? ";
	    			PreparedStatement ps1 = conn.prepareStatement(get);
		    		ps1.setString(1, prn);
		    		ps1.setString(2,compname);
		    		ResultSet res1 = ps1.executeQuery();
	    			if(res1.next()) {
	    				String update_info = "update info set fname=?,lname=?,sscmarks=?,hscmarks=?,diploma=?,ugmarks=?,branch=?,email=? where prn=? and compname=?";
	    				PreparedStatement ps2 = conn.prepareStatement(update_info);
		    		
		    			ps2.setString(1, fname);	
		    			ps2.setString(2, lname);
		    			ps2.setString(3, sscmarks);
		    			ps2.setString(4, hscmarks);
		    			ps2.setString(5, diploma);
		    			ps2.setString(6, ugmarks);
		    			ps2.setString(7, branch);
		    			ps2.setString(8, email);
		    			ps2.setString(9, prn);
		    			ps2.setString(10, compname);
		    			int x = ps2.executeUpdate();
		    			if(x>=1) {
		    				info = true;
		    			}
		    			else {
		    				info = false;
		    			}
		    			
	    			}
	    			else {
	    				//inserting into info table 
		    			String insert= "insert into info(prn, compname, fname, lname, sscmarks, hscmarks, diploma, ugmarks, branch, email)"
		    					+ " values(?,?,?,?,?,?,?,?,?,?)";
		    			PreparedStatement ps2 = conn.prepareStatement(insert);
		    			ps2.setString(1, prn);
		    			ps2.setString(2, compname);
		    			ps2.setString(3, fname);	
		    			ps2.setString(4, lname);
		    			ps2.setString(5, sscmarks);
		    			ps2.setString(6, hscmarks);
		    			ps2.setString(7, diploma);
		    			ps2.setString(8, ugmarks);
		    			ps2.setString(9, branch);
		    			ps2.setString(10, email);
		    			int x = ps2.executeUpdate();
		    			if(x>=1) {
		    				info = true;
		    			}
		    			else {
		    				info = false;
		    			}
		    			
		    		}
		    	
	    			}
	    		
	    		else {
	    			info = false;
	    		}
	    		
	    		
	    	}
	    	catch(Exception e) {
	    		
	    		e.printStackTrace();
	    	}
	    	return info;
	   
	    }
			   
	    //Getting company name
	    public static String getCompanyName(String compid) {
	    	
	    	String compname=null;
	    	Daolayer.getInstance();
	    	
	    	try {
	    		
				String sel = "select compname from companies where compid =?";
				PreparedStatement ps = conn.prepareStatement(sel);
				ps.setString(1, compid);
				ResultSet res = ps.executeQuery();
		
				if(res.next()) {
					
					 compname = res.getString("compname");
					
					System.out.println(compname);
					
				}
				else {
					System.out.println("No data");
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				
			}
	    	return compname;
	    }
		    
	    
	    
	    public static List<Student> getstudentsinfo(String compname){
	    	
	    	List<Student> std = new ArrayList<Student>();
	    	try {
	    		String select = "select * from info where compname=?";
	    		PreparedStatement ps = conn.prepareStatement(select);
	    		ps.setString(1, compname);
	    		ResultSet res = ps.executeQuery();
	    		
	    		while(res.next()) {
	    			Student s = new Student();
	    			s.setPrn(res.getString("prn"));
	    			s.setFname(res.getString("fname"));
	    			s.setLname(res.getString("lname"));
	    			s.setEmail(res.getString("email"));
	    			s.setSscmarks(res.getString("sscmarks"));
	    			s.setHscmarks(res.getString("hscmarks"));
	    			s.setUgmarks(res.getString("ugmarks"));
	    			s.setDiploma(res.getString("diploma"));
	    			s.setBranch(res.getString("branch"));
	    			std.add(s);
	    		}
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	   return std;
	    	
	    }
	    
	    
	    //Recruiter authentication
	    public static List<Company> getRecruiterAuth(String compid, String comppass) {
	    	List<Company> comp = new ArrayList<Company>();
	    	
	    	try {
				Daolayer.getInstance();
				String check = "select * from companies where compid=? and comppass=?";
				PreparedStatement ps = conn.prepareStatement(check);
				ps.setString(1, compid);
				ps.setString(2, comppass);
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					Company c = new Company();
					String compname = rs.getString("compname");
					String role = rs.getString("role");
					c.setCompname(compname);
					c.setRole(role);
					
					comp.add(c);
					return comp;
				}
				else
					return comp;
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
	    	return comp;
	    }
	    
	    
	    
	    
	    //Changing status and getting data from student table
	    public static List<Student>studentStatusUpdate(String prn){
	    	Daolayer.getInstance();
	    	List<Student> l = new ArrayList<Student>();
	    	System.out.println(prn);
	    	System.out.println("getting ");
	    	try {
	    	String query="update students set status=? where prn =?";
	    	PreparedStatement ps = conn.prepareStatement(query);
	    	ps.setInt(1, 1);
	    	ps.setString(2, prn);
	    	int x = ps.executeUpdate();
	    	if(x>=1) {
	    		String select = "select * from students where prn =?";
	    		PreparedStatement stmt=conn.prepareStatement(select);
		    	stmt.setString(1, prn);
		    	ResultSet ra=stmt.executeQuery();
		    	while(ra.next())
		    	{
		    		Student s = new Student();
		    		s.setEmail(ra.getString("email"));
		    		s.setFname(ra.getString("fname"));
		    		s.setLname(ra.getString("lname"));
		    		s.setPrn(prn);
		    		l.add(s);
		    		
		    		return l;
		    		
		    	}
	    	}
	    	else {
	    		return l;
	    	}
	    	
	    	}catch(Exception e) {
	    			System.out.println(e);
	    		}
	    		return l;
	    	
	    }
	    
	    
	    
	    //Sending data to placed_student
	    public static boolean setPlacementStudent(String prn, String  fname,String  lname, String   email, String  date, String  compname, String  role) {
	    	boolean status = false;
	    	Daolayer.getInstance();
	    	try {
				String check = "select prn from placed_student where prn=?";
				PreparedStatement ps1 = conn.prepareStatement(check);
				ps1.setString(1, prn);
				ResultSet res = ps1.executeQuery();
				if(res.next()) {
					System.out.println("Inside");
					String up = "update placed_student set fname =?, lname=?, email=?,compname=?, date_of_place=?, role=? where prn =?";
					PreparedStatement ps2 = conn.prepareStatement(up);
					
					ps2.setString(1, fname);
					ps2.setString(2, lname);
					ps2.setString(3, email);
					ps2.setString(4, compname);
					ps2.setString(5, date);
					ps2.setString(6, role);
					ps2.setString(7, prn);
					
					int x = ps2.executeUpdate();
					if(x>=1) {
						status=true;
					}
				
					else {
						status=false;
					}
				}
				else {
					String insert = "insert into placed_student(prn, fname,lname,email, compname, date_of_place, role )"
							+ "values (?,?,?,?,?,?,?)";
					PreparedStatement ps = conn.prepareStatement(insert);
					ps.setString(1, prn);
					ps.setString(2, fname);
					ps.setString(3, lname);
					ps.setString(4, email);
					ps.setString(5, compname);
					ps.setString(6, date);
					ps.setString(7, role);
					int x = ps.executeUpdate();
					if(x>=1) {
						status=true;
					}
				
					else {
						status=false;
					}
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return false;
			}
	    	return status;
	    }
	    
	    
	    //Getting all data of placed student and give it to Placemet dto class
	    
	    public static List<Placement> getPlacedStudentDetails(){
	    	
	    	List<Placement> p=new ArrayList<Placement>();
	    	try {
	    		Daolayer.getInstance();
	    		String get="select * from placed_student";
	    		PreparedStatement l = conn.prepareStatement(get);
				ResultSet res = l.executeQuery();
				while(res.next()) {
					Placement pl = new Placement();
					pl.setPrn(res.getString("prn"));
					pl.setFname(res.getString("fname"));
					pl.setLname(res.getString("lname"));
					pl.setEmail(res.getString("email"));
					pl.setCompname(res.getString("compname"));
					pl.setDate(res.getString("date_of_place"));
					pl.setRole(res.getString("role"));
					p.add(pl);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	    	return p;
	    	
	    	
	    	
	    }
	    
	    
	    
	    
	    //getting count of students companies and placed students
	    
	    public static List<Integer> getCount(){
	    	
	    	List<Integer> i=new ArrayList<Integer>();
	    	Daolayer.getInstance();
	    	try {
	    		String student="select count(*) from students";
	    		PreparedStatement ps = conn.prepareStatement(student);
	    		ResultSet res = ps.executeQuery();
	    		res.next();
	    		int std = res.getInt(1);
	    		
	    		String companies="select count(*) from companies";
	    		PreparedStatement ps2 = conn.prepareStatement(companies);
	    		ResultSet res2 = ps2.executeQuery();
	    		res2.next();
	    		int comp = res2.getInt(1);
	    		
	    		String pla="select count(*) from placed_student";
	    		PreparedStatement ps3 = conn.prepareStatement(pla);
	    		ResultSet res3 = ps3.executeQuery();
	    		res3.next();
	    		int pl = res3.getInt(1);
	    		
	    		i.add(std);
	    		i.add(comp);
	    		i.add(pl);
	    		
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	    	return i;
	    }
	   
	    
	    
	    //updating feedback for student
	    public static boolean updateFeedback (String feedbackid,String prn,String compname,String technical,String communication,String enthusiasm,
	    		String solvingskills,String podskills,String comments,String companyknowledge,String expirience) {
	    	boolean status = false;
	    	Daolayer.getInstance();
	    	try {
				String check = "select * from feedback where prn =? and compname=?";
				PreparedStatement pp = conn.prepareStatement(check);
				pp.setString(1, prn);
				pp.setString(2, compname);
				ResultSet re = pp.executeQuery();
				if(re.next()) {
					status = false;
				}
				
				else {
					String update_feedback ="update info set feedback=? where prn =? and compname =?";
					PreparedStatement ps = conn.prepareStatement(update_feedback);
					ps.setString(1, feedbackid);
					ps.setString(2, prn);
					ps.setString(3, compname);
					int y = ps.executeUpdate();
					if(y>=1) {
						String insert_feedback = "insert into feedback(prn, feedbackid, compname, technical,communication,enthusiasm,companyknowledge,expirience,solvingskills,podskills,comments)"
								+ "values(?,?,?,?,?,?,?,?,?,?,?)";
						PreparedStatement ps2 = conn.prepareStatement(insert_feedback);
						ps2.setString(1, prn);
						ps2.setString(2, feedbackid);
						ps2.setString(3, compname);
						ps2.setString(4, technical);
						ps2.setString(5, communication);
						ps2.setString(6, enthusiasm);
						ps2.setString(7, companyknowledge);
						ps2.setString(8, expirience);
						ps2.setString(9, solvingskills);
						ps2.setString(10, podskills);
						ps2.setString(11, comments);
						
						int x = ps2.executeUpdate();
						
						if(x>=1) {
							
							status=true;
						}
						else {
							status=false;
						}
					}
					else {
						status=false;
					}
				}
	    	} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return false;
			}
	    	return status;
	    }
		
		
	    
	    
		//getting student feedback
	    
	    public static List<Feedback> getstudentfeedback(String prn){
	    	
	    	List<Feedback> f=new ArrayList<Feedback>();
	    	Daolayer.getInstance();
	    	try {
				String query="select * from feedback where prn=?";
				PreparedStatement ps = conn.prepareStatement(query);
				ps.setString(1,prn);
				ResultSet res = ps.executeQuery();
				while(res.next()) {
				Feedback fd=new Feedback();
				fd.setCompname(res.getString("compname"));
				fd.setTechnical(res.getString("technical"));
				fd.setCommunication(res.getString("communication"));
				fd.setEnthusiasm(res.getString("enthusiasm"));
				fd.setCompanyknowledge(res.getString("companyknowledge"));
				fd.setExpirience(res.getString("expirience"));
				fd.setSolvingskills(res.getString("solvingskills"));
				fd.setPodskills(res.getString("podskills"));
				fd.setComments(res.getString("comments"));
				
				f.add(fd);
				
					
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	    	return f;
	    	
	    }
		
		
	    
	    //checking status for applied student
	    public static boolean checkAppliedStudent(String prn, String compname) {
	    	boolean status = false;
	    	Daolayer.getInstance();
	    	try {
				String get = "select * from info where prn =? and compname=?";
				PreparedStatement ps = conn.prepareStatement(get);
				ps.setString(1, prn);
				ps.setString(2, compname);
				ResultSet res = ps.executeQuery();
				if(res.next()) {
					status = true;
				}
				else {
					status = false;
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	    	return status;
	    }
	    
	    
	    //Check student select or not from placed_student table
	    public static boolean checkSelectedStudent(String prn, String compname) {
	    	boolean status = false;
	    	
	    	Daolayer.getInstance();
	    	try {
				String get = "select * from placed_student where prn =? and compname=?";
				PreparedStatement ps = conn.prepareStatement(get);
				ps.setString(1, prn);
				ps.setString(2, compname);
				ResultSet res = ps.executeQuery();
				if(res.next()) {
					status = true;
				}
				else {
					status = false;
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	    	return status;
	    }
	    
	    
	    
	    
	    
	    
	    
	    
		
//End		
} 

	    
	    
	    

