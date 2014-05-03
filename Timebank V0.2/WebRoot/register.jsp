<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sign up</title>
<link href="jquery-ui_themes_smoothness.css" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<link type="text/css" rel="Stylesheet" href="http://ajax.microsoft.com/ajax/jquery.ui/1.8.6/themes/smoothness/jquery-ui.css" />
<style type="text/css">
.ui-datepicker {
    background: #666666;
    border: 1px solid #555;
    color: #EEE;
}
</style>
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
<script type="text/javascript" src="scripts/ajax.js"> </script>
<script type="text/javascript" src="
http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js">
</script>
<script type="text/javascript" src="
http://ajax.microsoft.com/ajax/jquery.ui/1.8.6/jquery-ui.min.js">
</script>
<script type="text/javascript">
function myAlert(strTitle) {
var message=document.getElementById("myDiv").innerHTML;
var win1 = new Zapatec.AlertWindow(message, {title:strTitle, modal:true, width : 580,height:330});
}
function doCheck2() {
if(register.studid.value!="") {
document.getElementById("studidin").innerHTML = "√";

}
else {
document.getElementById("studidin").innerHTML = "please input your memberId";
}
}
function doCheck3() {
if(register.studid.value!="") {
document.getElementById("useridin").innerHTML = "√";

}
else {
document.getElementById("useridin").innerHTML = "please input your email";
}
}
function check1()
{
if(register.password.value=="")
{
document.getElementById("passin").innerHTML = "The password cannot be empty";
}
else
{
document.getElementById("passin").innerHTML = "√";
}
}
function check2()
{
if(register.repassword.value=="")
{
document.getElementById("repassin").innerHTML = "please re-type the password";
}
else
{
if(register.repassword.value != register.password.value)
document.getElementById("repassin").innerHTML = "Password mis-match";
else
document.getElementById("repassin").innerHTML = "√";

}
} 

$(function () {
        $("#datepic").datepicker();
    });
    
$(document).ready(function() {
$( "#datepicker1" ).datepicker({ minDate: "-80Y+1M+7D", maxDate: "1Y+1M+7D",
changeMonth: true, changeYear: true,
numberOfMonths:1,
dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
dateFormat:"yy-mm-dd",
showAnim:"blind" });//fold, slide, blind, bounce, slideDown, show, fadeIn, clip.
$( "#datepicker2" ).datepicker({ minDate:"-80Y+1M+7D", maxDate: "1Y+1M+7D",
changeMonth: true, changeYear: true,
numberOfMonths:1,
dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
dateFormat:"yy-mm-dd",
showAnim:"fold" });//fold, slide, blind, bounce, slideDown, show, fadeIn, clip.
});
</script>
<style type="text/css">

.style1 {font-family: Arial, Helvetica, sans-serif}
.style3 {
font-size: 36px;
color: #33CC33;
}
.style4 {
font-family: Arial, Helvetica, sans-serif;
font-size: 24px;
font-weight: bold;
}
body {
background-image: url();
background-repeat: no-repeat;
margin-left: 50px;
margin-right: 75px;
background-color: #009933;
}
.style5 {color: #FF0000}
.style6 {
color: #999999;
font-size: 14px;
}
.style7 {font-family: Arial, Helvetica, sans-serif; font-size: 16px; }
.style8 {
font-size: 18px;
font-weight: bold;
}
.style10 {font-family: Arial, Helvetica, sans-serif; font-size: 18px; }
.style12 {font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; }
.style13 {
color: #FF0000;
font-family: Arial, Helvetica, sans-serif;
font-size: 16px;
}
</style>
</head>

<body>
<form id="register" name="register"  action="insert.jsp" method="post">
 <table width="898" border="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
 <tr>
   <td height="51" colspan="3">&nbsp;</td>
   <td>&nbsp;</td>
 </tr>
 <tr>
   <td colspan="3"><span class="style3">FREE MARKET SOUTH TYROL</span></td>
   <td><span class="style1"><img src="image/Capture.JPG" alt="logo" width="130" height="84" align="absmiddle"></span></td>
 </tr>
 <tr>
   <td height="35" colspan="4">&nbsp;</td>
 </tr>
 <tr>
   <td colspan="4"><span class="style4">User account</span></td>
 </tr>
 <tr>
   <td colspan="4"><span class="style7">
     <label></label>
   </span></td>
 </tr>
 <tr>
   <td colspan="4"></div>Account
 </div>
Information: </td>
 </tr>
 <tr>
   <td>Member ID<span class="style13">*</span></td>
   <td colspan="3"><input type="text" name="memberid" tabindex="Name" />
     <span class="style6">The Social Number </span></td>
   </tr>
 <tr>
   <td width="137"><span class="style7">
     <label>First Name<span class="style5">*</span></label>
   </span></td>
   <td width="259"><span class="style7">
     <label>
     <input type="text" name="firstname" tabindex="Name" size="30"/>
     </label>
   </span></td>
   <td width="134"><span class="style7">
     <label> </label>
     <label>Last Name<span class="style5">*</span></label>
   </span></td>
   <td width="340"><span class="style7">
     <label>
     <input type="text" name="lastname" tabindex="Name" size="30"/>
     </label>
   </span></td>
 </tr>
 <tr>
   <td><span class="style7">
     <label>Birth Date<span class="style5">*</span></label>
   </span></td>
   <td><input type="text" id="datepicker1" name="birthday"/></td>
  
<td align="left">Gender</td>
<td><input name="gender" type="radio" value="male" checked>Male
<input name="gender" type="radio"value="female">Female</td>
</tr>
</tr>
 <tr>
   <td><span class="style7">
     <label>Email<span class="style5">* </span></label>
   </span></td>
   <td><span class="style7">
     <label>
     <input type="text" name="email" size="30"/>
     </label>
     <label></label>
   </span></td>
    <td><span class="style7">
     <label>Phone Number<span class="style5">* </span></label>
   </span></td>
   <td><span class="style7">
     <label>
     <input type="text" name="phonenumber" size="30"/>
     </label>
     <label></label>
   </span></td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
 </tr>
 <tr>
   <td colspan="4"><span class="style7">
     <label></label><label><span class="style6">A valid e-mail address. All e-mails from the system will be sent to this address. The e-mail address is not made public and will only be used if you wish to receive a new password or wish to receive certain news or notifications by e-mail.</span></label>
   </span></td>
 </tr>
 <tr>
   <td><span class="style7">
     <label>Address<span class="style5">* </span></label>
   </span></td>
   <td colspan="3"><input name="address" type="text" value="" size="75"></td>
   </tr>
 <tr>
   <td><span class="style7">City</span><span class="style13">*</span></td>
   <td><input type="text" name="city" /></td>
   <td><span class="style7">Postal Code<span class="style5">* </span></span><span class="style10"> </span><span class="style12"> </span><span class="style10"> </span><span class="style1"></span></td>
   <td><span class="style7">
     <input type="text" name="postalcode" />
   </span></td>
 </tr>
 <tr>
   <td>Country<span class="style5">*</span></td>
   <td><span class="style7">
     <label>
     <input type="text" name="country" />
     </label>
   </span> </td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
 </tr>
 <tr>
   <td><span class="style7">
     <label></label>
     <label>Password<span class="style5">* </span></label>
</span></td>
   <td colspan="3"><span class="style7">
     <label>
    <input type="password" name ="password" onblur="check1()" ><div id="passin"></div>
     </label>
   </span><span class="style6">Password must be a combination of letters and numbers. </span></td>
   </tr>
 <tr>
   <td><span class="style7">
     <label>Confirm Password<span class="style5">*</span> </label>
   </span></td>
   <td><input type="password" name="repassword" onblur="check2()"><div id="repassin"></div></td>
   <td>&nbsp;</td>
   <td>&nbsp;</td>
 </tr>
 <tr>
   <td colspan="4"><span class="style7">
     <label></label>
   </span></td>
 </tr>
 <tr>
   <td colspan="4">&nbsp;</td>
 </tr>
 <tr>
   <td colspan="4"><span class="style7">
     <legend class="style8">Terms of Use:</legend>
   </span></td>
 </tr>
 <tr>
   <td colspan="4"><div>I understand that FreiMarkt TimeBanks  shall have neither liability nor responsibility to any person or entity with respect to loss, damage, or injury caused or alleged to be caused directly or indirectly by information contained on this web site or any other Time Bank resources.</div>
     <div>I pledge not to reveal the contents of this site, nor any other documentation provided by my  Time Bank to non-members, especially any personal information provided.</div>
     <div>I understand that I will receive messages from other members of my Time Bank through this web site. Notification of such messages will be sent to the email address I have registered with. I also understand that I will receive newsletters, broadcasts and alerts for my Time Bank from my Teller(s) through this web site.</div>
     <div>I understand that the function of my  Time Bank is to facilitate the exchange of services within the community. &nbsp;It is my responsibility to use the same caution I would in other circumstances to get to know a person, make reference checks, and use my instincts before engaging with another Time Bank participant - especially for babysitting, elder care, and driving. Since any agreements shall be made by and between parties involved in this transaction, my  Time Bank will not be held responsible and will not assume any liability for claims, damages, or any other consequences which may arise from this arrangement.</div>
     <div>I hereby agree the duty, responsibility, and liability that is inherent with Time Bank exchanges shall remain as it would be if the parties were not part of any Time Bank. I agree to leave intact the normal remedies and cause-of-action available to these parties in the event of any unforeseen circumstance. I agree to indemnify and hold harmless all parties who facilitate or participate in Time Bank exchanges.</div>
     <div>I understand that my  Time Bank may not be incorporated or have legal status as an organization. I agree to abide by the core values, rules, and guidelines provided by Freimarkt  Time Bank for proper and courteous behavior. I pledge to proceed with good intent towards being of service to others in my community and treat others in the Time Bank with the respect and kindness.</div>
     <div>Completion of this application may not conclude the process for joining your local Time Bank. &nbsp;An orientation or introduction and/or references may be necessary to finalize your membership.</div></td>
 </tr>
 <tr>
   <td colspan="4">&nbsp;</td>
 </tr>
 <tr>
   <td colspan="4"><span class="style7">
     <label>
     <input type="checkbox" name="agreement" value="checkbox">
I agree with these terms.&nbsp;<span class="style5">* </span></label>
   </span> </td>
 </tr>
 <tr>
   <td colspan="4">&nbsp;</td>
 </tr>
</table>
<p class="style7">
<input type="submit" value="Register">
 <input type="reset" value="Cancel">
</p>
</form>

<p>&nbsp; </p>
</body>

</html>
