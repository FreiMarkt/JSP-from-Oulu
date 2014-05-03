<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
