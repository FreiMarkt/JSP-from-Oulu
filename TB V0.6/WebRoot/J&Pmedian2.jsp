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
    String post=request.getParameter("post");
    if (post.equals("job")) out.print("<script type=\"text/javascript\">location.href='jobs/jobs.jsp';"+"</script>");
    else if (post.equals("product"))  out.print("<script type=\"text/javascript\">location.href='products/products.jsp';"+"</script>"); %>
    
  </body>
</html>
