<%@ page language="java" import="java.util.*,java.text.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" >

<body>
<head>
<meta charset="utf-8" />

<link href="jquery-ui_themes_smoothness.css" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<link href="../css/fonts.css" rel='stylesheet' type='text/css'>

 <%
 java.util.Date date = new java.util.Date();
 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 String formatDate=sdf.format(date);
 //acquire memberid from Cookies
 String memberid=null;
 String firstname=null;
 String lastname=null;
 Cookie[] cookies=request.getCookies();
 Cookie[] cookies2=request.getCookies();
 Cookie[] cookies3=request.getCookies();
 for(int i=0;i<cookies.length;i++){
           if(cookies[i].getName().equals("memberid")){
               memberid=cookies[i].getValue();
               break;
           }
 }
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
 Current Time: <%=formatDate%> Welcome: <% out.println(firstname+" "+lastname);%><HR>
<link type="text/css" rel="Stylesheet"
href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.6/themes/
smoothness/jquery-ui.css" />

<style type="text/css">j
.ui-datepicker {
    background: #666666;
    border: 1px solid #555;
    color: #EEE;
}
</style>

<script type="text/javascript" src="
http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js">
</script>
<script type="text/javascript" src="
http://ajax.microsoft.com/ajax/jquery.ui/1.8.6/jquery-ui.min.js">
</script>


<script type="text/javascript">
    $(function () {
        $("#datepic").datepicker();
    });
</script>
<script type="text/javascript">
$(document).ready(function() {
$( "#datepicker1" ).datepicker({ minDate: 0, maxDate: "2Y+1M+7D",
changeMonth: true, changeYear: true,
numberOfMonths:1,
dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
dateFormat:"yy.mm.dd",
showAnim:"blind" });//fold, slide, blind, bounce, slideDown, show, fadeIn, clip.
$( "#datepicker2" ).datepicker({ minDate: 0, maxDate: "2Y+1M+7D",
changeMonth: true, changeYear: true,
numberOfMonths:1,
dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
dateFormat:"yy.mm.dd",
showAnim:"fold" });//fold, slide, blind, bounce, slideDown, show, fadeIn, clip.
});
      
</script>
</head>
<title> Job_Post</title>
<style type="text/css">
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {color: #999999}
.style3 {color: #FF0000}
</style>
<p>&nbsp;</p>
	<div align="center">
	  <table width="780" border="1" align="center" bordercolor="#33CC00" bgcolor="#33CC00">
	    <tr>
	      <td width="91"><div align="center" class="style11"><a href="../home.jsp">Home</a></div></td>
	      <td width="91"><div align="center" class="style11">Profile</div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/news.html">News</a></div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/faq.html">FAQ</a></div></td>
		  <td width="78"><div align="center" class="style11">Help</div></td>
	      <td width="91"><div align="center" class="style11"><a href="../member/frontpage.jsp">Sign out</a></div></td>
	    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>
<p align="center" class="style1">New Job Detail  </p>
<form action="../jobs/jobinsert.jsp" method="post">
<table width="500" border="1" align="center" bordercolor="#FFFFFF">
<tr>
    <td width="122">Offerer ID</td>
    <td colspan="3"><input name="offererid" type="text" size="35" value=<%=memberid%>></td>
  </tr>
  <tr>
    <td width="122">Job ID</td>
    <td colspan="3"><input name="jobid" type="text" size="35"></td>
  </tr>
  <tr>
    <td><label>Job Category</label></td>
    <td width="362" colspan="3"><select name="jobcategory">
     <option value=Sales selected>Sales</option>
     <option value=Training>Training</option>
      <option value=Warehouse>Warehouse</option>
       <option value=Contruction>Construction</option>
        <option value=Design>Design</option>
         <option value=Education>Education</option>
          <option value=Finance>Finance</option>
           <option value=GeneralLabor>General Labor</option>
            <option value=HealthCare>HealthCare</option>
             <option value=Nurse>Nurse</option>
              <option value=Others>Others</option>
    </select></td>
  </tr>
  <tr>
    <td width="122">Job Name</td>
    <td colspan="3"><input name="jobname" type="text" size="35"></td>
  </tr>
  <tr>
    <td width="122">Job Address</td>
    <td colspan="3"><input name="jobaddress" type="text" size="35"></td>
  </tr>
  <tr>
    <td width="122">Available  Date:</td>
    <td colspan="3"><input type="text" id="datepicker1" name="availabledate"/></td></tr>
  <tr>
    <td><label>BiX</label></td>
    <td colspan="3"><input type="text" name="jobtimechecks"> 
      <span class="style2">(e.g.5 hours)</span></td>
  </tr>
  <tr>
    <td>Hours(per day)</td>
    <td colspan="3"><input type="text" name="jobduration"> <span class="style2">(e.g.2 hours)</span></td>
  </tr>
  <tr>
    <td width="122">Finish  Date:</td>
    <td colspan="3"><input type="text" id="datepicker2" name="finishdate"/></td></tr>
  <tr>
    <td height="111"><label>Description</label></td>
    <td colspan="3"><textarea  name="jobdescription" cols="45" rows="10"></textarea></td>
  </tr>
  <tr>
    <td height="136"><label>Requirements</label></td>
    <td colspan="3"><textarea name="jobrequirements" cols="45" rows="10"></textarea></td>
  </tr>
  <tr>
    <td height="80" colspan="4"><label></label>
      <input type="checkbox" name="checkbox" value="checkbox">
Check here to verify above information.<span class="style3">*</span></td>
  </tr>
</table>
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

  
