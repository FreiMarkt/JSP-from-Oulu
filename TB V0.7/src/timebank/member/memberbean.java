package timebank.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import timebank.db.*;;

public class memberbean {
	private String memberid = null;
	private String birthday=null;
	private String gender = null;
	private String email= null;
	private String address = null;
	private String postalcode = null;
	private String city = null;
	private String country =null;
	private String password =null;
	private String phonenumber=null;
	private String firstname=null;
	private String lastname=null;

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
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGender() {
		return gender;
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
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public boolean insertmember(String Memberid)
	{
		boolean b = false;
		String sql1="INSERT INTO member( memberid, ppassword, gender, address, email, phonenumber, paymentstatus, fiftyfivemember, birthday, roleid, firstname, lastname, city, country, postalcode) VALUES ('"+memberid+"', '"+password+"',TRUE, '"+address+"', '"+email+"', '"+phonenumber+"', TRUE, TRUE, to_date(substr('"+birthday+"',1,10),1, '"+firstname+"', '"+lastname+"', '"+city+"', '"+country+"', "+postalcode+");";
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
