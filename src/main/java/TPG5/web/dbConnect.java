package TPG5.web;

import java.security.NoSuchAlgorithmException;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnect {
	private String str_connection = "jdbc:mysql://localhost:3306/tpg5"; // points to database location
	private String userdb; // MySQL User
	private String passworddb; // MySQL Password
	Connection conn = null;

	public dbConnect(String namedb) { 
		this.userdb = namedb;
		this.userdb = "root";
		this.passworddb = "Jkr#18282002$";
	}

public Connection str_connection() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(str_connection, userdb, passworddb);
	}
	catch (SQLException  | ClassNotFoundException e ) {
		System.out.println(e);
		e.printStackTrace();
	}
	return conn;
	
}
public String getSHA_pwd(String pass) throws NoSuchAlgorithmException { //hashing password
	String hash_algorithm = "SHA-256";
	try{
		MessageDigest hashpass = MessageDigest.getInstance(hash_algorithm);
		hashpass.update(pass.getBytes());
		byte[] digestpass = hashpass.digest();
		StringBuilder byte_str = new StringBuilder();
		for(Byte byte_ch : digestpass) {
			byte_str.append(String.format("%02x", byte_ch));
		}
	return byte_str.toString();
	}
	catch(NoSuchAlgorithmException e) {
		return "";
	}
	}

public static Connection getConnection() {
	// TODO Auto-generated method stub
	return null;
}
}

