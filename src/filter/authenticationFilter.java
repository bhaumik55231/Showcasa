package filter;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.addMovieDAO;
import DAO.itemDAO;
import DAO.loginDAO;
import DAO.multiplexAdminDAO;
import DAO.screenDAO;
import VO.addMovieVO;
import VO.itemAgent;
import VO.itemBookingVO;
import VO.loginVO;
import VO.multiplexAdminVO;
import VO.multiplexRegistrationVO;
import VO.screenVO;

@WebFilter("/*")
public class authenticationFilter implements Filter {

	public authenticationFilter() {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpSession session =(((HttpServletRequest) request).getSession());
		RequestDispatcher requestDispatcher;
		String flag = request.getParameter("flag");

		String uri = ((HttpServletRequest)request).getRequestURI();
		Calendar today = Calendar.getInstance();
		today.add(Calendar.DATE, 0);
		//System.out.println(today);
		session.setAttribute("today_c", today);
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		String reportDate = df.format(today.getTime());
		if(session.getAttribute("today_date")==null)
		{
			session.setAttribute("today_date", reportDate);
			set_session_attributes(session,today); //and delete shows
			System.out.println("today_date"+session.getAttribute("today_date"));
		}
		else
		{
			if(session.getAttribute("today_date").equals(reportDate))
			{
				//System.out.println("TRUE");
			}
			else
			{
				System.out.println("FALSE");
				session.setAttribute("today_date", reportDate);
				System.out.println(session.getAttribute("today_date"));
				set_session_attributes(session,today); //and delete shows
				System.out.println("today_date"+session.getAttribute("today_date"));
				
			}
		}
			
		
		if(uri.contains("User/index.jsp") && session.getAttribute("edit_movie2")==null)
		{
			addMovieVO add_movie_VO=new addMovieVO();		
			addMovieDAO DAO=new addMovieDAO();
			List<addMovieVO> list_of_movie=DAO.edit_movie3(add_movie_VO);
			
			session.setAttribute("edit_movie2", list_of_movie);
			System.out.println("user_id from inside"+session.getAttribute("user_id"));
			
			
		}
		
//1
		if(uri.contains("register") || uri.contains("/css") || uri.contains("/js") && !uri.contains(".jsp") || uri.contains("/img")|| uri.contains("/fonts") ||uri.contains("/reg.jsp") ||uri.contains("/Ratings.jsp")||uri.contains("/workhouse.jsp") ||uri.contains("/land.jsp")||uri.contains("/error404.jsp") ||uri.contains("/payu.jsp")||uri.contains("/success.jsp")||uri.contains("/fail.jsp") || uri.contains("ticketController")|| uri.contains("itemController1")|| uri.contains("commentController")|| uri.contains("showController") || uri.contains("userRegistrationController")|| uri.contains("revenueController")|| uri.contains("reviewMovieController") || uri.contains("stateController") || uri.contains("cityController") || uri.contains("multiplexAdminController")|| uri.contains("/addTheatreController")|| uri.contains("/itemController") || uri.contains("countryController")|| uri.contains("movieController")|| uri.contains("movieController") || uri.contains("addMovieController") || uri.contains("multiplexRegistrationController")  || uri.contains("cityJson") || uri.contains("userJson") || uri.contains("index") || uri.contains("/doc") || uri.contains("User/header") || uri.contains("User/header1") || uri.contains("User/singleMovie") || uri.contains("User/movieList") || uri.contains("User/login") || uri.contains("userLoginController") || uri.contains("User/register") || uri.contains("User/errorPage1") || uri.contains("User/errorPage") || uri.contains("User/contactUs") || uri.contains("User/email") || uri.contains("User/newPassword") || uri.contains("User/bookingStep1") || uri.contains("User/bookingStep3")|| uri.contains("User/bookingFinal") || uri.contains("User/bookingStep2") || uri.contains("contactUsController") || uri.contains("updateUserProfileController") || uri.contains("emailController") || uri.contains("changePasswordController") || uri.contains("forgotPasswordController") || uri.contains("paymentController") || uri.contains("bookingHistoryController"))
		{
			//System.out.println("inside reg");

			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  

			chain.doFilter(request,response);

		}
//2
		else if (flag!= null && flag.equals("logout")) {
			//session.removeAttribute("userID");
			//System.out.println("logout in else if");
			System.out.println(flag);
			session.invalidate();
			requestDispatcher = request.getRequestDispatcher("/Admin/adminLogin.jsp"); //User/login.jsp
			requestDispatcher.forward(request, response);
		}
//3
		else if(flag != null && flag.equals("login") )
		{
			System.out.println(flag);

			String emailId = request.getParameter("emailId");
			String password = request.getParameter("password");
			System.out.println(emailId+""+password);

			loginVO LoginVO = new loginVO();
			LoginVO.setUsername(emailId);
			LoginVO.setPassword(password);

			loginDAO loginDAO = new loginDAO();
			List list =  loginDAO.authentication(LoginVO);

			if(list != null && list.size()>=1)
			{

				//Iterator itr = list.iterator();

				//while(itr.hasNext()){
				loginVO user=(loginVO) list.get(0);

				long y = user.getLogin_id();
				session.setAttribute("user_id", y);
				session.setAttribute("userID",y);
				String username = user.getUsername();
				
				System.out.println("Type"+session.getAttribute("userId"));
				String type = user.getUsertype();
				session.setAttribute("usertype",type);
				session.setAttribute("session_name",username);
				//System.out.println("Username:"+username);
				//System.out.println("LoginID:"+y);
				System.out.println("------type"+session.getAttribute("usertype"));
				System.out.println("user_id-Session Var"+session.getAttribute("user_id"));
				System.out.println("session_name-Session Var"+session.getAttribute("session_name"));
				if(type.equalsIgnoreCase("admin"))
				{
					requestDispatcher = request.getRequestDispatcher("/Admin/admin.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("multiplex"))
				{
					multiplexAdminVO vo = new multiplexAdminVO();
					vo.setUser_name(username);
					multiplexAdminDAO dao = new multiplexAdminDAO();
					List <multiplexAdminVO> list_multiplex_admin = new ArrayList<multiplexAdminVO>();
					list_multiplex_admin = dao.getMultiplex_id(vo);
					System.out.println("LIST OF MULTIPLEX ADMIN"+list_multiplex_admin.size());
					
					int multiplex_id = list_multiplex_admin.get(0).getMultiplex_id();
					session.setAttribute("multiplex_id",multiplex_id);
					System.out.println("calling servlet");
					requestDispatcher = request.getRequestDispatcher("/Multiplex-Admin/dashboard0.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("item"))
				{
					List<itemBookingVO> list_of_all_user = new ArrayList<itemBookingVO>();
					itemAgent ia = new itemAgent();
					itemDAO idao = new itemDAO();
					int login_id = user.getLogin_id();
					session.setAttribute("login", login_id);
					ia.setLogin_id(login_id);
					List<itemAgent> lia = new ArrayList<itemAgent>();
					lia = idao.getAgentByLogin_id(ia);
					int theatre_id = lia.get(0).getItem_agent_thatre();
					session.setAttribute("select_theatre_id", theatre_id);
					System.out.println(theatre_id);
					itemDAO idao2 = new itemDAO();
					itemBookingVO itemB2 = new itemBookingVO();
					itemB2.setTheatre_id(theatre_id);
					list_of_all_user = idao2.getBookedItem(itemB2);
					String put_code = "";
					for(int i=0;i<list_of_all_user.size();i++)
					{
						
						put_code=put_code+"<tr><td>"+list_of_all_user.get(i).getBooking_id()+"</td><td>"+list_of_all_user.get(i).getItem_name()+"</td><td>"+list_of_all_user.get(i).getItem_qty()+"</td><td>"+list_of_all_user.get(i).getPayment()+"</td><td>"+list_of_all_user.get(i).getTransaction_id()+"</td><td>"+list_of_all_user.get(i).getPickup()+"</td><td>"+list_of_all_user.get(i).getDate()+"</td><td>"+list_of_all_user.get(i).getTime()+"</td><td>"+list_of_all_user.get(i).getDelivery()+"</td><td><a class='btn btn-success' href='/Showcasa_user/itemController1?flag=item_delivery'>Proceed</a></td></tr>";	
					}
					session.setAttribute("put_code",put_code);
					requestDispatcher = request.getRequestDispatcher("/Admin/fooddashboard.jsp");  
					requestDispatcher.forward(request,response);
				}
				else if(type.equalsIgnoreCase("user"))
				{	
					requestDispatcher = request.getRequestDispatcher("/User/index.jsp");  
					requestDispatcher.forward(request,response);
				}
				else
				{
					requestDispatcher = request.getRequestDispatcher("/Admin/adminLogin.jsp");  //User/login.jsp
					requestDispatcher.forward(request,response);  
				}
			}
			else
			{
				requestDispatcher = request.getRequestDispatcher("/Admin/adminLogin.jsp"); //User/login.jsp
				requestDispatcher.forward(request,response);
			}	
		}
//4
		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("usertype");
			//System.out.println("type = = = " + h);

			if(h!=null && h.equals("admin") && uri.contains("/Admin")){

				//System.out.println("chain");
				chain.doFilter(request,response);
			}

			else if(h!=null && h.equals("multiplex") && uri.contains("/Multiplex-Admin"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else if(h!=null && h.equals("user") && uri.contains("/User"))
			{
				//System.out.println("chain");
				chain.doFilter(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/Admin/admin.jsp");  //User/error.jsp
				rd.forward(request,response);
			}
		}
//5
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("/Admin/adminLogin.jsp");  //User/login.jsp
			rd.forward(request,response);  

		}
	}

	private void set_session_attributes(HttpSession session, Calendar today)
	{
		DateFormat df1 = new SimpleDateFormat("dd");
		DateFormat df2 = new SimpleDateFormat("MM");
		DateFormat df3 = new SimpleDateFormat("yyyy");
		int set_date = Integer.parseInt(df1.format(today.getTime()));
		int set_month = Integer.parseInt(df2.format(today.getTime()));
		int set_year = Integer.parseInt(df3.format(today.getTime()));
		session.setAttribute("today_date_d", set_date);
		session.setAttribute("today_date_m", set_month);
		session.setAttribute("today_date_y", set_year);
		today.add(Calendar.DATE, -1);
		int set_date1 = Integer.parseInt(df1.format(today.getTime()));
		int set_month1 = Integer.parseInt(df2.format(today.getTime()));
		int set_year1 = Integer.parseInt(df3.format(today.getTime()));
		delete_shows(set_date1,set_month1,set_year1);
	}

	private void delete_shows(int set_date, int set_month, int set_year)
	{
		System.out.println("FUNC CALLED!");
		screenVO screenvo = new screenVO();
		screenDAO screendao = new screenDAO();
		screenvo.setStart_date(set_date);
		screenvo.setStart_month(set_month);
		screenvo.setStart_year(set_year);
		screenvo.setShow_status(1);
		screendao.delete_show(screenvo);
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}
}
