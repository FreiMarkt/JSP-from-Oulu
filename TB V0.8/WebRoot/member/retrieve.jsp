<%@ page language="java" import="java.util.*, java.sql.*,timebank.member.*"  pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
   <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {font-size: 24px; font-weight: bold; color: #009900; }
-->
</style>
<table width="1197" align="center" bordercolor="#000000" border="1"> 
       <tr bgcolor="#33CC00">
         <td colspan="17" bgcolor="#33CC00"><div align="center">Members</div></td>
       </tr>     
       <tr>
         <td width="120" bordercolor="#000000"><div align="center">MemberID </div></td>
         <td width="80" bordercolor="#000000"><div align="center">RoleID</div></td>
         <td width="150" bordercolor="#000000"><div align="center">First Name</div></td>
         <td width="70" bordercolor="#000000"><div align="center">Last Name</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Gender</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Birthday</div></td>
         <td width="100" bordercolor="#000000"><div align="center">City</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Country</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Address</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Password</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Email</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Postal Code</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Phone Number</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Payment Status</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Fifty-five Member</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Delete</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Modify</div></td>
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
			
			     
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(memberid);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(roleid);%></h5></td>
			       <td bordercolor="#33CC00"><h5 align="center"><%out.println(firstname);%></h5></td>
			       <td bordercolor="#33CC00"><h5 align="center"><%out.println(lastname);%></h5></td>	
			       <td bordercolor="#33CC00"><h5 align="center"><%out.println(gender);%></h5></td>	      
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(birthday);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(city);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(country);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(address);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(password);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(email);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(postalcode);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(phonenumber);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(paymentstatus);%></h5></td>
			      <td bordercolor="#33CC00"><h5 align="center"><%out.println(fiftyfivemember);%></h5></td>
			       <td bordercolor="#33CC00"><h5 align="center"><input type="button" onclick="" value="Delete"></h5></td>
			       <td bordercolor="#33CC00"><h5 align="center"><input type="button" onclick="" value="Modify"></h5></td>
			     </tr>
       <% }
         stat.close();
         c.close();
         
    %>
    </table>
  </body>
</html>
