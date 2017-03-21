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

import DAO.screenDAO;
import VO.screenVO;

/**
 * Servlet implementation class showController
 */
@WebServlet("/showController")
public class showController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		String flag = request.getParameter("flag");
		System.out.println("From showController:"+flag);
		if(flag.equals("add_show"))
		{
			int screen_id = Integer.parseInt(request.getParameter("screen_id"));
			System.out.println(screen_id);
			response.sendRedirect("Multiplex-Admin/addShowForm.jsp");
		}
		else if(flag.equals("get_show"))
		{
			int multiplex_id = (int)session.getAttribute("multiplex_id");
			int theatre_id = (int) session.getAttribute("select_theatre_id");
			int screen_id = Integer.parseInt(request.getParameter("screen_id"));
			String task="";
			if(request.getParameter("task")!=null)
			{
				task = request.getParameter("task");
			}
			session.setAttribute("select_screen_id", screen_id);
			System.out.println("MUL"+multiplex_id);
			System.out.println("THE"+theatre_id);
			System.out.println("SCREEN"+screen_id);
			
			screenVO screenvo = new screenVO();
			screenDAO screenDAO = new screenDAO();
			screenvo.setMultiplex_id(multiplex_id);
			screenvo.setTheatre_id(theatre_id);
			screenvo.setScreen_id(screen_id);
			List<screenVO> list_screenvo = new ArrayList<screenVO>();
			list_screenvo = screenDAO.get_all_shows(screenvo);
			
			session.setAttribute("list",list_screenvo);
			if(task.isEmpty())
			{
				response.sendRedirect("Multiplex-Admin/current_shows.jsp");
			}
			else
			{	
				response.sendRedirect("Multiplex-Admin/current_shows.jsp?flag="+task+"");
			}
		}
		else if(flag.equals("suspend"))
		{
			
			int show_id = Integer.parseInt(request.getParameter("screen_id"));
			int result;
			int screen_id = (int)session.getAttribute("select_screen_id");
			System.out.println("Show_id"+show_id);
			screenVO screenvo = new screenVO();
			screenDAO screenDAO = new screenDAO();
			screenvo.setShow_id(show_id);
			result = screenDAO.suspend_show(screenvo);
			if(result == 1)
			{
				response.sendRedirect("/Showcasa_user/showController?flag=get_show&task=success&screen_id="+screen_id+"");
			}
			else
			{
				response.sendRedirect("/Showcasa_user/showController?flag=get_show&task=fail&screen_id="+screen_id+"");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession();
		String flag = request.getParameter("flag");
		System.out.println("From showController:"+flag);
		if(flag.equals("add_show"))
		{
			int screen_id = Integer.parseInt(request.getParameter("screen_id"));
			System.out.println(screen_id);
			response.sendRedirect("Multiplex-Admin/addShowForm.jsp");
		}
		
	}

}
