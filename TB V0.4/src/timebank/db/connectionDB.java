package timebank.db;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
 

public class connectionDB {
   public static void main(String args[]) {
      Connection c = null;
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2",
            "postgres", "zy07066719");
      } catch (Exception e) {
         e.printStackTrace();
         System.err.println(e.getClass().getName()+": "+e.getMessage());
         System.exit(0);
      }
      System.out.println("Opened database successfully");
   }
}  