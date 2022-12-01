package TPG5.web.dataObject;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import TPG5.web.dbConnect;

public class dataObject {
	dbConnect conn = new dbConnect ("tpg5");
	String fname = null;
	String mnane = null;
	String lname = null;
	String UAccess = null;

	public void member_register(String fname, String mname, String lname , String usrname, String pwd, String rpwd, String email, String usrAccess, String pwdQ1, String pwdQ2, String ans1, String ans2) throws IOException
	{				
		LocalDate currentDT = LocalDate.now();
		String s_currentDT = currentDT.toString();
		LocalDate expireDT = currentDT.plusDays(90);
		LocalDate never_expireDT = currentDT.plusDays(9000000);
		String stexpireDT = expireDT.toString();
		String stnever_expireDT = never_expireDT.toString();
		String[] acct_status = new String[] {"AD_active", "active", "inactive" , "disable" , "Deleted"};
		int refid = ThreadLocalRandom.current().nextInt(0,10000);
		
		try
		{
			String hash_pwd = conn.getSHA_pwd(pwd);
		   	Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tpg5", "root", "789456123");
		    int cnt = 0;
		    Statement sta = con.createStatement();
		    ResultSet rd = sta.executeQuery("SELECT COUNT(*) AS cnt FROM users");
		    if(rd.next())
		    {
		    	cnt = rd.getInt("cnt");
		    }
		    if (cnt == 0) 
		    { 	
		    	if (pwd.equals(rpwd)) 
		    	{

		    	String insert_data = "INSERT INTO users values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; //this goes to the users table but we need the column names to insert them
				PreparedStatement prestmt = con.prepareStatement(insert_data);
				prestmt.setString(1, "Adminstrator");
				prestmt.setString(2, "A");
				prestmt.setString(3, "Account");
				prestmt.setString(4, "admin");
				prestmt.setString(5, hash_pwd);
				prestmt.setString(6, "admin@lab.instructor.com"); //Change the email to one that belongs to us(or one person)
				prestmt.setString(7, "admin");
				prestmt.setString(8, pwdQ1);
				prestmt.setString(9, ans1);
				prestmt.setString(10, pwdQ2);
				prestmt.setString(11, ans2);
				prestmt.setInt(12, refid);
				prestmt.setString(13, s_currentDT);
				prestmt.setString(14, stnever_expireDT);
				prestmt.setString(15, acct_status[0]);
				
				//result=prestmt.executeUpdate();      //this one or the one under it will execute the account creation
				int i = prestmt.executeUpdate();
			     //if updated successfully
			     if (i > 0) 
			     { 
			    	 return;
			     }
				System.out.println("Admin created");
		    	}
	    	}
		    
		    else
		    {
		    	if (pwd.equals(rpwd))
		    	{
		    	//If not exist performing insert 
			     	PreparedStatement prestmt = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			     //setting value for "?"
			     	prestmt.setString(1, fname);
					prestmt.setString(2, mname);
					prestmt.setString(3, lname);
					prestmt.setString(4, usrname);
					prestmt.setString(5, hash_pwd);
					prestmt.setString(6, email); 
					prestmt.setString(7, usrAccess);
					prestmt.setString(8, pwdQ1);
					prestmt.setString(9, ans1);
					prestmt.setString(10, pwdQ2);
					prestmt.setString(11, ans2);
					prestmt.setInt(12, refid);
					prestmt.setString(13, s_currentDT);
					prestmt.setString(14, stexpireDT);
					prestmt.setString(15, acct_status[1]);
					int i = prestmt.executeUpdate();
					if (i > 0) {
						return;
			     			}
		    	}    	 
		    }
		}
		
		catch(Exception ex) { 
				ex.printStackTrace();
			}
	}
public ArrayList member_login(String username, String password) {
	ArrayList up = new ArrayList();
	try 
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tpg5", "root", "Jkr#18282002$");
    //selecting username from users table

    String hashpwd = conn.getSHA_pwd(password);
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM users");
    
    
	    while (rs.next()) 
	    {
	    	if (username.equals(rs.getString("u_name")) && hashpwd.equals(rs.getString("u_pwd")))
	    	{
	    		up.add(rs.getString("f_name").toString());
				up.add(rs.getString("l_name").toString());    //set the "" to whatever the appropriate columns are titled
				up.add(rs.getString("u_access").toString());
	    	}
	    	else {}
	    }
	
	}
	catch( Exception ex) { 
			ex.printStackTrace(); 
		}
	return up;
	}
public static String getPassword(String uname, String q1, String ans1, String q2, String ans2) throws Exception{
	String sql = "SELECT u_pwd FROM users WHERE u_name=? AND u_sql=? AND u_ans1 =? AND u_sql2=? AND u_ans2=?";
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tpg5", "root", "Jkr#18282002$");
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, uname);
	ps.setString(2, q1);
	ps.setString(3, ans1);
	ps.setString(3, q2);
	ps.setString(4, ans2);
	
	ResultSet rs = ps.executeQuery();
	
	String pwd = "";
	if(rs.next()) {
		pwd = rs.getString("u_pwd");
	}
	else {
		pwd = "Error";
	}
	
	return pwd;
	} 
}


