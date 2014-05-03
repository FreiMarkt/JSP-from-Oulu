<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

  Date<input id="datepic"/>
<link type="text/css" rel="Stylesheet"
href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.6/themes/
smoothness/jquery-ui.css" />

<style type="text/css">
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
$( "#datepicker1" ).datepicker({ minDate: 0, maxDate: "1Y+1M+7D",
changeMonth: true, changeYear: true,
numberOfMonths:1,
dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
dateFormat:"dd.mm.yy",
showAnim:"blind" });//fold, slide, blind, bounce, slideDown, show, fadeIn, clip.
$( "#datepicker2" ).datepicker({ minDate: 0, maxDate: "1Y+1M+7D",
changeMonth: true, changeYear: true,
numberOfMonths:1,
dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
dateFormat:"dd.mm.yy",
showAnim:"fold" });//fold, slide, blind, bounce, slideDown, show, fadeIn, clip.
});
      
</script>
</head>
<title>Job_Post</title>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {color: #999999}
.style3 {color: #FF0000}
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
<p align="center" class="style1">New Job Detail  </p>
<table width="500" border="1" align="center" bordercolor="#FFFFFF">
  <tr>
    <td><label>Job Category</label></td>
    <td width="362" colspan="3"><select name="select">
    </select></td>
  </tr>
  <tr>
    <td width="122">Job Name</td>
    <td colspan="3"><input name="textfield3" type="text" size="35"></td>
  </tr>
  <tr>
    <td width="122">Avaliable  Date:</td>
    <td colspan="3"><input type="text" id="datepicker1" name="datepicker1"/></td></tr>
  <tr>
    <td><label>BiX</label></td>
    <td colspan="3"><input type="text" name="textfield2"> 
      <span class="style2">(Ex. 5:00)</span></td>
  </tr>
  <tr>
    <td>Hours(per day)</td>
    <td colspan="3"><input type="text" name="textfield"> <span class="style2">(Ex. 2:00)</span></td>
  </tr>
  <tr>
    <td width="122">Finish  Date:</td>
    <td colspan="3"><input type="text" id="datepicker2" name="datepicker2"/></td></tr>
  <tr>
    <td height="111"><label>Description</label></td>
    <td colspan="3"><textarea name="textarea" cols="45" rows="10"></textarea></td>
  </tr>
  <tr>
    <td height="136"><label>Requirements</label></td>
    <td colspan="3"><textarea name="textarea2" cols="45" rows="10"></textarea></td>
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
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="style7">
</p>
</body>
</html>

  
