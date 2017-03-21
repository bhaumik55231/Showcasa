package Controller;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.restfb.json.JsonArray;

import DAO.ratingDAO;
import DAO.revenueDAO;
import VO.addMovieVO;
import VO.movieRatingVO;
import VO.revenueVO;

/**
 * Servlet implementation class revenueController
 */
@WebServlet("/revenueController")
public class revenueController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public revenueController() 
    {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session =request.getSession();
		String flag=request.getParameter("flag");
		System.out.println("Revenue Controller:"+flag);
		if(flag.equals("dashboard"))
		{
		int multiplex_id = (int) session.getAttribute("multiplex_id");
		System.out.println("Revenue Controller Mul_id"+session.getAttribute("multiplex_id"));
		
		revenueVO revenuevo = new revenueVO();
		revenueDAO revenuedao = new revenueDAO();
		revenuevo.setMultiplex_id(multiplex_id);
		
		int total_revenue_multiplex = revenuedao.get_total_revenue_multiplex(revenuevo);
		List<Integer> list_total_revenue_tickets_week = new ArrayList<Integer>();
		list_total_revenue_tickets_week = revenuedao.get_total_tickets_multiplex(revenuevo);
		
		int revenue_week = list_total_revenue_tickets_week.get(0);
		int tickets_week = list_total_revenue_tickets_week.get(1);
		int show_week = list_total_revenue_tickets_week.get(2);
		int movie_week = list_total_revenue_tickets_week.get(3);
		session.setAttribute("revenue_week", revenue_week);
		session.setAttribute("tickets_week", tickets_week);
		session.setAttribute("show_week", show_week);
		session.setAttribute("movie_week", movie_week);
		System.out.println(session.getAttribute("show_week"));
		response.sendRedirect("Multiplex-Admin/dashboard.jsp");
		}
		else if(flag.equals("ajax"))
		{
			double value = Double.parseDouble((request.getParameter("value")));
			double rating = 0.0;
			Date date = new Date();
			Timestamp ts = new Timestamp(date.getTime());
			int movie_id = Integer.parseInt(request.getParameter("movie_id"));
			int login_id = (int)session.getAttribute("user_id");
			System.out.println("AJAX flag caught for movie_id: "+movie_id+"with value: " + value+"by login_id: "+login_id);
			response.setHeader("Cache-Control", "no-cache");
	        response.setHeader("Pragma", "no-cache");
	        PrintWriter out = response.getWriter();
	        
	        addMovieVO movievo = new addMovieVO();
	        addMovieVO movievo_after_rating = new addMovieVO();
	        ratingDAO ratingdao = new ratingDAO();
	        movievo.setMovie_id(movie_id);
	        List<addMovieVO> list_addmovievo = new ArrayList<addMovieVO>();
	        list_addmovievo = ratingdao.get_rating(movievo);
	        int number_user_rating = list_addmovievo.get(0).getNumber_user_rating();
	        rating = (( list_addmovievo.get(0).getRating() ) *number_user_rating + value ) / (number_user_rating+1);
	        rating = Math.round (rating * 10.0) / 10.0;
	        number_user_rating ++;
	        movievo_after_rating.setRating(rating);
	        movievo_after_rating.setNumber_user_rating(number_user_rating);
	        movievo_after_rating.setMovie_id(movie_id);
	        ratingdao.add_rating_movievo(movievo_after_rating);
	        
	        movieRatingVO movieratingvo = new movieRatingVO();
	        movieratingvo.setLogin_id(login_id);
	        movieratingvo.setMovie_id(movie_id);
	        movieratingvo.setRating_value(value);
	        movieratingvo.setTimestamp(ts);
	        ratingdao.add_rating_movieratingvo(movieratingvo);
	        //session.setAttribute("user_rating", movie_id);
	        //System.out.println(session.getAttribute("user_rating"));
	        out.print(rating);
		}
		else if(flag.equals("ALWAYS"))
		{
			System.out.println("At "+new Date()+"Got "+ flag);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session =request.getSession();
		String flag=request.getParameter("flag");
		System.out.println("Revenue Controller:"+flag);
	}

}
