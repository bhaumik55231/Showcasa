package Controller;
  
import java.io.IOException;    
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import DAO.stateDAO;
import VO.countryVO;
import VO.stateVO;

/**
 * Servlet implementation class stateController
 */
@WebServlet("/stateController")
public class stateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("search_country_for_state"))
		{
			System.out.println(flag);
			stateDAO admin_DAO=new stateDAO();
			List<countryVO> ls=admin_DAO.search_all_country();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_country_for_state", ls);
		
			response.sendRedirect("Admin/addState.jsp");
			
		}
		else if(flag.equals("search_state"))
		{
			stateDAO admin_DAO=new stateDAO();
			List<stateVO> list_of_all_state=admin_DAO.search_all_state();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_state", list_of_all_state);
			
			response.sendRedirect("Admin/editDeleteState.jsp");
		}
		else if(flag.equals("delete_state"))
		{
			int state_id=Integer.parseInt(request.getParameter("state_id"));
			stateVO add_state_VO=new stateVO();
			add_state_VO.setState_id(state_id);
			
			stateDAO admin_DAO=new stateDAO();
			admin_DAO.delete_state(add_state_VO);
			
			response.sendRedirect("Admin/admin.jsp");
		}
		
		else if(flag.equals("edit_state"))
		{
			System.out.println(flag);
			
			int state_id=Integer.parseInt(request.getParameter("state_id"));
			
			stateVO add_state_VO=new stateVO();
			add_state_VO.setState_id(state_id);
			
			stateDAO admin_DAO=new stateDAO();
			List<stateVO> list_of_state=admin_DAO.edit_state(add_state_VO);
			List<countryVO> list_of_all_country=admin_DAO.search_all_country();
			
			HttpSession session=request.getSession();
			session.setAttribute("search_country_for_state", list_of_all_country);
			session.setAttribute("edit_state", list_of_state);
				
			response.sendRedirect("Admin/updateState.jsp");

		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String flag=request.getParameter("flag");
		if(flag.equals("add_state"))
		{
			String state_name=request.getParameter("StateName");
			String state_description=request.getParameter("StateDescription");
			int country_id=Integer.parseInt(request.getParameter("CountryId"));
			
			
			
			
			
			
			stateVO add_state_VO=new stateVO();
			add_state_VO.setState_name(state_name);
			add_state_VO.setState_description(state_description);
		
			countryVO add_country_VO=new countryVO();
			add_country_VO.setCountry_id(country_id);
			add_state_VO.setCountry_id(add_country_VO);
			
			
			stateDAO dao = new stateDAO();
			List list =  dao.authentication(add_state_VO);

			if(list != null && list.size()>=1){
				
				
				response.sendRedirect("Admin/error_1.jsp");
				
				
				
			}
			else
			{

			
			
			stateDAO admin_DAO2=new stateDAO();
			admin_DAO2.add_state(add_state_VO);
			
			response.sendRedirect("Admin/addState.jsp");
		
		}
		}

		else if(flag.equals("update_state"))
		{
			String state_name=request.getParameter("StateName");
			String state_description=request.getParameter("StateDescription");
			int country_id=Integer.parseInt(request.getParameter("CountryId"));
			int state_id=Integer.parseInt(request.getParameter("StateId"));
			
			
			//System.out.println( "name :" +state_name + "description :" +state_description +"country id:"+country_id   );
			
			stateVO add_state_VO=new stateVO();
			add_state_VO.setState_id(state_id);
			add_state_VO.setState_name(state_name);
			add_state_VO.setState_description(state_description);
		
		
			countryVO add_country_VO=new countryVO();
			add_country_VO.setCountry_id(country_id);
			add_state_VO.setCountry_id(add_country_VO);
			
			stateDAO admin_DAO2=new stateDAO();
			admin_DAO2.update_state(add_state_VO);
			
			response.sendRedirect("Admin/admin.jsp");
		
		}
	
	}

}
