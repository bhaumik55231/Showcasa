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

import DAO.addTheatreDAO;
import DAO.addTheatreDAO;
import DAO.addTheatreDAO;
import DAO.multiplexRegistrationDAO;
import VO.cityVO;
import VO.countryVO;
import VO.multiplexRegistrationVO;
import VO.stateVO;
import VO.addtheatreVO;
import VO.addtheatreVO;
import VO.addtheatreVO;
import VO.addMovieVO;
import DAO.addMovieDAO;
/**
 * Servlet implementation class addTheatreController
 */
@WebServlet("/addTheatreController")
public class addTheatreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addTheatreController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		 
		
		String flag=request.getParameter("flag");
		
		System.out.println("addTheatre"+flag);
		if(flag.equals("search_theatre"))
		{
			HttpSession session=request.getSession();
			System.out.println(flag);
			int multiplex_id= Integer.parseInt(request.getParameter("multiplex_id"));
			System.out.println("Multiplex ID:"+multiplex_id);
			String source="";
			if(request.getParameter("source")!=null)
			{
				source = request.getParameter("source");
			}
			System.out.println("SOURCE="+source);
			addtheatreVO obj=new addtheatreVO();
			obj.setMultiplex_id(multiplex_id);
			//System.out.println("CON ID"+obj.getTheatre_id());
			addTheatreDAO admin_DAO=new addTheatreDAO();
			List<addtheatreVO> list_of_all_user = new ArrayList<addtheatreVO>();
			list_of_all_user=admin_DAO.search_all_user(obj);
			
			System.out.println("LIST:"+list_of_all_user.get(0).getTheatre_name());
			session.setAttribute("search_user", list_of_all_user);
			String put_code="";
			/*<c:forEach items="${sessionScope.search_user }" var="i">
        	<tr>
        		<td>${i.theatre_id }</td>
        		<td>${i.theatre_name }</td>
        		<td>${i.screen }</td>
        		
        		<td>	
                
            	 <a class="btn btn-danger" href="<%=request.getContextPath()%>/addTheatreController?flag=get_screen&source=show&theatre_id=${i.theatre_id}">Proceed</a>

				</td>
        	</tr>	
        	</c:forEach>*/
			//put_code="<table id='datatable_demo' class='table table-striped table-bordered'><thead><tr><th>Screen Id</th><th>Title</th><th>Action</th></tr></thead><tfoot><tr><th>#</th><th>Title</th><th>Action</th></tr></tfoot><tbody>";
			
			
			//put_code=put_code+"</tbody></table>";
			
			if(source.equals("show") || source.equals("add_show"))
			{	
				for(int i=0;i<list_of_all_user.size();i++)
				{
					put_code=put_code+"<tr><td>"+list_of_all_user.get(i).getTheatre_id()+"</td><td>"+list_of_all_user.get(i).getTheatre_name()+"</td><td>"+list_of_all_user.get(i).getScreen()+"</td><td><a class='btn btn-success' href='/Showcasa_user/addTheatreController?flag=get_screen&source="+source+"&theatre_id="+list_of_all_user.get(i).getTheatre_id()+"'>Proceed</a></td></tr>";	
				}
				session.setAttribute("put_code",put_code);
				response.sendRedirect("Multiplex-Admin/select_theatre.jsp");
			} 
			else if(source.equals("itemForm"))
			{
				for(int i=0;i<list_of_all_user.size();i++)
				{
					put_code=put_code+"<tr><td>"+list_of_all_user.get(i).getTheatre_id()+"</td><td>"+list_of_all_user.get(i).getTheatre_name()+"</td><td>"+list_of_all_user.get(i).getScreen()+"</td><td><a class='btn btn-success' href='/Showcasa_user/addTheatreController?flag=get_add_item_form&source="+source+"&theatre_id="+list_of_all_user.get(i).getTheatre_id()+"&theatre_name="+list_of_all_user.get(i).getTheatre_name()+"'>Proceed</a></td></tr>";	
				}
				session.setAttribute("put_code",put_code);
				response.sendRedirect("Multiplex-Admin/select_theatre.jsp");
			}
			else if(source.equals("itemBooking"))
			{
				for(int i=0;i<list_of_all_user.size();i++)
				{
					put_code=put_code+"<tr><td>"+list_of_all_user.get(i).getTheatre_id()+"</td><td>"+list_of_all_user.get(i).getTheatre_name()+"</td><td>"+list_of_all_user.get(i).getScreen()+"</td><td><a class='btn btn-success' href='/Showcasa_user/addTheatreController?flag=get_item_booking&source="+source+"&theatre_id="+list_of_all_user.get(i).getTheatre_id()+"&theatre_name="+list_of_all_user.get(i).getTheatre_name()+"'>Proceed</a></td></tr>";	
				}
				session.setAttribute("put_code",put_code);
				response.sendRedirect("Multiplex-Admin/select_theatre.jsp");
			}
			else if(source.equals("itemAgent"))
			{
				for(int i=0;i<list_of_all_user.size();i++)
				{
					put_code=put_code+"<tr><td>"+list_of_all_user.get(i).getTheatre_id()+"</td><td>"+list_of_all_user.get(i).getTheatre_name()+"</td><td>"+list_of_all_user.get(i).getScreen()+"</td><td><a class='btn btn-success' href='/Showcasa_user/addTheatreController?flag=get_item_agent_form&source="+source+"&theatre_id="+list_of_all_user.get(i).getTheatre_id()+"&theatre_name="+list_of_all_user.get(i).getTheatre_name()+"'>Proceed</a></td></tr>";	
				}
				session.setAttribute("put_code",put_code);
				response.sendRedirect("Multiplex-Admin/select_theatre.jsp");
			}
			else
			{
				response.sendRedirect("Multiplex-Admin/searchTheatre.jsp");	
			}
		}
		else if(flag.equals("search_theatre_item"))
		{
			System.out.println(flag);
			String admin_name= request.getParameter("admin_name");
			System.out.println("ADMIN="+admin_name);
			
			addtheatreVO obj=new addtheatreVO();
			obj.setAdmin_name(admin_name);
			System.out.println("CON ID"+obj.getTheatre_id());
			addTheatreDAO admin_DAO=new addTheatreDAO();
			List<addtheatreVO> list_of_all_user=admin_DAO.search_all_user(obj);
			
			HttpSession session=request.getSession();
			session.setAttribute("search_user", list_of_all_user);
			
			response.sendRedirect("Multiplex-Admin/addItems.jsp");
			
		}
		else if(flag.equals("search_theatre_movie"))
		{
			System.out.println(flag);
			String admin_name= request.getParameter("admin_name");
			System.out.println("ADMIN="+admin_name);
			
			addtheatreVO obj=new addtheatreVO();
			obj.setAdmin_name(admin_name);
			System.out.println("CON ID"+obj.getTheatre_id());
			addTheatreDAO admin_DAO=new addTheatreDAO();
			List<addtheatreVO> list_of_all_user=admin_DAO.search_all_user(obj);
			
			HttpSession session=request.getSession();
			session.setAttribute("search_user", list_of_all_user);
			
			response.sendRedirect("Multiplex-Admin/addMovie.jsp");
			
		}
		else if(flag.equals("search_theatre_add_show"))
		{
			System.out.println(flag);
			int multiplex_id= Integer.parseInt(request.getParameter("multiplex_id"));
			System.out.println("Multiplex ID:"+multiplex_id);
			
			addtheatreVO obj=new addtheatreVO();
			obj.setMultiplex_id(multiplex_id);
			//System.out.println("CON ID"+obj.getTheatre_id());
			addTheatreDAO admin_DAO=new addTheatreDAO();
			List<addtheatreVO> list_of_all_user=admin_DAO.search_all_user(obj);
			
			HttpSession session=request.getSession();
			session.setAttribute("search_user", list_of_all_user);

			response.sendRedirect("Multiplex-Admin/selectTheatre.jsp");
			
		}
		else if (flag.equals("get_item_agent_form"))
		{
			HttpSession session=request.getSession();
			int theatre_id = Integer.parseInt(request.getParameter("theatre_id"));
			session.setAttribute("select_theatre_id",theatre_id);
			String theatre_name = request.getParameter("theatre_name");
			session.setAttribute("select_theatre_name", theatre_name);
			response.sendRedirect("Multiplex-Admin/addItemAgentForm.jsp");
		}
		else if(flag.equals("get_screen"))
		{
			int theatre_id = Integer.parseInt(request.getParameter("theatre_id"));
			HttpSession session=request.getSession();
			session.setAttribute("select_theatre_id",theatre_id);
			addtheatreVO vo = new addtheatreVO();
			vo.setTheatre_id(theatre_id);
			addTheatreDAO dao = new addTheatreDAO();
			String source="";
			if(request.getParameter("source")!=null)
			{
				source = request.getParameter("source");
			}
			System.out.println("SOURCE_screen="+source);
			
			List<addtheatreVO> list = new ArrayList<addtheatreVO>();
			int screen = 0;
			list = dao.get_screen(vo);
			session.setAttribute("list_of_screen10", list);
			session.setAttribute("select_theatre_name", list.get(0).getTheatre_name());
			screen=list.get(0).getScreen();
			session.setAttribute("screen_in_theatre",screen);
			System.out.println("SCREENS"+screen);
			String put_code="";
			String put_code2="";
			put_code="<table id='datatable_demo' class='table table-striped table-bordered'><thead><tr><th>Screen Id</th><th>Title</th><th>Action</th></tr></thead><tfoot><tr><th>#</th><th>Title</th><th>Action</th></tr></tfoot><tbody>";
			
			for(int i=1;i<=screen;i++)
			{
				put_code=put_code+"<tr><td>"+i+"<td>Screen#"+i+"<td><a class='btn btn-success' href='/Showcasa_user/addTheatreController?flag=get_form&screen_id="+i+"'>Proceed</a></td></tr>";
			}
			put_code=put_code+"</tbody></table>";
			
			put_code2="<table id='datatable_demo' class='table table-striped table-bordered'><thead><tr><th>Screen Id</th><th>Title</th><th>Action</th></tr></thead><tfoot><tr><th>#</th><th>Title</th><th>Action</th></tr></tfoot><tbody>";
			
			for(int i=1;i<=screen;i++)
			{
				put_code2=put_code2+"<tr><td>"+i+"<td>Screen#"+i+"<td><a class='btn btn-success' href='/Showcasa_user/showController?flag=get_show&screen_id="+i+"'>Proceed</a></td></tr>";
			}
			put_code2=put_code2+"</tbody></table>";
			/*
            	
            	<c:forEach items="${sessionScope.screen_in_theatre }" var="i">
            	<tr>
            		<td>${i}</td>
            		<td>Screen ${i}</td>
            		
            		<td>	
                    
                	 <a href="<%=request.getContextPath()%>/addTheatreController?flag=get_showForm&screen_id=${i}">Proceed</a>

					</td>
            	</tr>	
            	</c:forEach>
                                        
            </tbody>
        </table>*/
			
			session.setAttribute("put_code",put_code);
			//session.setAttribute("put_code2",put_code2);
			
			if(source.equals("show"))
			{
				session.setAttribute("put_code",put_code2);
				response.sendRedirect("Multiplex-Admin/select_screen.jsp");
			}
			else if(source.equals("add_show"))
			{
				session.setAttribute("put_code",put_code);
				response.sendRedirect("Multiplex-Admin/select_screen.jsp");
			}
			else
			{
				response.sendRedirect("Multiplex-Admin/selectScreen.jsp");
			}
		}
		
		else if(flag.equals("delete_user"))
		{
			System.out.println(flag);
			int user_id=Integer.parseInt(request.getParameter("user_id"));
			
			addtheatreVO add_city_VO=new addtheatreVO();
			add_city_VO.setTheatre_id(user_id);
			System.out.println("DEL"+add_city_VO.getTheatre_id());
			addTheatreDAO admin_DAO=new addTheatreDAO();
			admin_DAO.delete_user(add_city_VO);
			
			response.sendRedirect("Multiplex-Admin/dashboard.jsp");
		}
		else if(flag.equals("get_form"))
		{
			int screen_id = Integer.parseInt(request.getParameter("screen_id"));
			HttpSession session=request.getSession();
			session.setAttribute("select_screen_id",screen_id);
			
			List<addMovieVO> list = new ArrayList<addMovieVO>();
			addMovieVO vo = new addMovieVO();
			
			addMovieDAO dao = new addMovieDAO();
			list = dao.getMovieList(vo);
			String movie_list="";
			for(int i=0;i<list.size();i++)
			{
				movie_list=movie_list+"<option value='"+ list.get(i).getMovie_id() +"' >"+list.get(i).getMovie_name()+"</option>";
			}
			System.out.println(movie_list);
			session.setAttribute("movie_list", movie_list);
			response.sendRedirect("Multiplex-Admin/addShowForm.jsp");
		}
		else if(flag.equals("search_theatre_load_show"))
		{
			response.sendRedirect("Multiplex-Admin/currentShows.jsp");
		}
		else if(flag.equals("get_add_item_form"))
		{
			HttpSession session=request.getSession();
			int theatre_id = Integer.parseInt(request.getParameter("theatre_id"));
			String theatre_name = (String) request.getParameter("theatre_name");
			System.out.println("TH_Id"+theatre_id);
			System.out.println("TH_NAME"+theatre_name);
			session.setAttribute("select_theatre_name",theatre_name);
			response.sendRedirect("Multiplex-Admin/add_item_form.jsp");
		}
		else if(flag.equals("get_item_booking"))
		{
			HttpSession session=request.getSession();
			int theatre_id = Integer.parseInt(request.getParameter("theatre_id"));
			String theatre_name = (String) request.getParameter("theatre_name");
			System.out.println("TH_Id"+theatre_id);
			System.out.println("TH_NAME"+theatre_name);
			session.setAttribute("select_theatre_name",theatre_name);
			response.sendRedirect("Multiplex-Admin/item_booking.jsp");
		}
		else if(flag.equals("theatre_number"))
		{
			System.out.println("HOO");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag=request.getParameter("flag");
		if(flag.equals("add_theatre"))
		{
			System.out.print(flag);
			String admin_name=(String)session.getAttribute("session_name");
			String theatre_name = request.getParameter("theatre_name");
			String address=request.getParameter("address");
			String city_id=request.getParameter("city");
			int latitude=0,longitude=0;
			int screen=Integer.parseInt(request.getParameter("screen"));
			if(request.getParameter("latitude") != null)
			{
			 latitude=Integer.parseInt(request.getParameter("latitude"));
			
			}
			if(request.getParameter("longitude") != null)
			{
				longitude=Integer.parseInt(request.getParameter("longitude"));
			}
			
			int multiplex_id = (int) session.getAttribute("multiplex_id");
			
			
			System.out.println(theatre_name);
			
			addtheatreVO add_theatre_VO=new addtheatreVO();
			add_theatre_VO.setTheatre_name(theatre_name);
			add_theatre_VO.setAddress(address);
			add_theatre_VO.setCityid(city_id);
			add_theatre_VO.setScreen(screen);
			add_theatre_VO.setLatitude(latitude);
			add_theatre_VO.setLongitude(longitude);
			add_theatre_VO.setAdmin_name(admin_name);
			add_theatre_VO.setMultiplex_id(multiplex_id);
			
			addTheatreDAO admin_DAO2=new addTheatreDAO();
			List list=admin_DAO2.theatrename(add_theatre_VO);
			if(list != null && list.size()>=1) {
				
				response.sendRedirect("Multiplex-Admin/error_1.jsp");
			}
			else{
			
			
			
			admin_DAO2.add_theatre(add_theatre_VO);
			
			multiplexRegistrationVO vo = new multiplexRegistrationVO();
			vo.setMultiplex_id(multiplex_id);
			multiplexRegistrationDAO dao = new multiplexRegistrationDAO();
			dao.updateTheatre_number(vo);
			
			response.sendRedirect("Multiplex-Admin/addTheatre.jsp");
	
			}
			}
	}

}
