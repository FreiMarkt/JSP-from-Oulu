<%@ page language="java" import="java.util.*, java.sql.*"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
  <div align="center">
	  <table width="550" border="1" align="center" bordercolor="#339900" bgcolor="#339900">
	    <tr>
	      <td width="91"><div align="center" class="style11"><a href="../Homepage.jsp">Home</a></div></td>
	      <td width="91"><div align="center" class="style11">Profile</div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/news.html">News</a></div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/faq.html">FAQ</a></div></td>
		  <td width="78"><div align="center" class="style11">Help</div></td>
	      <td width="91"><div align="center" class="style11">Sign out</div></td>
	    </tr>
  </table>
</div>
   <%
            String sellerid = request.getParameter("sellerid");
            String productid = request.getParameter("productid");
			String productcategory = request.getParameter("productcategory");
			String productname = request.getParameter("productname");
		    String producttimechecks = request.getParameter("producttimechecks");
		    int timecheck=Integer.parseInt(producttimechecks);
		    String numberavailable = request.getParameter("numberavailable");
		    int number=Integer.parseInt(numberavailable);
		    String productcondition= request.getParameter("productcondition");
		    String shippingcondition= request.getParameter("shippingcondition");
			String shippingcost = request.getParameter("shippingcost");
			int cost=Integer.parseInt(shippingcost);
			String deliveryduration = request.getParameter("deliveryduration");
			int duration=Integer.parseInt(deliveryduration);
			String productdescription = request.getParameter("productdescription");
			
			
			

         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         String sql2= "INSERT INTO products(sellerid,productid,productcategory,productname,producttimechecks,numberavailable,productcondition,shippingcondition,shippingcost,deliveryduration,productdescription)VALUES (?,?,?,?,?,?,?,?,?,?,?)";
         PreparedStatement ps=c.prepareStatement(sql2);
            ps.setString(1,sellerid);
            ps.setString(2,productid);
            ps.setString(3,productcategory);
			ps.setString(4,productname);
			ps.setInt(5,timecheck);
			ps.setInt(6,number);
			ps.setString(7,productcondition);
			ps.setString(8,shippingcondition);
			ps.setInt(9,cost);
			ps.setInt(10,duration);
			ps.setString(11,productdescription);
         int i=ps.executeUpdate();
   
         out.println("insert "+i+" row successfully!");
         ps.close();
         c.close();

         
    %>
  </body>
</html>
