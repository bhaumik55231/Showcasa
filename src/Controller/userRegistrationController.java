package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.cityDAO;
import DAO.loginDAO;
import DAO.stateDAO;
import DAO.userRegistrationDAO;
import DAO.walletDAO;
import VO.cityVO;
import VO.countryVO;
import VO.loginVO;
import VO.stateVO;
//import VO.userRegistrationVO;
import VO.userRegistrationVO;
import VO.walletVO;

/**
 * Servlet implementation class userRegistrationController
 */
@WebServlet("/userRegistrationController")
public class userRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("search_country_state_city_for_user"))
		{
			System.out.println(flag);
			userRegistrationDAO admin_DAO=new userRegistrationDAO();
			List<countryVO> all_country=admin_DAO.search_all_country();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_country_for_city", all_country);
		
			List<stateVO> all_state=admin_DAO.search_all_state();
			session.setAttribute("search_state_for_city", all_state);
			
			
			List<cityVO> all_city=admin_DAO.search_all_city();
			session.setAttribute("search_city_for_city", all_city);
			
			response.sendRedirect("Admin/userRegistration.jsp");
			
		}
		
		else if(flag.equals("search_country_state_city_for_multiplex"))
		{
			System.out.println(flag);
			userRegistrationDAO admin_DAO=new userRegistrationDAO();
			List<countryVO> all_country=admin_DAO.search_all_country();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_country_for_city", all_country);
		
			List<stateVO> all_state=admin_DAO.search_all_state();
			session.setAttribute("search_state_for_city", all_state);
			
			
			List<cityVO> all_city=admin_DAO.search_all_city();
			session.setAttribute("search_city_for_city", all_city);
			
			response.sendRedirect("Multiplex-Admin/addTheatre.jsp");
			
		}
		
		else if(flag.equals("search_user"))
		{
			System.out.println(flag);
			userRegistrationDAO admin_DAO=new userRegistrationDAO();
			List<userRegistrationVO> list_of_all_user=admin_DAO.search_all_user();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_user", list_of_all_user);
			
			response.sendRedirect("Admin/editDeleteUser.jsp");
			
		}
		else if(flag.equals("delete_user"))
		{
			System.out.println(flag);
			int user_id=Integer.parseInt(request.getParameter("user_id"));
			userRegistrationVO add_city_VO=new userRegistrationVO();
			add_city_VO.setUser_id(user_id);
			
			userRegistrationDAO admin_DAO=new userRegistrationDAO();
			admin_DAO.delete_user(add_city_VO);
			
			response.sendRedirect("Admin/admin.jsp");
		}
		
		else if(flag.equals("edit_user"))
		{
			System.out.println(flag);
			int user_id=Integer.parseInt(request.getParameter("user_id"));
			
			userRegistrationVO add_user_VO=new userRegistrationVO();
			add_user_VO.setUser_id(user_id);
			
			userRegistrationDAO admin_DAO=new userRegistrationDAO();
			List<userRegistrationVO> list_of_user=admin_DAO.edit_user(add_user_VO);
			List<countryVO> all_country=admin_DAO.search_all_country();
			List<stateVO> all_state=admin_DAO.search_all_state();
			List<cityVO> all_city=admin_DAO.search_all_city();
			
			HttpSession session=request.getSession();
			session.setAttribute("edit_user", list_of_user);
			session.setAttribute("search_country_for_user", all_country);
			session.setAttribute("search_state_for_user", all_state);
			session.setAttribute("search_city_for_user", all_city);
			response.sendRedirect("Admin/updateUserRegistration.jsp");
		}
	
		else if(flag.equals("loadstate")){
		
				System.out.println(flag);
				HttpSession session =request.getSession();
				int c=Integer.parseInt(request.getParameter("countryId"));
				
				System.out.println("cid : "+c);	
				
				stateVO svo=new stateVO();
				userRegistrationDAO sdao=new userRegistrationDAO();
				
				countryVO cvo=new countryVO();
				cvo.setCountry_id(c);
				svo.setCountry_id(cvo);
				
				List ls=sdao.search_all_state1(cvo);
				System.out.println("state : list size : "+ls.size());
				session.setAttribute("loadstate",ls);
				response.sendRedirect("Admin/cityJson.jsp");
			}
		else if(flag.equals("loadcity")){
			
			System.out.println(flag);
			HttpSession session =request.getSession();
			int c=Integer.parseInt(request.getParameter("stateId"));
			
			System.out.println("sid : "+c);	
			
			userRegistrationVO svo=new userRegistrationVO();
			userRegistrationDAO sdao=new userRegistrationDAO();
			
			stateVO cvo=new stateVO();
			cvo.setState_id(c);
			svo.setState_id(cvo);
			
			List ls=sdao.search_all_city1(cvo);
			System.out.println("city : list size : "+ls.size());
			session.setAttribute("loadcity",ls);
			response.sendRedirect("Admin/userJson.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String flag=request.getParameter("flag");
		if(flag.equals("add_user"))
		{
			System.out.print(flag);
			String first_name=request.getParameter("firstname");
			String last_name=request.getParameter("lastname");
			String email_id=request.getParameter("emailid");
			Long mobile_number=Long.parseLong(request.getParameter("mobilenumber"));
			String gender=request.getParameter("radio");
			String password=request.getParameter("password");
			int country_id=Integer.parseInt(request.getParameter("country"));
			int state_id=Integer.parseInt(request.getParameter("state"));
			int city_id=Integer.parseInt(request.getParameter("city"));
			
			System.out.print(first_name);
			System.out.print(last_name);
			System.out.print(email_id);
			System.out.print(mobile_number);
			System.out.print(gender);
			System.out.print(password);
			System.out.print("Country Id"+country_id);
			System.out.print("State Id"+state_id);
			System.out.print("City Id"+city_id);
			
			userRegistrationVO add_user_VO=new userRegistrationVO();
			add_user_VO.setFirst_name(first_name);
			add_user_VO.setLast_name(last_name);
			add_user_VO.setEmail_id(email_id);
			add_user_VO.setMobile_number(mobile_number);
			add_user_VO.setGender(gender);
			add_user_VO.setPassword(password);
			
			
			countryVO add_country_VO=new countryVO();
			add_country_VO.setCountry_id(country_id);
			add_user_VO.setCountry_id(add_country_VO);
			
			stateVO add_state_VO=new stateVO();
			add_state_VO.setState_id(state_id);
			add_user_VO.setState_id(add_state_VO);
			
			cityVO add_city_VO=new cityVO();
			add_city_VO.setCity_id(city_id);
			add_user_VO.setCity_id(add_city_VO);
			
			userRegistrationDAO admin_DAO=new userRegistrationDAO();
			List list=admin_DAO.search_username(add_user_VO);
			if(list != null && list.size()>=1) {
				
				response.sendRedirect("Admin/error_1.jsp");
			}
			else{
			
			loginVO loginvo=new loginVO();
			loginvo.setUsername(email_id);
			loginvo.setPassword(password);
			loginvo.setUsertype("user");
			
			loginDAO logindao=new loginDAO();
			int login_id = logindao.add_login(loginvo);
			
			userRegistrationDAO admin_DAO2=new userRegistrationDAO();
			int user_id = admin_DAO2.add_user(add_user_VO);
			
			walletVO walletvo = new walletVO();
			walletDAO walletdao = new walletDAO();
			
			walletvo.setLogin_id(login_id);
			walletvo.setBalance(0);
			walletvo.setUser_id(user_id);
			walletdao.add_wallet(walletvo);
			
			
			response.sendRedirect("Admin/userRegistration.jsp");
		
			
			
		}
		}

	
	
	
	
	
	
	
	
	else if(flag.equals("update_user"))
	{
		System.out.print(flag);
		int user_id=Integer.parseInt(request.getParameter("CityId"));
		String first_name=request.getParameter("firstname");
		String last_name=request.getParameter("lastname");
		String email_id=request.getParameter("emailid");
		Long mobile_number=Long.parseLong(request.getParameter("mobilenumber"));
		int country_id=Integer.parseInt(request.getParameter("CountryId"));
		int state_id=Integer.parseInt(request.getParameter("StateId"));
		int city_id=Integer.parseInt(request.getParameter("CityId"));
		//System.out.print(city_name);
		//System.out.print(city_description);
		//System.out.print(country_id);
		//System.out.print("sid"+state_id);
		
		userRegistrationVO add_user_VO=new userRegistrationVO();
		add_user_VO.setUser_id(user_id);
		add_user_VO.setFirst_name(first_name);
		add_user_VO.setLast_name(last_name);
		add_user_VO.setEmail_id(email_id);
		add_user_VO.setMobile_number(mobile_number);
		
		
		
		countryVO add_country_VO=new countryVO();
		add_country_VO.setCountry_id(country_id);
		add_user_VO.setCountry_id(add_country_VO);
		
		stateVO add_state_VO=new stateVO();
		add_state_VO.setState_id(state_id);
		add_user_VO.setState_id(add_state_VO);
		
		cityVO add_city1_VO=new cityVO();
		add_city1_VO.setCity_id(city_id);
		add_user_VO.setCity_id(add_city1_VO);
		
		
		userRegistrationDAO admin_DAO2=new userRegistrationDAO();
		admin_DAO2.update_user(add_user_VO);
		
		response.sendRedirect("Admin/admin.jsp");
	
		
		
	}


}


}
