<%@ page language="java" import="java.util.*, java.sql.*"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
   <%
        // String offererid = request.getParameter("memberid");
         //   int jobid=1;
           
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
         String sql2= "INSERT INTO jobs(offererid,jobid,jobcategory,jobname,jobaddress,availabledate,jobtimechecks,jobduration,finishdate,jobdescription,jobrequirements)VALUES ('OU002','JOB008',?,?,?,to_date(substr('"+availabledate+"',1,10),'yyyy-mm-dd'),?,?,to_date(substr('"+finishdate+"',1,10),'yyyy-mm-dd'),?,?)";
         PreparedStatement ps=c.prepareStatement(sql2);
            ps.setString(1,jobcategory);
			ps.setString(2,jobname);
			ps.setString(3,jobaddress);
		//	ps.setString(4,availabledate);
			ps.setInt(4,timecheck);
			ps.setInt(5,duration);
	//		ps.setString(7,finishdate);
			ps.setString(6,jobdescription);
			ps.setString(7,jobrequirements);
         int i=ps.executeUpdate();
   
         out.println("insert "+i+" row successfully!");
         ps.close();
         c.close();

         
    %>
  </body>
</html>
