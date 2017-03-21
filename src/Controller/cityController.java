package Controller;

import java.io.IOException; 
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.cityVO;
import VO.countryVO;
import VO.stateVO;

import DAO.cityDAO;
import DAO.stateDAO;

/**
 * Servlet implementation class cityController
 */
@WebServlet("/cityController")
public class cityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String flag=request.getParameter("flag");
		if(flag.equals("search_country_state_for_city"))
		{
			System.out.println(flag);
			cityDAO admin_DAO=new cityDAO();
			List<countryVO> all_country=admin_DAO.search_all_country();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_country_for_city", all_country);
		
			List<stateVO> all_state=admin_DAO.search_all_state();
			session.setAttribute("search_state_for_city", all_state);
			
			response.sendRedirect("Admin/addCity.jsp");
			
		}
		
		else if(flag.equals("search_city"))
		{
			cityDAO admin_DAO=new cityDAO();
			List<cityVO> list_of_all_city=admin_DAO.search_all_city();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_city", list_of_all_city);
			
			response.sendRedirect("Admin/editDeleteCity.jsp");
			
		}
		else if(flag.equals("search_city_addtheatre"))
		{
			System.out.println("AAA");
			cityDAO admin_DAO=new cityDAO();
			List<cityVO> list_of_all_city=admin_DAO.search_all_city();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_city", list_of_all_city);
			
			response.sendRedirect("Multiplex-Admin/addTheatre.jsp");
			
		}
		else if(flag.equals("delete_city"))
		{
			int city_id=Integer.parseInt(request.getParameter("city_id"));
			cityVO add_city_VO=new cityVO();
			add_city_VO.setCity_id(city_id);
			
			cityDAO admin_DAO=new cityDAO();
			admin_DAO.delete_city(add_city_VO);
			
			response.sendRedirect("Admin/admin.jsp");
		}
		
		else if(flag.equals("edit_city"))
		{
			System.out.println(flag);
			int city_id=Integer.parseInt(request.getParameter("city_id"));
			
			cityVO add_city_VO=new cityVO();
			add_city_VO.setCity_id(city_id);
			
			cityDAO admin_DAO=new cityDAO();
			List<cityVO> list_of_city=admin_DAO.edit_city(add_city_VO);
			List<countryVO> all_country=admin_DAO.search_all_country();
			List<stateVO> all_state=admin_DAO.search_all_state();
			
			
			HttpSession session=request.getSession();
			session.setAttribute("edit_city", list_of_city);
			session.setAttribute("search_country_for_city", all_country);
			session.setAttribute("search_state_for_city", all_state);
			
			response.sendRedirect("Admin/updateCity.jsp");
		}
	else if(flag.equals("loadstate")){
		System.out.println(flag);
				
				HttpSession session =request.getSession();
				int c=Integer.parseInt(request.getParameter("countryId"));
				
				System.out.println("cid : "+c);	
				
				stateVO svo=new stateVO();
				stateDAO sdao=new stateDAO();
				
				countryVO cvo=new countryVO();
				cvo.setCountry_id(c);
				svo.setCountry_id(cvo);
				
				List ls=sdao.search_all_state1(cvo);
				System.out.println("state : list size : "+ls.size());
				session.setAttribute("loadstate",ls);
				response.sendRedirect("Admin/cityJson.jsp");
			}
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
String flag=request.getParameter("flag");
		
if(flag.equals("add_city"))
{
	System.out.print(flag);
	String city_name=request.getParameter("city");
	String city_description=request.getParameter("city1");
	int country_id=Integer.parseInt(request.getParameter("country"));
	int state_id=Integer.parseInt(request.getParameter("state"));
	
	System.out.print(city_name);
	System.out.print(city_description);
	System.out.print(country_id);
	System.out.print("sid"+state_id);
	cityVO add_city_VO=new cityVO();
	add_city_VO.setCity_name(city_name);
	add_city_VO.setCity_description(city_description);
	
	countryVO add_country_VO=new countryVO();
	add_country_VO.setCountry_id(country_id);
	add_city_VO.setCountry_id(add_country_VO);
	
	stateVO add_state_VO=new stateVO();
	add_state_VO.setState_id(state_id);
	add_city_VO.setState_id(add_state_VO);
	
	cityDAO dao1 = new cityDAO();
	List list =  dao1.authentication(add_city_VO);
	if(list != null && list.size()>=1){
		
		
		response.sendRedirect("Admin/error_1.jsp");
		
		
		
	}
	
	
	else{
	
	cityDAO admin_DAO2=new cityDAO();
	admin_DAO2.add_city(add_city_VO);
	
	response.sendRedirect("Admin/addCity.jsp");

	}
	
}

		
		else if(flag.equals("update_city"))
		{
			System.out.print(flag);
			int city_id=Integer.parseInt(request.getParameter("CityId"));
			String city_name=request.getParameter("CityName");
			String city_description=request.getParameter("CityDescription");
			int country_id=Integer.parseInt(request.getParameter("CountryId"));
			int state_id=Integer.parseInt(request.getParameter("StateId"));
			
			//System.out.print(city_name);
			//System.out.print(city_description);
			//System.out.print(country_id);
			//System.out.print("sid"+state_id);
			cityVO add_city_VO=new cityVO();
			add_city_VO.setCity_id(city_id);
			add_city_VO.setCity_name(city_name);
			add_city_VO.setCity_description(city_description);
			
			countryVO add_country_VO=new countryVO();
			add_country_VO.setCountry_id(country_id);
			add_city_VO.setCountry_id(add_country_VO);
			
			stateVO add_state_VO=new stateVO();
			add_state_VO.setState_id(state_id);
			add_city_VO.setState_id(add_state_VO);
			
			cityDAO admin_DAO2=new cityDAO();
			admin_DAO2.update_city(add_city_VO);
			
			response.sendRedirect("Admin/admin.jsp");
		
			
			
		}
	
	
	}

}
