package Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






import DAO.contactUsDAO;
import VO.contactUsVO;


/**
 * Servlet implementation class contactUsController
 */
@WebServlet("/contactUsController")
public class contactUsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactUsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag=request.getParameter("flag");
		if(flag.equals("on"))
		{
			System.out.println("Happy?");
			try {
				OnDemandJob obj = new OnDemandJob( new Timestamp( (new Date() ).getTime()  ), "TR1121835");
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("User/workhouse.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		
		if(flag.equals("add_contact"))
		{
			System.out.println(flag);
			String name= request.getParameter("name");
			String email_id=request.getParameter("emailid");
			String msg=request.getParameter("message");
			
			contactUsVO contactusvo=new contactUsVO();
			contactusvo.setName(name);
			contactusvo.setEmail_id(email_id);
			contactusvo.setMessage(msg);
			
			
			contactUsDAO dao=new contactUsDAO();
			dao.add_contact(contactusvo);
			
			response.sendRedirect("User/index.jsp");
				
		}
		
	
	
	}

}
