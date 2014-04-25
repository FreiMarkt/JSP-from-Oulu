package timebank.register;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import timebank.member.*;


public class registerCl extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public registerCl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag=request.getParameter("choose");
		//create a memberBean for all the functions 
		memberbean ub= new memberbean();
		if(flag.equals("register")){
			String memberid = request.getParameter("memberid");
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String name=firstname.concat(lastname);
			String birthday = request.getParameter("birthday");
			String gender = request.getParameter("gender");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String postalcode = request.getParameter("postalcode");
			String city= request.getParameter("city");
			String country = request.getParameter("country");
			String password = request.getParameter("password");
			
			ub.setMemberid(memberid);
			ub.setName(name);
			ub.setBirthday(birthday);
			ub.setGender(gender);
			ub.setEmail(email);
			ub.setAddress(address);
			ub.setPostalcode(postalcode);
			ub.setCity(city);
			ub.setCountry(country);
			ub.setPassword(password);
			PrintWriter out = response.getWriter();
			if(ub.insertmember(((memberbean)request.getSession().getAttribute("userinfo")).getMemberid()))
			{
				out.print("<script type=\"text/javascript\">location.href='main.jsp';" +"alert('registration successfully!');</script>");
			}
			else
			{
				out.print("<script type=\"text/javascript\">location.href='main.jsp';" +"alert('registration failure!');</script>");
			}
		}
	}
}