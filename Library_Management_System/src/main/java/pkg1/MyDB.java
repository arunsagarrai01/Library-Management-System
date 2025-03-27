package pkg1;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyDB {
	
	private String DRIVER = "com.mysql.cj.jdbc.Driver";
	private String HOST="localhost";
	private int PORT =3306;
	private String DBNAME="LibraryDB";
	private String user="root";
	private String password="sagar@g66";
	private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DBNAME;
	
	public Connection connect() {
		Connection con=null;
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL,user,password);
			System.out.println("Database Connected Successfully!");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return con;
	}
	
}
