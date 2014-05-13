<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="GB18030"%>
<div align="center">
  <%
 java.util.Date date = new java.util.Date();
 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 String formatDate=sdf.format(date);
 //acquire memberid from Cookies
 String firstname=null;
 String lastname=null;
 Cookie[] cookies2=request.getCookies();
 Cookie[] cookies3=request.getCookies();
  for(int i=0;i<cookies2.length;i++){
           if(cookies2[i].getName().equals("firstname")){
               firstname=cookies2[i].getValue();
               break;
           }
 }
  for(int i=0;i<cookies3.length;i++){
           if(cookies3[i].getName().equals("lastname")){
               lastname=cookies3[i].getValue();
               break;
           }
 }
 %>
 Current Time: <%=formatDate%> Welcome: <% out.println(firstname+" "+lastname);%><HR/></div>
<html>
  <body >&nbsp;
  <script type="text/javascript" src="scripts/ajax.js"> </script>
  <div align="center">
	    <table width="780" border="1" align="center" bordercolor="#33CC00" bgcolor="#33CC00">
	    <tr>
	      <td width="91"><div align="center" class="style11">Profile</div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/news.html">News</a></div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/faq.html">FAQ</a></div></td>
		  <td width="78"><div align="center" class="style11">Help</div></td>
	      <td width="91"><div align="center" class="style11"><a href="../member/frontpage.jsp">Sign out</a></div></td>
	    </tr>
  </table></div>
 <hr>
  <center>
  <h1 >Administrator</h1>
   <form action="../member/retrieve2.jsp" method="post">
   <br>
   Member ID<input type="text" name="memberid"/>&nbsp;
   <input type="Submit" name="search" value="Search"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </form>
    <form action="retrieve.jsp" method="post">
   <br>
   Show all the members' information<input type="Submit" name="button1" value="Show"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </form>
  </center>
   <hr>
  </body>
</html>