<%@ page language="java" import="java.util.*,java.text.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Job Search</title>
</head>

<body>
  <link href="file:///C|/Users/Administrator/Desktop/jquery-ui_themes_smoothness.css" rel="stylesheet" type="text/css" />
  <div align="center">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  </div>
<link rel="stylesheet" href="/resources/demos/style.css" />
<link href="file:///C|/Users/Administrator/css/fonts.css" rel='stylesheet' type='text/css'>
 <div align="center">
   <%
 java.util.Date date = new java.util.Date();
 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 String formatDate=sdf.format(date);
 %>
 Current Time: <%=formatDate%> </div>
 <HR align="center">
<link type="text/css" rel="Stylesheet"
href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.6/themes/
smoothness/jquery-ui.css" />

<div align="center">
  <style type="text/css">
j
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
  <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {font-size: 24px; font-weight: bold; color: #009900; }
-->
</style>
  <body>
</div>
<p align="center">&nbsp;</p>
<div align="center">
	  <div align="center">
	    <table width="780" border="1" align="center" bordercolor="#33CC00" bgcolor="#33CC00">
	    <tr>
	      <td width="91"><div align="center" class="style11"><a href="../home.jsp">Home</a></div></td>
	      <td width="91"><div align="center" class="style11">Profile</div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/news.html">News</a></div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/faq.html">FAQ</a></div></td>
		  <td width="78"><div align="center" class="style11">Help</div></td>
	      <td width="91"><div align="center" class="style11">Sign out</div></td>
	    </tr>
  </table></div>
	    <p>&nbsp;</p>
	    <form action="jobshow.jsp" method="post">
        <table>
          <tr> </tr>
          <tr>
            <td height="25"><label><strong>Job Category</strong></label></td>
            <td colspan="3"><select name="jobcategory">
               <option value=.... selected>.....</option>
                <option value=Sales>Sales</option>
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
            <td width="122"><div align="center"><strong>Available  Date:</strong></div></td>
            <td colspan="3"><input type="text" id="datepicker1" name="availabledate"/></td>
            <td><input name="submit" type="submit" value="search" />
            </td>
          </tr>
        </table>
        </form>
		 <p>&nbsp;</p>
		 <table width="1197" align="center" bordercolor="#000000" border="1"> 
       <tr bgcolor="#339900">
         <td colspan="12" bgcolor="#33CC00"><div align="center"><strong>Jobs</strong></div></td>
       </tr>
       <tr>
         <td width="114" bordercolor="#000000"><div align="center">OfferID</div></td>
         <td width="108" bordercolor="#000000"><div align="center">JobID</div></td>
          <td width="99" bordercolor="#000000"><div align="center">Name </div></td>
         <td width="97" bordercolor="#000000"><div align="center">Job Duration  </div></td>
		 <td width="77" bordercolor="#000000"><div align="center">Description</div></td>
         <td width="117" bordercolor="#000000"><div align="center">Requirements</div></td>
         <td width="84" bordercolor="#000000"><div align="center">finish date </div></td>
         <td width="81" bordercolor="#000000">TimeChecks</td>
         <td width="124" bordercolor="#000000"><div align="center">Address</div></td>     
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
       <tr>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
         <td bordercolor="#000000">&nbsp;</td>
       </tr>
     </table>
</div>
</body>
</html>
