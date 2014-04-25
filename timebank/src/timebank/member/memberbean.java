package timebank.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import timebank.db.*;;

public class memberbean {
	private String memberid = null;
	private String name = null;
	private String birthday=null;
	private String gender = null;
	private String email= null;
	private String address = null;
	private String postalcode = null;
	private String city = null;
	private String country =null;
	private String password =null;
	
	private Connection conn=null;
	private Statement sm=null;
	private ResultSet a =null;
	private ResultSet e =null;
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String isGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean insertmember(String Memberid)
	{
		boolean b = false;
		String sql1="update STUDENT set MEMBERID='"+memberid+"',";
		//STUDSEX='"+studsex+"',birthday=to_date(substr('"+birthday+"',1,10),'yyyy-mm-dd'), ADDRESS='"+address+"', COUNTRY='"+country+"', POLITICAL='"+political+"', NATION='"+nation+"', MAJOR='"+major+"', DEGREES='"+degrees+"',enrolltime=to_date(substr('"+enrolltime+"',1,10),'yyyy-mm-dd'), ENROLLSTYLE='"+enrollstyle+"', ZAIJI='"+zaiji+"', TELEPHONE='"+telephone+"', XNATIVE='"+xnative+"', RESEARCH='"+research+"', XLEVEL='"+xlevel+"', INSCHOOL='"+inschool+"', ISSOLDIER='"+issoldier+"'  where userid='"+UserId+"'";
		System.out.println(sql1);
		try
		{
			//得到连接
			conn=DBUtil.getInstance().getConnection();
			sm=conn.createStatement();
			int c=sm.executeUpdate(sql1);
			if(c==1)
			{
				b=true;
			}
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			DBUtil.getInstance().release(conn);
		}
		return b;
	}
}
