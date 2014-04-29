<%@ page language="java" import="java.util.*, java.sql.*"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
   <%
         String memberid = request.getParameter("memberid");
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String birthday = request.getParameter("birthday");
		    String gender = request.getParameter("gender");
			String email = request.getParameter("email");
	//		String phonenumber = request.getParameter("phonenumber");
			String address = request.getParameter("address");
			String postalcode = request.getParameter("postalcode");
			String city= request.getParameter("city");
			String country = request.getParameter("country");
			String password = request.getParameter("password");
         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         String sql= "INSERT INTO member(memberid,ppassword,gender,address,email,phonenumber,paymentstatus,fiftyfivemember,birthday,roleid,firstname,lastname, city, country, postalcode)VALUES (?,?,?,?,?,'0414938862',TRUE, TRUE,?,0,?,?,?,?,?)";
         PreparedStatement ps=c.prepareStatement(sql);
            ps.setString(1,memberid);
			ps.setString(2,firstname);
			ps.setString(3,lastname);
			ps.setString(4,gender);
			ps.setString(5,email);
			ps.setString(6,birthday);
			//ps.setString(8,phonenumber);
			ps.setString(7,address);
			ps.setString(8,postalcode);
			ps.setString(9,city);
			ps.setString(10,country);
		    ps.setString(11,password);
         int i=ps.executeUpdate();
         out.println("insert "+i+" row successfully!");
         ps.close();
         c.close();
         
    %>
  </body>
</html>
