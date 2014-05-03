<%@ page language="java" import="java.util.*,java.text.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <%
         java.util.Date date = new java.util.Date();
         SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
         String formatDate=sdf.format(date);
         String memberid = request.getParameter("memberid");
         String password = request.getParameter("password");
         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         Statement stat= c.createStatement();
         String sql= "select ppassword from member where memberid=? ";
         String sql2="select firstname,lastname from member where memberid=?";
         PreparedStatement ps=c.prepareStatement(sql);
         PreparedStatement ps2=c.prepareStatement(sql2);
         	ps.setString(1,memberid);
         	ps2.setString(1,memberid);
         		ResultSet rs=ps.executeQuery();
         		ResultSet rs2=ps2.executeQuery();
         	if(rs.next()){				
					if(rs.getString(1).equals(password))
					 out.print("<script type=\"text/javascript\">" +"alert('login sucessfully!');</script>");
					 else
					  out.print("<script type=\"text/javascript\">location.href='../login.jsp';" +"alert('Fail to insert!');</script>");	
	}
	if(rs2.next()){
	           String firstname=rs2.getString("firstname");
	             String lastname=rs2.getString("lastname");%>
	Current Time: <%=formatDate%> Welcome: <% out.println(firstname+" "+lastname);}
	             stat.close(); c.close(); %> <HR>
 
    <title>My JSP 'J&Pposting.jsp' starting page</title>
  </head>
  
  <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
-->
</style>
<body>
<p>&nbsp;</p>
	<div align="center">
	  <table width="683" border="1" align="center" bordercolor="#FFFFFF">
	    <tr>
	      <td width="91"><div align="center">Profile</div></td>
		  <td width="104"><div align="center">Jobs Status </div></td>
		  <td width="101"><div align="center">Products Status </div></td>
		  <td width="91"><div align="center">Settings</div></td>
		  <td width="78"><div align="center">Help</div></td>
	      <td width="81"><div align="center">FAQ</div></td>
	      <td width="91"><div align="center">Logout</div></td>
	    </tr>
      </table>
</div>
<p align="center">&nbsp;</p>
<p align="center" class="style1">I want to post a new:  </p>
<form action="J&Pmedian.jsp" method="post">
<table width="169" border="1" align="center" bordercolor="#FFFFFF">
  <tr>
    <td width="67"><label>
    <input name="newoption" type="radio" value="job">
Job</label></td>
    <td width="86"><label>
    <input name="newoption" type="radio" value="product">
Product</label></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="145" border="1" align="center" bordercolor="#FFFFFF">
  <tr>
    <td width="73"><span class="style7">
      <input name="submit" type="submit" value="Continue">
    </span></td>
    <td width="209"><span class="style7">
      <input name="reset" type="reset" value="Cancel">
    </span></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="style7">
</p>
</body>
</html>
