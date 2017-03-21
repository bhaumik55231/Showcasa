package Controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.loginDAO;
import DAO.updateUserProfileDAO;
import DAO.walletDAO;
import VO.loginVO;
import VO.updateUserRegistrationVO;
import VO.walletVO;


/**
 * Servlet implementation class userLoginController
 */
@WebServlet("/userLoginController")
public class userLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag=request.getParameter("flag");
		 if (flag.equals("logout")) {
				//session.removeAttribute("userID");
				//System.out.println("logout in else if");
				System.out.println(flag);
				session.invalidate();
				response.sendRedirect("User/index.jsp");
		
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session =(((HttpServletRequest) request).getSession());
	String flag=request.getParameter("flag");
	
	if(flag.equals("login"))
	{
		Calendar calObject = Calendar.getInstance();
        calObject.add(Calendar.DAY_OF_YEAR, 0);
        System.out.println(calObject);
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        String reportDate = df.format(calObject.getTime());
        session.setAttribute("Today_date", reportDate);
        
		String emailId = request.getParameter("emailid");
		String password = request.getParameter("password");
		System.out.println(emailId+""+password);

		loginVO LoginVO = new loginVO();
		LoginVO.setUsername(emailId);
		LoginVO.setPassword(password);

		loginDAO loginDAO = new loginDAO();
		List list =  loginDAO.authentication(LoginVO);
		String password2="";
		
		if(list.size()!=0)
		{
			loginVO loginvo2 = (loginVO)list.get(0);
			password2 = loginvo2.getPassword();
		}
		updateUserRegistrationVO updateuserregistrationvo=new updateUserRegistrationVO(); 
		updateuserregistrationvo.setEmail_id(emailId);
		
		
		//String password2="";
		updateUserProfileDAO updateuserprofiledao=new updateUserProfileDAO();
		List list1=updateuserprofiledao.authentication(updateuserregistrationvo);
		
		if(list1 != null && list1.size()>=1 )
		{
			updateUserRegistrationVO user2=(updateUserRegistrationVO)list1.get(0);
			int y=user2.getUser_id();
			//password2 = user2.getPassword();
			System.out.println("XYZ1234");
			System.out.println(y);
			session.setAttribute("userid",y);
			session.setAttribute("user_id",y);
			String username1 = user2.getEmail_id();
			session.setAttribute("un",username1);
			session.setAttribute("user_name",username1);
			session.setAttribute("firstname", user2.getFirst_name());
			session.setAttribute("lastname", user2.getLast_name());
		}
		
		if(list != null && list.size()>=1 && password2.equals(password))
		{


			loginVO user=(loginVO) list.get(0);

			int y1 = user.getLogin_id();
			session.setAttribute("userID",y1);
			String username = user.getUsername();
			System.out.println("Hello");
			/*System.out.println(session.getAttribute("userid"));*/
			String type = user.getUsertype();
			
			walletVO walletvo = new walletVO();
			walletDAO walletdao = new walletDAO();
			
			walletvo.setLogin_id(y1);
			List<walletVO> list_walletvo = new ArrayList<walletVO>();
			list_walletvo = walletdao.get_wallet(walletvo);
			double wallet_balance = list_walletvo.get(0).getBalance();
			
			if(type.equals("user"))
			{
			
				session.setAttribute("usertype",type);
				session.setAttribute("username",username);
				session.setAttribute("user_name",username);
				session.setAttribute("user_id",y1);
				session.setAttribute("wallet_balance", wallet_balance);
				/*System.out.println(type);
				System.out.println(username);
				System.out.println(y1);*/
				//session.setAttribute("usertype",type);
				System.out.println("USER TYPE of user"+session.getAttribute("usertype"));
				System.out.println("USER ID of user"+session.getAttribute("user_id"));
				System.out.println("USER NAME of user"+session.getAttribute("user_name"));
				response.sendRedirect("User/index.jsp");
			}
		}
		else
		{
			response.sendRedirect("User/errorPage1.jsp");
		}
}
}
}
