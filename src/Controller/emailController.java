package Controller;

import java.io.IOException; 
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.emailDAO;
import VO.loginVO;

/**
 * Servlet implementation class emailController
 */
@WebServlet("/emailController")
public class emailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag=request.getParameter("flag");
		if(flag.equals("change") )
		{
			System.out.println(flag);
			
			String emailId = request.getParameter("emailId");
			System.out.println(emailId);
			loginVO LoginVO = new loginVO();
			LoginVO.setUsername(emailId);
			

			emailDAO loginDAO = new emailDAO();
			List list =  loginDAO.authentication(LoginVO);

			if(list != null && list.size()>=1){
				System.out.println("Hello");
				loginVO user=(loginVO) list.get(0);

				long y = user.getLogin_id();
				session.setAttribute("userID",y);

				System.out.println(user.getUsertype());
				
				String type = user.getUsertype();
				session.setAttribute("usertype",type);
				System.out.println(y);
				
				response.sendRedirect("User/changePassword.jsp");
				
				
				
			}
			else
			{
				response.sendRedirect("User/index.jsp");
			}
		}


	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
			
	}

}
