<%@ page language="java" import="java.util.*"contentType="text/html;charset=gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Login</title>
<style type="text/css">
<!--
.STYLE1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
}
.STYLE4 {font-size: 14px}
.STYLE6 {font-size: 16px}
-->
</style>
</head>

<body>
<p align="center"><img src="image/1.png" width="732" height="41" /></p>
<p></p>
<div>
  <div align="center" class="STYLE1">
    <p>Welcome to Log in </p>
    <div class="STYLE4">Use your email or MemberID </div>
    <div>
      <p class="STYLE6">      </p>
      <div></div>
      <form id="form2" name="form2" method="post" action="">
        <label>
          <span class="STYLE6">Username:</span> 
        <input type="text" name="textfield2" />
        </label>
      </form>
      <p class="STYLE6"></p>
      <form id="form1" name="form1" method="post" action="">
        <label>
          <span class="STYLE6">Password:</span> 
        <input type="password" name="textfield" />
        </label>
      </form>
    </div>
  
  </div>
               <div style="clear:both"></div>
                <div class="setlogin">
                    <div align="center">
                      <p><input type ="submit" value = "Log in">    <a class="forgetpswd" href="forgetpassword.jsp">forget password？</a>
                    </div>
                </div>			
</div>
</div>
</p>
</body>
</html>
