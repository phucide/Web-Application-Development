package DB;




import java.sql.Connection;
import java.sql.DriverManager;


public class DBContext {
	public Connection getConnection()throws Exception {
    	 String connectionURL="jdbc:mysql://localhost:3306/test"; 
    	 Class.forName("com.mysql.jdbc.Driver"); 
    	 return DriverManager.getConnection(connectionURL, "root", "phuc2468456"); 
    }   
}
 