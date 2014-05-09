<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'J&Pmedian.jsp' starting page</title>

  </head>
  
  <body>
    <%
    String search=request.getParameter("search");
    if (search.equals("job")) out.print("<script type=\"text/javascript\">location.href='jobs/jobsearch.jsp';"+"</script>");
    else if (search.equals("product"))  out.print("<script type=\"text/javascript\">location.href='products/productsearch.jsp';"+"</script>"); %>
  </body>
</html>
