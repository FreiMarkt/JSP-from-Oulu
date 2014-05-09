<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginmatch.jsp' starting page</title>

  </head>
  
  <body>
  <form action>
   <%
         String memberid = request.getParameter("memberid");
         String password = request.getParameter("password");
         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         Statement stat= c.createStatement();
         String sql= "select ppassword from member where memberid=? ";
         PreparedStatement ps=c.prepareStatement(sql);
         	ps.setString(1,memberid);
         		ResultSet rs=ps.executeQuery();
         	if(rs.next()){				
					if(rs.getString(1).equals(password))
					 out.print("<script type=\"text/javascript\">location.href='J&Pposting.jsp';" +"alert('login sucessfully!');</script>");
					 else
					  out.print("<script type=\"text/javascript\">location.href='../login.jsp';" +"alert('Fail to insert!');</script>");	
	}
	stat.close();
	c.close();
         %>
         </form>
  </body>
</html>
