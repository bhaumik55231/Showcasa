package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addTheatreDAO;
import VO.addtheatreVO;

/**
 * Servlet implementation class movieController
 */
@WebServlet("/movieController")
public class movieController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public movieController() 
    {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag=request.getParameter("flag");
		int theatre_id = Integer.parseInt(request.getParameter("theatre_id"));
		String admin_name=(String)session.getAttribute("session_name");
		if(flag.equals("add_movie"))
		{
			System.out.println("Flag="+flag);
			addtheatreVO vo=new addtheatreVO();
			vo.setTheatre_id(theatre_id);
			
			addTheatreDAO dao = new addTheatreDAO();
			List<addtheatreVO> screen = dao.get_screen(vo);
			session.setAttribute("screen", screen);
			System.out.println("Loop it:"+screen);
			response.sendRedirect("Multiplex-Admin/selectScreen.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
