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
document.getElementById("studidin").innerHTML = "¡Ì";

}
else {
document.getElementById("studidin").innerHTML = "please input your memberId";
}
}
function doCheck3() {
if(register.studid.value!="") {
document.getElementById("useridin").innerHTML = "¡Ì";

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
document.getElementById("passin").innerHTML = "¡Ì";
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
document.getElementById("repassin").innerHTML = "¡Ì";

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
background-color: #FFFFFF;
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
 <table width="898" border="1" align="center" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
 <tr>
   <td height="51" colspan="3">&nbsp;</td>
   <td>&nbsp;</td>
 </tr>
 <tr>
   <td colspan="3"><span class="style3">FREE MARKET SOUTH TYROL</span></td>
   <td>&nbsp;</td>
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
   <td colspan="4"><span class="style7">Account Information:</span> </td>
 </tr>
   <tr>
   <td width="137"><span class="style7">
     <label>Member ID<span class="style5">*</span></label>
   </span></td>
   <td width="259"><span class="style7">
     <label>
     <input type="text" name="memberid" tabindex="Name" size="30"/>
     </label>
   </span></td>
   <td width="134"><span class="style7">
     <label> </label>
     <label>Member Type<span class="style5">*</span></label>
   </span></td>
   <td><span class="style7">
     <label><select name="roleid">
		    <option value=" " selected> </option>
            <option value="1" >Active User(non-55+) </option>
            <option value="2">Active User(55+) </option>
            <option value="3">Passive User(non-55+) </option>
            <option value="4">Passive User(55+) </option>         
          </select>
     </label>
   </span></td>
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
  
<td align="left"><span class="style7">Gender</span><span class="style13">*</span></td>
<td><input name="gender" type="radio" value="male" checked><span class="style7">Male</span>
<input name="gender" type="radio"value="female"><span class="style7">Female</span></td>
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
<td align="left"><label><span class="style7">Country</span><span class="style5">* </span></label> </td>
<td> <span class="style7">
 <label>
 <select name="country" class="form-select location_auto_country" id="edit-locations-0-country" >
 <option value="" selected="selected">Please select</option>
 <option value="af">Afghanistan</option>
 <option value="ax">Aland Islands</option>
 <option value="al">Albania</option>
 <option value="dz">Algeria</option>
 <option value="as">American Samoa</option>
 <option value="ad">Andorra</option>
 <option value="ao">Angola</option>
 <option value="ai">Anguilla</option>
 <option value="aq">Antarctica</option>
 <option value="ag">Antigua and Barbuda</option>
 <option value="ar">Argentina</option>
 <option value="am">Armenia</option>
 <option value="aw">Aruba</option>
 <option value="au">Australia</option>
 <option value="at">Austria</option>
 <option value="az">Azerbaijan</option>
 <option value="bs">Bahamas</option>
 <option value="bh">Bahrain</option>
 <option value="bd">Bangladesh</option>
 <option value="bb">Barbados</option>
 <option value="by">Belarus</option>
 <option value="be">Belgium</option>
 <option value="bz">Belize</option>
 <option value="bj">Benin</option>
 <option value="bm">Bermuda</option>
 <option value="bt">Bhutan</option>
 <option value="bo">Bolivia</option>
 <option value="ba">Bosnia and Herzegovina</option>
 <option value="bw">Botswana</option>
 <option value="bv">Bouvet Island</option>
 <option value="br">Brazil</option>
 <option value="io">British Indian Ocean Territory</option>
 <option value="vg">British Virgin Islands</option>
 <option value="bn">Brunei</option>
 <option value="bg">Bulgaria</option>
 <option value="bf">Burkina Faso</option>
 <option value="bi">Burundi</option>
 <option value="kh">Cambodia</option>
 <option value="cm">Cameroon</option>
 <option value="ca">Canada</option>
 <option value="cv">Cape Verde</option>
 <option value="ky">Cayman Islands</option>
 <option value="cf">Central African Republic</option>
 <option value="td">Chad</option>
 <option value="cl">Chile</option>
 <option value="cn">China</option>
 <option value="cx">Christmas Island</option>
 <option value="cc">Cocos (Keeling) Islands</option>
 <option value="co">Colombia</option>
 <option value="km">Comoros</option>
 <option value="cg">Congo (Brazzaville)</option>
 <option value="cd">Congo (Kinshasa)</option>
 <option value="ck">Cook Islands</option>
 <option value="cr">Costa Rica</option>
 <option value="hr">Croatia</option>
 <option value="cu">Cuba</option>
 <option value="cy">Cyprus</option>
 <option value="cz">Czech Republic</option>
 <option value="dk">Denmark</option>
 <option value="dj">Djibouti</option>
 <option value="dm">Dominica</option>
 <option value="do">Dominican Republic</option>
 <option value="ec">Ecuador</option>
 <option value="eg">Egypt</option>
 <option value="sv">El Salvador</option>
 <option value="gq">Equatorial Guinea</option>
 <option value="er">Eritrea</option>
 <option value="ee">Estonia</option>
 <option value="et">Ethiopia</option>
 <option value="fk">Falkland Islands</option>
 <option value="fo">Faroe Islands</option>
 <option value="fj">Fiji</option>
 <option value="fi">Finland</option>
 <option value="fr">France</option>
 <option value="gf">French Guiana</option>
 <option value="pf">French Polynesia</option>
 <option value="tf">French Southern Territories</option>
 <option value="ga">Gabon</option>
 <option value="gm">Gambia</option>
 <option value="ge">Georgia</option>
 <option value="de">Germany</option>
 <option value="gh">Ghana</option>
 <option value="gi">Gibraltar</option>
 <option value="gr">Greece</option>
 <option value="gl">Greenland</option>
 <option value="gd">Grenada</option>
 <option value="gp">Guadeloupe</option>
 <option value="gu">Guam</option>
 <option value="gt">Guatemala</option>
 <option value="gg">Guernsey</option>
 <option value="gn">Guinea</option>
 <option value="gw">Guinea-Bissau</option>
 <option value="gy">Guyana</option>
 <option value="ht">Haiti</option>
 <option value="hm">Heard Island and McDonald Islands</option>
 <option value="hn">Honduras</option>
 <option value="hk">Hong Kong S.A.R., China</option>
 <option value="hu">Hungary</option>
 <option value="is">Iceland</option>
 <option value="in">India</option>
 <option value="id">Indonesia</option>
 <option value="ir">Iran</option>
 <option value="iq">Iraq</option>
 <option value="ie">Ireland</option>
 <option value="im">Isle of Man</option>
 <option value="il">Israel</option>
 <option value="it">Italy</option>
 <option value="ci">Ivory Coast</option>
 <option value="jm">Jamaica</option>
 <option value="jp">Japan</option>
 <option value="je">Jersey</option>
 <option value="jo">Jordan</option>
 <option value="kz">Kazakhstan</option>
 <option value="ke">Kenya</option>
 <option value="ki">Kiribati</option>
 <option value="kw">Kuwait</option>
 <option value="kg">Kyrgyzstan</option>
 <option value="la">Laos</option>
 <option value="lv">Latvia</option>
 <option value="lb">Lebanon</option>
 <option value="ls">Lesotho</option>
 <option value="lr">Liberia</option>
 <option value="ly">Libya</option>
 <option value="li">Liechtenstein</option>
 <option value="lt">Lithuania</option>
 <option value="lu">Luxembourg</option>
 <option value="mo">Macao S.A.R., China</option>
 <option value="mk">Macedonia</option>
 <option value="mg">Madagascar</option>
 <option value="mw">Malawi</option>
 <option value="my">Malaysia</option>
 <option value="mv">Maldives</option>
 <option value="ml">Mali</option>
 <option value="mt">Malta</option>
 <option value="mh">Marshall Islands</option>
 <option value="mq">Martinique</option>
 <option value="mr">Mauritania</option>
 <option value="mu">Mauritius</option>
 <option value="yt">Mayotte</option>
 <option value="mx">Mexico</option>
 <option value="fm">Micronesia</option>
 <option value="md">Moldova</option>
 <option value="mc">Monaco</option>
 <option value="mn">Mongolia</option>
 <option value="me">Montenegro</option>
 <option value="ms">Montserrat</option>
 <option value="ma">Morocco</option>
 <option value="mz">Mozambique</option>
 <option value="mm">Myanmar</option>
 <option value="na">Namibia</option>
 <option value="nr">Nauru</option>
 <option value="np">Nepal</option>
 <option value="nl">Netherlands</option>
 <option value="an">Netherlands Antilles</option>
 <option value="nc">New Caledonia</option>
 <option value="nz">New Zealand</option>
 <option value="ni">Nicaragua</option>
 <option value="ne">Niger</option>
 <option value="ng">Nigeria</option>
 <option value="nu">Niue</option>
 <option value="nf">Norfolk Island</option>
 <option value="mp">Northern Mariana Islands</option>
 <option value="kp">North Korea</option>
 <option value="no">Norway</option>
 <option value="om">Oman</option>
 <option value="pk">Pakistan</option>
 <option value="pw">Palau</option>
 <option value="ps">Palestinian Territory</option>
 <option value="pa">Panama</option>
 <option value="pg">Papua New Guinea</option>
 <option value="py">Paraguay</option>
 <option value="pe">Peru</option>
 <option value="ph">Philippines</option>
 <option value="pn">Pitcairn</option>
 <option value="pl">Poland</option>
 <option value="pt">Portugal</option>
 <option value="pr">Puerto Rico</option>
 <option value="qa">Qatar</option>
 <option value="re">Reunion</option>
 <option value="ro">Romania</option>
 <option value="ru">Russia</option>
 <option value="rw">Rwanda</option>
 <option value="sh">Saint Helena</option>
 <option value="kn">Saint Kitts and Nevis</option>
 <option value="lc">Saint Lucia</option>
 <option value="pm">Saint Pierre and Miquelon</option>
 <option value="vc">Saint Vincent and the Grenadines</option>
 <option value="ws">Samoa</option>
 <option value="sm">San Marino</option>
 <option value="st">Sao Tome and Principe</option>
 <option value="sa">Saudi Arabia</option>
 <option value="sn">Senegal</option>
 <option value="rs">Serbia</option>
 <option value="cs">Serbia And Montenegro</option>
 <option value="sc">Seychelles</option>
 <option value="sl">Sierra Leone</option>
 <option value="sg">Singapore</option>
 <option value="sk">Slovakia</option>
 <option value="si">Slovenia</option>
 <option value="sb">Solomon Islands</option>
 <option value="so">Somalia</option>
 <option value="za">South Africa</option>
 <option value="gs">South Georgia and the South Sandwich Islands</option>
 <option value="kr">South Korea</option>
 <option value="es">Spain</option>
 <option value="lk">Sri Lanka</option>
 <option value="sd">Sudan</option>
 <option value="sr">Suriname</option>
 <option value="sj">Svalbard and Jan Mayen</option>
 <option value="sz">Swaziland</option>
 <option value="se">Sweden</option>
 <option value="ch">Switzerland</option>
 <option value="sy">Syria</option>
 <option value="tw">Taiwan</option>
 <option value="tj">Tajikistan</option>
 <option value="tz">Tanzania</option>
 <option value="th">Thailand</option>
 <option value="tl">Timor-Leste</option>
 <option value="tg">Togo</option>
 <option value="tk">Tokelau</option>
 <option value="to">Tonga</option>
 <option value="tt">Trinidad and Tobago</option>
 <option value="tn">Tunisia</option>
 <option value="tr">Turkey</option>
 <option value="tm">Turkmenistan</option>
 <option value="tc">Turks and Caicos Islands</option>
 <option value="tv">Tuvalu</option>
 <option value="vi">U.S. Virgin Islands</option>
 <option value="ug">Uganda</option>
 <option value="ua">Ukraine</option>
 <option value="ae">United Arab Emirates</option>
 <option value="uk">United Kingdom</option>
 <option value="us" >United States</option>
 <option value="um">United States Minor Outlying Islands</option>
 <option value="uy">Uruguay</option>
 <option value="uz">Uzbekistan</option>
 <option value="vu">Vanuatu</option>
 <option value="va">Vatican</option>
 <option value="ve">Venezuela</option>
 <option value="vn">Vietnam</option>
 <option value="wf">Wallis and Futuna</option>
 <option value="eh">Western Sahara</option>
 <option value="ye">Yemen</option>
 <option value="zm">Zambia</option>
 <option value="zw">Zimbabwe</option></select>
  </label>
   </span>
    <td>&nbsp; </td>
   <td>&nbsp; </td>
 </td>
</tr>
<tr>
 <tr>
   <td><span class="style7">
     <label></label>
     <label>Password<span class="style5">* </span></label>
</span></td>
   <td colspan="3"><span class="style7">
     <label>
    <input type="password" name ="password" onBlur="check1()" ><div id="passin"></div>
     </label>
   </span><span class="style6">Password must be a combination of letters and numbers. </span></td>
   </tr>
 <tr>
   <td><span class="style7">
     <label>Confirm Password<span class="style5">*</span> </label>
   </span></td>
   <td><input type="password" name="repassword" onBlur="check2()"><div id="repassin"></div></td>
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
 </table>
   <td colspan="4">&nbsp;</td>
 </tr>
 <p class="style7" align="center">
<input type="submit" value="Register">
 <input type="reset" value="Cancel">
</p>

</form>

<p>&nbsp; </p>
</body>

</html>