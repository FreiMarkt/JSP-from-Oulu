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
			String phonenumber = request.getParameter("phonenumber");
			String address = request.getParameter("address");
			String city= request.getParameter("city");
			String postalcode = request.getParameter("postalcode");
			String country = request.getParameter("country");
			String password = request.getParameter("password");
         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         String sql= "INSERT INTO member(memberid,firstname,lastname,birthday,gender,email,phonenumber,address,city,postalcode,country,ppassword,paymentstatus,fiftyfivemember,roleid)VALUES (?,?,?,to_date(substr('"+birthday+"',1,10),'yyyy-mm-dd'),?,?,?,?,?,?,?,?,TRUE,TRUE,0)";
         PreparedStatement ps=c.prepareStatement(sql);
            ps.setString(1,memberid);
			ps.setString(2,firstname);
			ps.setString(3,lastname);
			ps.setString(4,gender);
			ps.setString(5,email);
			ps.setString(6,phonenumber);
			ps.setString(7,address);
			ps.setString(8,city);
			ps.setString(9,postalcode);
			ps.setString(10,country);
		    ps.setString(11,password);
         int i=ps.executeUpdate();
         if(i==1)
        out.print("<script type=\"text/javascript\">location.href='../login.jsp';" +"alert('Insert sucessfully!');</script>");
        else
        out.print("<script type=\"text/javascript\">location.href='member/register.jsp';" +"alert('Fail to insert!');</script>");
         ps.close();
         c.close();
         
    %>
  </body>
</html>
