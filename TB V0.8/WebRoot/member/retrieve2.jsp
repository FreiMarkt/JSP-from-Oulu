<%@ page language="java" import="java.util.*,java.sql.*,timebank.member.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'retrieve2.jsp' starting page</title>
    
  </head>
  
  <body>
  <center>
   <h1 >Personal Information</h1>
  <table>
    <%
         String memberid = request.getParameter("memberid");
         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         Statement stat= c.createStatement();
         String sql= "select * from member where memberid=?";
         PreparedStatement ps=c.prepareStatement(sql);
         ps.setString(1,memberid);
         ResultSet rs=ps.executeQuery();
         if (rs.next()){
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
         <tr><td><h5>Member ID: <%out.println(memberid);%></h5></td></tr>
         <tr><td><h5>Role ID: <%out.println(roleid);%></h5></td></tr>
	     <tr><td><h5>First Name: <%out.println(firstname);%></h5></td></tr>
	     <tr><td><h5>Last Name: <%out.println(lastname);%></h5></td></tr>	
		 <tr><td><h5>Gender: <%out.println(gender);%></h5></td></tr>	      
		 <tr><td><h5>Birthday: <%out.println(birthday);%></h5></td></tr>
		 <tr><td><h5>City: <%out.println(city);%></h5></td></tr>
		 <tr><td><h5>Country: <%out.println(country);%></h5></td></tr>
		 <tr><td><h5>Address: <%out.println(address);%></h5></td></tr>
	     <tr><td><h5>Password: <%out.println(password);%></h5></td></tr>
		 <tr><td><h5>Email: <%out.println(email);%></h5></td></tr>
		 <tr><td><h5>Postal Code: <%out.println(postalcode);%></h5></td></tr>
		 <tr><td><h5>Phone Number: <%out.println(phonenumber);%></h5></td></tr>
	     <tr><td><h5>Payment Status: <%out.println(paymentstatus);%></h5></td></tr>
		 <tr><td><h5>Fifty-five Member: <%out.println(fiftyfivemember);%></h5></td></tr>
		  <tr><td><h5><input type="button" value="Modify" onclick=""><input type="submit" value="Save" name="submit"></h5></td></tr>
		 <% } stat.close(); c.close(); %>
		 </table>
		 </center>
  </body>
</html>
