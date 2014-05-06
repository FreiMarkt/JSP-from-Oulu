<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <%
 Date date = new Date();
 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 String formatDate=sdf.format(date);
 %>
 Current Time: <%=formatDate%> <HR>
    <title>Product_Post</title>

  </head>
  
 
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
<p align="center" class="style1">New Product Detail  </p>
<table width="525" border="1" align="center" bordercolor="#FFFFFF">
  <tr>
    <td><label>Product Category</label></td>
    <td colspan="2"><select name="select">
    </select></td>
  </tr>
  <tr>
    <td width="159">Product Name</td>
    <td colspan="2"><input name="textfield3" type="text" size="35"></td>
  </tr><tr>
    <td><label>BiX</label></td>
    <td colspan="2"><input type="text" name="textfield2"> 
      <span class="style2">(Ex. 5:00)</span></td>
  </tr>
  <tr>
    <td>Number Avaliable:</td>
    <td colspan="2"><input type="text" name="textfield23"></td> </tr>
  <tr>
    <td height="26">Status: </td>
    <td width="85"><label>
      <input type="radio" name="RadioGroup1" value="radio">
New</label>
      <label></label>
    <label></label></td>
    <td width="259"><label>
      <input type="radio" name="RadioGroup1" value="radio">
Used</label></td></tr>
  <tr>
    <td height="26">Shipping: </td>
    <td><label>
      <input type="radio" name="RadioGroup2" value="radio">
Included </label>
      <label></label>
<label></label></td>
    <td><input type="radio" name="RadioGroup2" value="radio">
Not-Included</td></tr>
  <tr>
    <td width="159">Shipping Cost(BiX):    </td>
    <td colspan="2"><label>
      <input type="text" name="textfield22">
    </label></td></tr>
  <tr>
    <td>Delivery Duration </td>
    <td colspan="2"><input type="text" name="textfield">    </td>
  </tr>
  <tr>
    <td height="111"><label>Description</label></td>
    <td colspan="2"><textarea name="textarea" cols="45" rows="10"></textarea></td>
  </tr>
  <tr>
    <td height="28"><label>Image</label></td>
    <td colspan="2"><label>
      <input type="file" name="file">
    </label></td>
  </tr>
  <tr>
    <td height="76" colspan="4"><label></label>
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

</html>
