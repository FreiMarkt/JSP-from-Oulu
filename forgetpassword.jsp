<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>forget password</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 16px;
	color: #E45A5E;
	font-weight: bold;
}
.STYLE3 {font-size: 12px}
-->
</style>
</head>

<body>
<div align="left"><img src="image/1.png" width="732" height="41" /></div>
<p>&nbsp;</p>
<div>
  <p align="left" class="STYLE1">Forget your Password？</p>
  <p class="STYLE3">&nbsp;</p>
  <form id="form1" name="form1" method="post" action="">
    <label>
      <span class="STYLE3">Please input your email: </span><br />
      <br />
    <input type="text" name="textfield" />
    </label>
  </form>
  <form id="form2" name="form2" method="post" action="">
    <p>
      <input name="submit" type ="submit" value = "Submit" />
    </p>
  </form>
  <p class="STYLE3">&nbsp;</p>
  <p>&nbsp; </p>
</div>
</body>
</html>
