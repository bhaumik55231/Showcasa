package Controller;

import java.io.IOException;  
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.adminDAO;

import VO.countryVO;

/**
 * Servlet implementation class countryController
 */
@WebServlet("/countryController")
public class countryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public countryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		System.out.println(flag);
		 
		if(flag.equals("search_country"))
		{
			System.out.println(flag);
			adminDAO admin_DAO=new adminDAO();
			List<countryVO> ls=admin_DAO.search_all_country();
			
			
			HttpSession session=request.getSession();
			session.setAttribute("search_country", ls);
				
			response.sendRedirect("Admin/editDeleteCountry.jsp");

		}
		
		else if(flag.equals("delete_country"))
		{
			int country_id=Integer.parseInt(request.getParameter("country_id"));
			countryVO add_country_VO=new countryVO();
			add_country_VO.setCountry_id(country_id);
			
			adminDAO admin_DAO=new adminDAO();
			admin_DAO.delete_country(add_country_VO);
			
			response.sendRedirect("Admin/admin.jsp");
		}
		
		else if(flag.equals("edit_country"))
		{
			System.out.println(flag);
			
			int country_id=Integer.parseInt(request.getParameter("country_id"));
			countryVO add_country_VO=new countryVO();
			add_country_VO.setCountry_id(country_id);
			
			adminDAO admin_DAO=new adminDAO();
			List<countryVO> list_of_country=admin_DAO.edit_country(add_country_VO);
			
			HttpSession session=request.getSession();
			session.setAttribute("edit_country", list_of_country);
				
			response.sendRedirect("Admin/updateCountry.jsp");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String flag=request.getParameter("flag");
		
		if(flag.equals("add_country"))
		{
			System.out.println(flag);
			String country_name= request.getParameter("CountryName");
			String country_description=request.getParameter("CountryDescription");
			
			countryVO add_country_vo=new countryVO();
			add_country_vo.setCountry_name(country_name);
			add_country_vo.setCountry_description(country_description);
			

			adminDAO dao1 = new adminDAO();
			List list =  dao1.authentication(add_country_vo);
			if(list != null && list.size()>=1){
				
				
				response.sendRedirect("Admin/error_1.jsp");
				
				
				
			}
			else{
			adminDAO dao=new adminDAO();
			dao.add_country(add_country_vo);
			
			/*response.sendRedirect("Admin/addCountry.jsp");*/
			}
		}
	
		else if(flag.equals("update_country"))
		{
			System.out.println(flag);
			int country_id=Integer.parseInt(request.getParameter("CountryId"));
			String country_name= request.getParameter("CountryName");
			String country_description=request.getParameter("CountryDescription");
			
			countryVO add_country_VO=new countryVO();
			add_country_VO.setCountry_id(country_id);
			add_country_VO.setCountry_name(country_name);
			add_country_VO.setCountry_description(country_description);
			
			adminDAO admin_DAO=new adminDAO();
			admin_DAO.update_country(add_country_VO);
			
			response.sendRedirect("Admin/admin.jsp");
			
		}
	
	
	
	
	}

}
