<%@ page language="java" import="java.util.*,java.sql.*,java.text.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%
         java.util.Date date = new java.util.Date();
         SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
         String formatDate=sdf.format(date);
         String memberid = request.getParameter("memberid");
         //create cookie
         Cookie cookie=new Cookie("memberid",memberid);
         //the time of cookie's life is 600 seconds
         cookie.setMaxAge(600);
         //save cookie in the server
         response.addCookie(cookie);
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
	while(rs2.next()){
	           String firstname=rs2.getString("firstname");
	             String lastname=rs2.getString("lastname");             
         Cookie cookie2=new Cookie("firstname",firstname);
         cookie2.setMaxAge(600);
         response.addCookie(cookie2);
          Cookie cookie3=new Cookie("lastname",lastname);
         cookie3.setMaxAge(600);
         response.addCookie(cookie3);
	             %>
	Current Time: <%=formatDate%> Welcome: <% out.println(firstname+" "+lastname);}
	 
	 %> <HR>
   
  </head>
  
  <body>
   <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style4 {font-size: 20px; font-weight: bold; }
.style5 {font-size: 14px}
.style7 {color: #FFFFFF; }
.style11 {color: #FFFF66; }
-->
</style>
<p>&nbsp;</p>
<div align="center">
	    <table width="780" border="1" align="center" bordercolor="#33CC00" bgcolor="#33CC00">
	    <tr>
	      <td width="91"><div align="center" class="style11"><a href="">Home</a></div></td>
	      <td width="91"><div align="center" class="style11">Profile</div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/news.html">News</a></div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/faq.html">FAQ</a></div></td>
		  <td width="78"><div align="center" class="style11">Help</div></td>
	      <td width="91"><div align="center" class="style11"><a href="member/frontpage.jsp">Sign out</a></div></td>
	    </tr>
  </table>
</div>
    <p align="center" class="style1">&nbsp;</p>
    
    <form action="J&Pmedian2.jsp" method="post">
     <table width="802" border="1" align="center" bordercolor="#FFFFFF">
      <tr>
        <td width="276" rowspan="2"><span class="style4">I want to post a new:</span></td>
        <td><input name="post" type="radio" value="job">
          Job</td>
        <td>&nbsp;</td>
         <td width="94"><label>
          <input name="post" type="radio" value="product">
          Product</label></td>
        <td width="35">&nbsp;</td>
         <td width="73"><span class="style7">
           <input name="submit" type="submit" value="Continue">
         </span></td>
         <td width="209"><span class="style7">
           <input name="reset" type="reset" value="Cancel">
         </span></td></tr>
       </table>
       </form>
        <form action="J&Pmedian.jsp" method="post">
         <table width="802" border="1" align="center" bordercolor="#FFFFFF">
      <tr>
        <td width="276" rowspan="2"><span class="style4">I want to search:</span></td>
        <td><input name="search" type="radio" value="job">
          Job</td>
        <td>&nbsp;</td>
         <td width="94"><label>
          <input name="search" type="radio" value="product">
          Product</label></td>
        <td width="35">&nbsp;</td>
         <td width="73"><span class="style7">
           <input name="submit" type="submit" value="Continue">
         </span></td>
         <td width="209"><span class="style7">
           <input name="reset" type="reset" value="Cancel">
         </span></td></tr>
       </table>
     </form>
	 <p align="center" class="style2 style5">&nbsp;</p>
     <table width="1197" align="center" bordercolor="#000000" border="1"> 
       <tr bgcolor="#33CC00">
         <td colspan="5" bgcolor="#33CC00"><div align="center">Jobs</div></td>
       </tr>     
       <tr>
         <td width="120" bordercolor="#000000"><div align="center">Category </div></td>
         <td width="80" bordercolor="#000000"><div align="center">ID</div></td>
         <td width="150" bordercolor="#000000"><div align="center">Name </div></td>
         <td width="70" bordercolor="#000000"><div align="center">BiX</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Available Date </div></td>
       </tr>
       <% String sql3="select jobcategory,jobid,jobname,jobtimechecks,availabledate from jobs,member where member.memberid=? and jobs.offererid=member.memberid";
          PreparedStatement ps3=c.prepareStatement(sql3);
          ps3.setString(1,memberid);
          ResultSet rs3=ps3.executeQuery();
          while(rs3.next()){
	              String jobcategory=rs3.getString("jobcategory");
	              String jobid=rs3.getString("jobid");
	              String jobname=rs3.getString("jobname");
	              float jobtimechecks=rs3.getFloat("jobtimechecks");
	              String availabledate=rs3.getString("availabledate");%>
       <tr>
         <td bordercolor="#000000"><%out.println(jobcategory);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(jobid);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(jobname);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(jobtimechecks);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(availabledate);}%>&nbsp;</td></tr>
          <tr bgcolor="#33CC00">
        <td colspan="5"><div align="center">Products</div></td>
       </tr>
         <tr>
         <td width="120" bordercolor="#000000"><div align="center">Category</div></td>
         <td width="80" bordercolor="#000000"><div align="center">ID</div></td>
         <td width="150" bordercolor="#000000"><div align="center">Name</div></td>
         <td width="70" bordercolor="#000000"><div align="center">BiX</div></td>
         <td width="100" bordercolor="#000000"><div align="center">Shipping Bix </div></td>
         </tr>
          <%String sql4="select productcategory,productid,productname,producttimechecks,shippingcost from products,member where member.memberid=? and products.sellerid=member.memberid";
          PreparedStatement ps4=c.prepareStatement(sql4);
          ps4.setString(1,memberid);
          ResultSet rs4=ps4.executeQuery();
          while(rs4.next()){
	              String productcategory=rs4.getString("productcategory");
	              String productid=rs4.getString("productid");
	              String productname=rs4.getString("productname");
	              int producttimechecks=rs4.getInt("producttimechecks");
	              int shippingcost=rs4.getInt("shippingcost");%>
	      <tr>
         <td bordercolor="#000000"><%out.println(productcategory);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(productid);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(productname);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(producttimechecks);%>&nbsp;</td>
         <td bordercolor="#000000"><%out.println(shippingcost);%>&nbsp;</td>
       </tr>
       <% }
         stat.close();
         c.close();
    %> 
 </table>  
  </body>
</html>
