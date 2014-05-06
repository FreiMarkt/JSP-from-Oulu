<%@ page language="java" import="java.util.*, java.sql.*,timebank.member.*"  pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
  <table>
  <tr>
		    <td><h5 align="center">MemberID</h5></td>
			 <td><h5 align="center">RoleID</h5></td>
			 <td><h5 align="center">First Name</h5></td>
			 <td><h5 align="center">Last Name</h5></td>
			 <td><h5 align="center">Gender</h5></td>
			 <td><h5 align="center">Birthday</h5></td>
			 <td><h5 align="center">City</h5></td>
			 <td><h5 align="center">Country</h5></td>
			 <td><h5 align="center">Address</h5></td>
			 <td><h5 align="center">Password</h5></td>
			 <td><h5 align="center">Email</h5></td>
			 <td><h5 align="center">Postal Code</h5></td> 
			 <td><h5 align="center">Phone Number</h5></td>
			 <td><h5 align="center">Payment Status </h5></td>
			 <td><h5 align="center">Fifty-five Member</h5></td>
			</tr> 
   <%
         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         Statement stat= c.createStatement();
         String sql= "select * from member";
         ResultSet rs=stat.executeQuery(sql);
       //  out.println("memberid" +" "+"roleid"+" "+"firstname"+" "+"lastname"+" "+"gender"+" "+"birthday"+" "+"city"+" "+"country"+" "+"address"+" "+"password"+" "+"email"+" "+"postalcode"+" "+"phonenumber"+" "+"paymentstatus"+" "+"fiftyfivemember"+"<BR>");
         while (rs.next()){
              String memberid=rs.getString("memberid");
              String firstname=rs.getString("firstname");
               String password=rs.getString("ppassword");
               String gender=rs.getString("gender");
                String address=rs.getString("address");
                 String email=rs.getString("email");
                  String phonenumber=rs.getString("phonenumber");
                 boolean paymentstatus=rs.getBoolean("paymentstatus");
                  boolean fiftyfivemember=rs.getBoolean("fiftyfivemember");
                   String postalcode=rs.getString("postalcode");
                    String birthday=rs.getString("birthday");  
                    int roleid=rs.getInt("roleid");
                     String lastname=rs.getString("lastname");
                       String city=rs.getString("city");
                        String country=rs.getString("country");
                    %>
             <tr>
			
			     
			      <td><h5 align="center"><%out.println(memberid);%></h5></td>
			      <td><h5 align="center"><%out.println(roleid);%></h5></td>
			       <td><h5 align="center"><%out.println(firstname);%></h5></td>
			       <td><h5 align="center"><%out.println(lastname);%></h5></td>	
			       <td><h5 align="center"><%out.println(gender);%></h5></td>	      
			      <td><h5 align="center"><%out.println(birthday);%></h5></td>
			      <td><h5 align="center"><%out.println(city);%></h5></td>
			      <td><h5 align="center"><%out.println(country);%></h5></td>
			      <td><h5 align="center"><%out.println(address);%></h5></td>
			      <td><h5 align="center"><%out.println(password);%></h5></td>
			      <td><h5 align="center"><%out.println(email);%></h5></td>
			      <td><h5 align="center"><%out.println(postalcode);%></h5></td>
			      <td><h5 align="center"><%out.println(phonenumber);%></h5></td>
			      <td><h5 align="center"><%out.println(paymentstatus);%></h5></td>
			      <td><h5 align="center"><%out.println(fiftyfivemember);%></h5></td>
			     </tr>
       <% }
         stat.close();
         c.close();
         
    %>
    </table>
  </body>
</html>
