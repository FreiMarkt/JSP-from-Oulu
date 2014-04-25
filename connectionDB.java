package timebank.db;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
 
public class connectionDB {
 
	public static void main(String[] argv) {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return;
		}
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(
					"jdbc:postgresql://localhost:5432/TimeBankDB", "postgres",
					"zy07066719");
 
		} catch (SQLException e) {
			e.printStackTrace();
			return;
 
		}
		if (connection != null) {
			System.out.println("You made it, take control your database now!");
		} else {
			System.out.println("Failed to make connection!");
		}
	}
 
}
