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
        // String offererid = request.getParameter("memberid");
         //   int jobid=1;
            String offererid = request.getParameter("offererid");
            String jobid = request.getParameter("jobid");
			String jobcategory = request.getParameter("jobcategory");
			String jobname = request.getParameter("jobname");
			String jobaddress = request.getParameter("jobaddress");
		    String availabledate = request.getParameter("availabledate");
		    String jobtimechecks = request.getParameter("jobtimechecks");
		    int timecheck=Integer.parseInt(jobtimechecks);
			String jobduration = request.getParameter("jobduration");
			int duration=Integer.parseInt(jobduration);
			String finishdate= request.getParameter("finishdate");
			String jobdescription = request.getParameter("jobdescription");
			String jobrequirements = request.getParameter("jobrequirements");
			
			

         Class.forName("org.postgresql.Driver");
         Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/TimeBankDB2","postgres", "zy07066719");
         String sql2= "INSERT INTO jobs(offererid,jobid,jobcategory,jobname,jobaddress,availabledate,jobtimechecks,jobduration,finishdate,jobdescription,jobrequirements)VALUES (?,?,?,?,?,to_date(substr('"+availabledate+"',1,10),'yyyy-mm-dd'),?,?,to_date(substr('"+finishdate+"',1,10),'yyyy-mm-dd'),?,?)";
         PreparedStatement ps=c.prepareStatement(sql2);
            ps.setString(1,offererid);
            ps.setString(2,jobid);
            ps.setString(3,jobcategory);
			ps.setString(4,jobname);
			ps.setString(5,jobaddress);
		//	ps.setString(4,availabledate);
			ps.setInt(6,timecheck);
			ps.setInt(7,duration);
	//		ps.setString(7,finishdate);
			ps.setString(8,jobdescription);
			ps.setString(9,jobrequirements);
         int i=ps.executeUpdate();
         out.println("insert "+i+" row successfully!");
         ps.close();
         c.close();

         
    %>
  </body>
</html>
