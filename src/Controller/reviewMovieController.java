package Controller;

import java.io.IOException;
import java.util.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.adminDAO;
import DAO.reviewMovieDAO;
import VO.countryVO;
import VO.reviewMovieVO;

/**
 * Servlet implementation class reviewMovieController
 */
@WebServlet("/reviewMovieController")
public class reviewMovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reviewMovieController() {
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
		 
		if(flag.equals("search_review"))
		{
			System.out.println(flag);
			adminDAO admin_DAO=new adminDAO();
			List<reviewMovieVO> ls=admin_DAO.search_all_review();
			
			
			HttpSession session=request.getSession();
			session.setAttribute("search_review", ls);
				
			response.sendRedirect("Admin/showReviews.jsp");

		}
		
		else if(flag.equals("delete_review"))
		{
			int review_id=Integer.parseInt(request.getParameter("review_id"));
			reviewMovieVO del_review_VO=new reviewMovieVO();
			del_review_VO.setReview_id(review_id);
			
			adminDAO admin_DAO=new adminDAO();
			admin_DAO.delete_review(del_review_VO);
			
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
		else if(flag.equals("edit_review"))
		{
			System.out.println(flag);
			
			int review_id=Integer.parseInt(request.getParameter("review_id"));
			reviewMovieVO add_country_VO=new reviewMovieVO();
			add_country_VO.setReview_id(review_id);
			
			adminDAO admin_DAO=new adminDAO();
			List<reviewMovieVO> list_of_review=admin_DAO.edit_review(add_country_VO);
			
			HttpSession session=request.getSession();
			session.setAttribute("edit_review", list_of_review);
				
			response.sendRedirect("Admin/updateReview.jsp");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		Date date = new Date();
		Timestamp ts = new Timestamp(date.getTime());
		System.out.println(flag);
		HttpSession session=request.getSession();
		if(flag.equals("add_review"))
		{
		int movie_id = (int) session.getAttribute("single_movie_id");
		String review_description=request.getParameter("review_movie");
		reviewMovieVO review_Movie_vo=new reviewMovieVO();
		int login_id = (int) session.getAttribute("userid");
		review_Movie_vo.setMovie_id(movie_id);
		review_Movie_vo.setFirst_name((String) session.getAttribute("firstname"));
		review_Movie_vo.setLast_name((String) session.getAttribute("lastname"));
		review_Movie_vo.setUser_id(login_id);
		review_Movie_vo.setReview_description(review_description);
		review_Movie_vo.setTimestamp(ts);
		
		
		reviewMovieDAO dao=new reviewMovieDAO();
		dao.add_review(review_Movie_vo);
		
		response.sendRedirect("addMovieController?flag=load2&movie_id="+movie_id+"&enc=555");
		}
		
		}
	}

