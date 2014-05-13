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
	    <table width="780" border="1" align="center" bordercolor="#33CC00" bgcolor="#33CC00">
	    <tr>
	      <td width="91"><div align="center" class="style11"><a href="home.jsp">Home</a></div></td>
	      <td width="91"><div align="center" class="style11">Profile</div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/news.html">News</a></div></td>
		  <td width="81"><div align="center" class="style11"><a href="http://sfdj14.inf.unibz.it:8080/faq.html">FAQ</a></div></td>
		  <td width="78"><div align="center" class="style11">Help</div></td>
	      <td width="91"><div align="center" class="style11"><a href="member/frontpage.jsp">Sign out</a></div></td>
	    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>
<p align="center" class="style1">New Product Detail  </p>
<form action="products/productinsert.jsp" method="post">
<table width="525" border="1" align="center" bordercolor="#FFFFFF">
<tr>
    <td width="159">Seller ID</td>
    <td colspan="2"><input name="sellerid" type="text" size="35" value=<%=memberid %>></td>
  </tr>
<tr>
    <td width="159">Product ID</td>
    <td colspan="2"><input name="productid" type="text" size="35"></td>
  </tr>
  <tr>
    <td><label>Product Category</label></td>
    <td colspan="2"><select name="productcategory">
    <option value="Food">Food</option>
    <option value="Beverage">Beverage</option>
    <option value="Media">Media</option>
    <option value="Retail">Retail</option>
    <option value="Health">Health</option>
    <option value="Telecommunications">Telecommunications</option>
    <option value="Sports">Sports</option>
    <option value="Technology">Technology</option>
    </select></td>
  </tr>
  <tr>
    <td width="159">Product Name</td>
    <td colspan="2"><input name="productname" type="text" size="35"></td>
  </tr><tr>
    <td><label>BiX</label></td>
    <td colspan="2"><input type="text" name="producttimechecks"> 
      <span class="style2">(e.g. 5 hours)</span></td>
  </tr>
  <tr>
    <td>Number Available:</td>
    <td colspan="2"><input type="text" name="numberavailable"></td> </tr>
  <tr>
    <td height="26">Status: </td>
    <td width="85"><label>
      <input type="radio" name="productcondition" value="new">
New</label>
      <label></label>
    <label></label></td>
    <td width="259"><label>
      <input type="radio" name="productcondition" value="used">
Used</label></td></tr>
  <tr>
    <td height="26">Shipping: </td>
    <td><label>
      <input type="radio" name="shippingcondition" value="included">
Included </label>
      <label></label>
<label></label></td>
    <td><input type="radio" name="shippingcondition" value="not-included">
Not-Included</td></tr>
  <tr>
    <td width="159">Shipping Cost(BiX):    </td>
    <td colspan="2"><label>
      <input type="text" name="shippingcost">
      <span class="style2">(e.g. 5 hours)</span>
    </label></td></tr>
  <tr>
    <td>Delivery Duration </td>
    <td colspan="2"><input type="text" name="deliveryduration"> <span class="style2">(e.g. 5 days)</span>   </td>
  </tr>
  <tr>
    <td height="111"><label>Description</label></td>
    <td colspan="2"><textarea name="productdescription" cols="45" rows="10"></textarea></td>
  </tr>
  <tr>
    <td height="76" colspan="4"><label></label>
      <input type="checkbox" name="checkbox" value="checkbox">
Check here to verify above information.<span class="style3">*</span></td>
  </tr>
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

</html>
