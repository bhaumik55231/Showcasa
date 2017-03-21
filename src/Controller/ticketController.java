package Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addMovieDAO;
import DAO.revenueDAO;
import DAO.screenDAO;
import DAO.ticketDAO;
import VO.addMovieVO;
import VO.revenueVO;
import VO.screenVO;
import VO.ticketVO;

/**
 * Servlet implementation class ticketController
 */
@WebServlet("/ticketController")
public class ticketController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ticketController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String flag = request.getParameter("flag");
		System.out.println("Flag at ticketController"+flag);
		HttpSession session =request.getSession();
		if(flag.equals("load_seats"))
		{
			int show_id = Integer.parseInt(request.getParameter("show_id"));
			session.setAttribute("show_id",show_id);
			System.out.println("passed showID:"+show_id);
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session =request.getSession();
		String flag = request.getParameter("flag");
		System.out.println("From ticketController:"+flag);
		if(flag.equals("add_show"))
		{
			
			int error=0;
			List<Date> list_date = new ArrayList<Date>();
			int screen_id = (int)session.getAttribute("select_screen_id");
			System.out.println(screen_id);
			
			int start_hr = Integer.parseInt(request.getParameter("start_hr"));
			int start_min = Integer.parseInt(request.getParameter("start_min"));
			int price1 = Integer.parseInt(request.getParameter("price1"));
			int price2 = Integer.parseInt(request.getParameter("price2"));
			int price3 = Integer.parseInt(request.getParameter("price3"));
			int movie_id = Integer.parseInt(request.getParameter("movie_id"));
			int start_date = Integer.parseInt(request.getParameter("start_date"));
			int start_month = Integer.parseInt(request.getParameter("start_month"));
			int start_year = Integer.parseInt(request.getParameter("start_year"));
			int end_date = Integer.parseInt(request.getParameter("end_date"));
			int end_month = Integer.parseInt(request.getParameter("end_month"));
			int end_year = Integer.parseInt(request.getParameter("end_year"));
			int multiplex_id = (int)session.getAttribute("multiplex_id");
			int theatre_id = (int)session.getAttribute("select_theatre_id");
			
			long days =get_days(start_date,start_month,start_year,end_date,end_month,end_year);
			days=days+1;
			
			System.out.println("SD"+start_date);
			System.out.println("SM"+start_month);
			System.out.println("SY"+start_year);
			System.out.println("ED"+end_date);
			System.out.println("EM"+end_month);
			System.out.println("EY"+end_year);

			System.out.println("DAYS"+days);
			Calendar cal1 = Calendar.getInstance();
			
			screenVO vo1 = new screenVO();
			screenDAO dao1 = new screenDAO();
			List <screenVO> list_screen_id = new ArrayList<screenVO>();
			
			List<addMovieVO> list = new ArrayList<addMovieVO>();
			addMovieVO vo = new addMovieVO();
			addMovieDAO dao = new addMovieDAO();
			String movie_name1="";
			int duration;
			int duration1 = 0;
			String movie_name = "";
			int start_hr1;
			int start_min1;
			
			
			cal1.set(start_year,start_month,start_date);
			
			//NEW
			String d1 = start_year+"-"+start_month+"-"+start_date;
			//end_date = end_date + 1;
			String d2 = end_year+"-"+end_month+"-"+end_date;
			System.out.println("Date1"+d1);
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date startDate = null;
			try 
			{
			startDate = formatter.parse(d1);
			} 
			catch (ParseException e) 
			{
				e.printStackTrace();
			}
			Date endDate = null;
			try 
			{
				endDate = formatter.parse(d2);
				Calendar c = Calendar.getInstance(); 
				c.setTime(endDate); 
				c.add(Calendar.DATE, 1);
				endDate = c.getTime();
			} 
			catch (ParseException e) 
			{
				e.printStackTrace();
			}
			System.out.println(startDate+"AND"+endDate);
			Calendar start = Calendar.getInstance();
			start.setTime(startDate);
			Calendar end = Calendar.getInstance();
			end.setTime(endDate);
			SimpleDateFormat get_year = new SimpleDateFormat("yyyy");
			SimpleDateFormat get_month = new SimpleDateFormat("MM");
			SimpleDateFormat get_date = new SimpleDateFormat("dd");
			int year;
			int month;
			int date1;
			for (Date date = start.getTime(); start.before(end); start.add(Calendar.DATE, 1), date = start.getTime()) 
			{
			    //System.out.println(date);
			    year = Integer.parseInt(get_year.format(date));
			    month = Integer.parseInt(get_month.format(date));
			    date1 = Integer.parseInt(get_date.format(date));
			    
			    System.out.println(year+" / "+month+" / "+date1);
			    
			
			 
			//NEW
			    start_date = date1;
				start_month = month;
				start_year = year;
			vo1.setScreen_id(screen_id);
			vo1.setTheatre_id(theatre_id);
			vo1.setMultiplex_id(multiplex_id);
			vo1.setStart_date(start_date);
			vo1.setStart_month(start_month);
			vo1.setStart_year(start_year);
			System.out.println("Start_DATE"+start_date);
			//screenDAO dao1 = new screenDAO();
			//List <screenVO> list_screen_id = new ArrayList<screenVO>();
			list_screen_id = dao1.get_shows(vo1);
			//int count1=0;
			//List<addMovieVO> list = new ArrayList<addMovieVO>();
			//addMovieVO vo = new addMovieVO();
			//addMovieDAO dao = new addMovieDAO();
			vo.setMovie_id(movie_id);
			list = dao.getMovie(vo);
			movie_name1=list.get(0).getMovie_name();
			System.out.println("MovName"+movie_name1);
			duration = list.get(0).getDuration();
			duration1 = 0;
			int count1=0;
			for(int i=0;i<list_screen_id.size();i++)
			{
				start_hr1=list_screen_id.get(i).getStart_hr();
				start_min1 = list_screen_id.get(i).getStart_min();
				System.out.println("SH FOR"+i+start_hr1);
				System.out.println("SM FOR"+i+start_min1);
				
				vo.setMovie_id(list_screen_id.get(i).getMovie_id());
				list = dao.getMovie(vo);
				movie_name=list.get(0).getMovie_name();
				System.out.println("MovName"+i+"th ENTRY"+movie_name);
				duration1 = list.get(0).getDuration();
				System.out.println("Duration"+i+"th ENTRY"+duration1);
				
				count1 = count1 + check_intersect(start_hr1,start_min1,duration1,start_hr,start_min,duration);
			}
			System.out.println("Count="+count1);		
			if(count1>0)
			{
				System.out.println("Entry interception found!");
				//response.sendRedirect("Multiplex-Admin/error_page.jsp");
				error++;
				list_date.add(date);
				
			}
			else
			{
			int max_show_id=0;
			screenVO screenvo = new screenVO();
			screenvo.setAdmin_name((String)session.getAttribute("session_name"));
			screenvo.setStart_hr(start_hr);
			screenvo.setStart_min(start_min);
			screenvo.setPrice1(price1);
			screenvo.setPrice2(price2);
			screenvo.setPrice3(price3);
			screenvo.setMovie_id(movie_id);
			screenvo.setMovie_name(movie_name1);
			screenvo.setScreen_id((int)session.getAttribute("select_screen_id"));
			screenvo.setTheatre_id((int)session.getAttribute("select_theatre_id"));
			screenvo.setMultiplex_id((int) session.getAttribute("multiplex_id"));
			screenvo.setStart_date(start_date);
			screenvo.setStart_month(start_month);
			screenvo.setStart_year(start_year);
			screenvo.setShow_status(1);
			
			screenDAO screendao = new screenDAO();
			max_show_id = screendao.add_show(screenvo);
			
			//Create Revenue ID
			
			revenueVO revenuevo = new revenueVO();
			revenueDAO revenuedao = new revenueDAO();
			Timestamp ts = new Timestamp(date.getTime());
			
			revenuevo.setMultiplex_id((int) session.getAttribute("multiplex_id"));
			revenuevo.setTheatre_id((int)session.getAttribute("select_theatre_id"));
			revenuevo.setScreen_id((int)session.getAttribute("select_screen_id"));
			revenuevo.setShow_id(max_show_id);
			revenuevo.setTotal_revenue(0);
			revenuevo.setTotal_tickets(0);
			revenuevo.setTimestamp(ts);
			revenuedao.add_revenue(revenuevo);
			
			// END Revenue

			//System.out.println(max_show_id);
			
			//System.out.println("SH"+start_hr+"SM"+start_min);
			ticketVO ticketvo = new ticketVO();
			ticketDAO ticketdao = new ticketDAO();
			ticketvo.setShow_id(max_show_id);
			ticketvo.setStatus(1);
			String ticket_tag="";
			for(int i=2;i<18;i++)
			{
				ticket_tag="A"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao.add_ticket(ticketvo);
			}
			System.out.println("A Row Inserted!");
			for(int i=1;i<19;i++)
			{
				ticket_tag="B"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao.add_ticket(ticketvo);
			}
			System.out.println("B Row Inserted!");
			for(int i=1;i<19;i++)
			{
				ticket_tag="C"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao.add_ticket(ticketvo);
			}
			System.out.println("C Row Inserted!");
			for(int i=1;i<19;i++)
			{
				ticket_tag="D"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao.add_ticket(ticketvo);
			}
			System.out.println("D Row Inserted!");
			for(int i=1;i<19;i++)
			{
				ticket_tag="E"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao.add_ticket(ticketvo);
			}
			System.out.println("E Row Inserted!");
			System.out.println("E Row Inserted!");
			System.out.println("E Row Inserted!");
			System.out.println("E Row Inserted!");
			System.out.println("E Row Inserted!");
			System.out.println("E Row Inserted!");
			System.out.println("E Row Inserted!");
			System.out.println("E Row Inserted!");
			ticketDAO ticketdao2 = new ticketDAO();
			for(int i=1;i<19;i++)
			{
				ticket_tag="F"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao2.add_ticket(ticketvo);
			}
			try 
			{
				Thread.sleep(5000);
				
			} catch (InterruptedException e) 
			{
				System.out.println("ThreadException:");
				e.printStackTrace();
			} 
			System.out.println("F Row Inserted!");
			for(int i=1;i<19;i++)
			{
				ticket_tag="G"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao2.add_ticket(ticketvo);
			}
			System.out.println("G Row Inserted!");
			for(int i=3;i<17;i++)
			{
				ticket_tag="I"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao2.add_ticket(ticketvo);
			}
			System.out.println("I Row Inserted!");
			for(int i=5;i<15;i++)
			{
				ticket_tag="J"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao2.add_ticket(ticketvo);
			}
			System.out.println("J Row Inserted!");
			for(int i=5;i<15;i++)
			{
				ticket_tag="K"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao2.add_ticket(ticketvo);
			}
			System.out.println("K Row Inserted!");
			for(int i=6;i<14;i++)
			{
				ticket_tag="L"+i;
				ticketvo.setTicket_tag(ticket_tag);
				ticketdao2.add_ticket(ticketvo);
			}
			System.out.println("L Row Inserted!");
			}
			
			
			}
			//}
			if(error==0)
			{
				response.sendRedirect("Multiplex-Admin/dashboard.jsp");
			}
			else
			{
				for(int i=0;i<list_date.size();i++)
				{
					System.out.println("DATE"+list_date.get(i));
				}
				System.out.println("Error"+error);
				response.sendRedirect("Multiplex-Admin/error_page.jsp");
			}
		}
		else
		{
			System.out.println("Lalal");
		}
	}

	private long get_days(int start_date, int start_month, int start_year,
			int end_date, int end_month, int end_year) 
	{
		Calendar cal1 = Calendar.getInstance();
		cal1.set(start_year,start_month,start_date);
		Calendar cal2 = Calendar.getInstance();
		cal2.set(end_year,end_month,end_date);
		System.out.println("Cal1="+cal1);
		System.out.println("Cal2="+cal2);
		long time1 = cal1.getTimeInMillis();
		long time2 = cal2.getTimeInMillis();
		System.out.println("time1="+time1);
		System.out.println("time2="+time2);
		long diff = time2 - time1;
		System.out.println("diff="+diff);
		long days = diff / (24 * 60 * 60 * 1000);
		System.out.println("Days from func="+days);
		return days;
		
	}

	private int check_intersect(int start_hr1,int start_min1,int duration1, int start_hr2,int start_min2,int duration2)
	{
		System.out.println("INTO CHECK");
		int start_hr_big,start_hr_small,start_min_big,start_min_small,duration,hr,min;
		if(start_hr1==start_hr2)
		{
			if(start_min1<start_min2)
			{
				start_min_small = start_min1;
				start_hr_small = start_hr1;
				start_min_big = start_min2;
				start_hr_big = start_hr2;
				duration = duration1;
			}
			else
			{
				start_min_small = start_min2;
				start_hr_small = start_hr2;
				start_min_big = start_min1;
				start_hr_big = start_hr1;
				duration = duration2;
			}
		}
		if(start_hr1<start_hr2)
		{
			start_min_small = start_min1;
			start_hr_small = start_hr1;
			start_min_big = start_min2;
			start_hr_big = start_hr2;
			duration = duration1;
		}
		else
		{
			start_min_small = start_min2;
			start_hr_small = start_hr2;
			start_min_big = start_min1;
			start_hr_big = start_hr1;
			duration = duration2;
		}
		System.out.println("HR BIG"+start_hr_big);
		System.out.println("HR SMALL"+start_hr_small);
		
		System.out.println("MIN BIG"+start_min_big);
		System.out.println("MIN SMALL"+start_min_small);
		
		hr = start_hr_big - start_hr_small;
		min = start_min_big - start_min_small;
		
		System.out.println(min);
		hr = hr*60;
		min = min + hr -5;
		System.out.println("HR="+hr);
		System.out.println("MIN="+min);
		System.out.println("DURATION"+duration);
		if((min-duration)>0)
		{
			System.out.println("Returning 0");
			return 0;
		}
		else
		{
			System.out.println("Returning 1");
			return 1;
		}
	}
}
