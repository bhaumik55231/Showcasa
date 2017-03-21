package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.cityDAO;
import DAO.stateDAO;
import DAO.multiplexRegistrationDAO;
import VO.cityVO;
import VO.countryVO;
import VO.stateVO;
import VO.multiplexRegistrationVO;

/**
 * Servlet implementation class multiplexRegistrationController
 */
@WebServlet("/multiplexRegistrationController")
public class multiplexRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public multiplexRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			String flag=request.getParameter("flag");
			HttpSession session=request.getSession();
			System.out.println(flag);
			if(flag.equals("load_multiplex"))
			{
				List<multiplexRegistrationVO> list =new ArrayList<multiplexRegistrationVO>();
				multiplexRegistrationDAO dao = new multiplexRegistrationDAO();
				list = dao.get_movie_list();
				String multiplex_list="";
				for(int i=0;i<list.size();i++)
				{
					multiplex_list=multiplex_list+"<option value='"+ list.get(i).getMultiplex_id() +"' >"+list.get(i).getMultiplex_name() +"</option>";
				}
				session.setAttribute("multiplex_list",multiplex_list);
				response.sendRedirect("Admin/addMultiplexAdmin.jsp");
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String flag=request.getParameter("flag");
		if(flag.equals("add_multiplex"))
		{
			System.out.print(flag);
			String multiplex_name=request.getParameter("multiplexName");
			String multiplex_owner_name=request.getParameter("multiplexOwnerName");
			String email_id=request.getParameter("emailid");
			int screen=Integer.parseInt(request.getParameter("screen"));
			Long mobile_number=Long.parseLong(request.getParameter("multiplexContactNumber"));
			String url=request.getParameter("url");
			String password=request.getParameter("password");
			String head_office_address=request.getParameter("headOffice");
			String contact_name=request.getParameter("multiplexContactName");
		
			
			
			
			
			
			
			
			
			
			
			multiplexRegistrationVO add_multiplex_VO=new multiplexRegistrationVO();
			add_multiplex_VO.setMultiplex_name(multiplex_name);
			add_multiplex_VO.setOwner_name(multiplex_owner_name);
			add_multiplex_VO.setEmail(email_id);
			add_multiplex_VO.setContact_number(mobile_number);
			add_multiplex_VO.setContact_name(contact_name);
			add_multiplex_VO.setPassword(password);
			add_multiplex_VO.setUrl(url);
			add_multiplex_VO.setHead_office_address(head_office_address);
			add_multiplex_VO.setScreen(screen);
			
	
			multiplexRegistrationDAO admin_DAO2=new multiplexRegistrationDAO();
			admin_DAO2.add_multiplex(add_multiplex_VO);
			
			response.sendRedirect("Multiplex-Admin/multiplexRegistration.jsp");
		
			
			
		}
		

	
	
	
	
	
	
	
	
	
}
}


