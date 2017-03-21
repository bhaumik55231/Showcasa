package Controller;

import java.io.IOException; 
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.changePasswordDAO;
import DAO.emailDAO;
import VO.loginVO;

/**
 * Servlet implementation class changePasswordController
 */
@WebServlet("/changePasswordController")
public class changePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changePasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
HttpSession session =(((HttpServletRequest) request).getSession());
		
		String flag=request.getParameter("flag");
			if(flag.equals("change") )
			{
				System.out.println(flag);

				String old_password = request.getParameter("oldpassword");
				
				System.out.println(old_password);

				loginVO LoginVO = new loginVO();
				LoginVO.setPassword(old_password);
				

				changePasswordDAO cpDAO = new changePasswordDAO();
				List list =  cpDAO.authentication(LoginVO);

				if(list != null && list.size()>=1){

					loginVO user=(loginVO) list.get(0);

					int y = user.getLogin_id();
					session.setAttribute("userID",y);
					System.out.println(y);
					
					String type = user.getUsertype();
					session.setAttribute("usertype",type);
					System.out.println(type);
					
					String email = user.getUsername();
					session.setAttribute("username",email);
					System.out.println(email);
					
					
					String new_password=request.getParameter("newpassword1");
					System.out.println(new_password);
					LoginVO.setLogin_id(y);
					LoginVO.setUsername(email);
					LoginVO.setUsertype(type);
					LoginVO.setPassword(new_password); 
					cpDAO.update(LoginVO);
					
					
					
					
					
					response.sendRedirect("User/index.jsp");
					
					
					
				}
				else
				{
					response.sendRedirect("User/changePassword.jsp");
				}
			}


	
	
	}

}
