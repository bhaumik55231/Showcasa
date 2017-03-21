package Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.addtheatreVO;
import VO.screenVO;
import VO.transactionVO;
import VO.walletVO;
import DAO.addTheatreDAO;
import DAO.screenDAO;
import DAO.transactionDAO;
import DAO.walletDAO;

/**
 * Servlet implementation class bookingHistoryController
 */
@WebServlet("/bookingHistoryController")
public class bookingHistoryController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookingHistoryController() 
    {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session =request.getSession();
		String flag = request.getParameter("flag");
		System.out.println(flag);
		if(flag.equals("get_history"))
		{
			int login_id = (int)session.getAttribute("user_id");
			transactionVO vo = new transactionVO();
			transactionDAO dao = new transactionDAO();
			vo.setUser_id(login_id);
			List<transactionVO> list = new ArrayList<transactionVO>();
			list = dao.getTransaction_details(vo);
			System.out.println("AFTER FETCH"+list.size());
			addtheatreVO theatrevo = new addtheatreVO();
			addTheatreDAO theatredao = new addTheatreDAO();
			screenVO screenvo = new screenVO();
			screenDAO screendao = new screenDAO();
			List<screenVO> list_screenvo = new ArrayList<screenVO>();
			List<addtheatreVO> list_theatrevo = new ArrayList<addtheatreVO>();
			
			String put_ticket = "";
			int show_hr=0,show_min=0;
			String show_date="LOL";
			String theatre="MM";
			int show_screen=0;
			String show_movie = "Maji Satakli";
			String show_tickets = "";
			if(list.size()==0)
			{
				put_ticket="<br><br><br><br<div class='page-heading'>You haven't done any purchase yet!!</div>";
			}
			else
			{
				put_ticket="<br><br><br><br><div class='page-heading'>You have done "+list.size()+" Order(s)!</div>";
			}
			for(int i=0;i<list.size();i++)
			{
				Timestamp ts = list.get(i).getTimestamp();
				System.out.println("TR_ID:"+list.get(i).getTr_id());
				show_tickets = list.get(i).getTicket_list();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date=new Date();
				try {
					date = sdf.parse(ts.toString());
				} catch (ParseException e) {
						e.printStackTrace();
				}
				String booked_date = sdf.format(date);
				int show_id = list.get(i).getShow_id();
				screenvo.setShow_id(show_id);
				list_screenvo = screendao.get_price(screenvo);
				
				show_screen = list_screenvo.get(0).getScreen_id();
				show_movie = list_screenvo.get(0).getMovie_name();
				show_hr = list_screenvo.get(0).getStart_hr();
				show_min = list_screenvo.get(0).getStart_min();
				
				int d =list_screenvo.get(0).getStart_date();
				int m =list_screenvo.get(0).getStart_month();
				int y =list_screenvo.get(0).getStart_year();
				show_date = y+" - "+m+" - "+d;
				theatrevo.setTheatre_id(list_screenvo.get(0).getTheatre_id());
				list_theatrevo = theatredao.get_screen(theatrevo);
				theatre = list_theatrevo.get(0).getTheatre_name();
				
				put_ticket = put_ticket + "<div class='order-container'><div class='ticket'><div class='ticket-position'><div class='ticket__indecator indecator--pre'><div class='indecator-text pre--text'>Showcasa Online Ticket</div> </div><div class='ticket__inner'><div class='ticket-secondary'>";
				put_ticket = put_ticket + "<span class='ticket__item'>Transaction ID: <strong class='ticket__number'>"+ list.get(i).getTransaction_id() +"</strong></span>";
				put_ticket = put_ticket + "<span class='ticket__item'>Booked On: <strong class='ticket__number'>"+ booked_date +"</strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'>price: <strong class='ticket__cost'>"+ list.get(i).getGrand_total() +"</strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'>Total Ticket(s): <strong class='ticket__cost'>"+ list.get(i).getTotal_tickets() +"</strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Venue:<strong class='ticket__cost'>"+ theatre +" </strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Screen:<strong class='ticket__cost'>"+ show_screen +" </strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Date:<strong class='ticket__cost'>"+ show_date +" </strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Time:<strong class='ticket__cost'>"+ String.format("%02d", show_hr) +":" + String.format("%02d", show_min) +"</strong> </span>";
				put_ticket = put_ticket + "</div><div class='ticket-primery'>";
				put_ticket = put_ticket + "<span class='ticket__item ticket__item--primery ticket__film'>Film<br><strong class='ticket__movie'>"+ show_movie +"</strong></span>";
				put_ticket = put_ticket + "<span class='ticket__item ticket__item--primery'>Seats: <span class='ticket__place'><strong>"+ show_tickets +"</strong></span></span></div>";
				
				put_ticket = put_ticket + " </div><div class='ticket__indecator indecator--post'><div class='indecator-text post--text'>Showcasa Online Ticket</div></div></div></div><div class='ticket-control'><a href='#' class='watchlist list--download'>Download</a><a href='#' class='watchlist list--print'>Print</a> </div></div>";
				
			}
			session.setAttribute("put_ticket", put_ticket);
			response.sendRedirect("User/booking_history.jsp");
		}
		else if(flag.equals("get_history_wallet"))
		{
			int login_id = (int)session.getAttribute("user_id");
			walletVO walletvo = new walletVO();
			walletvo.setLogin_id(login_id);
			walletDAO walletdao = new walletDAO();
			session.setAttribute("wallet_balance", (walletdao.get_wallet(walletvo)).get(0).getBalance());
			
			transactionVO vo = new transactionVO();
			transactionDAO dao = new transactionDAO();
			vo.setUser_id(login_id);
			
			List<transactionVO> list = new ArrayList<transactionVO>();
			list = dao.getTransaction_details_wallet(vo);
			System.out.println("AFTER FETCH"+list.size());
			addtheatreVO theatrevo = new addtheatreVO();
			addTheatreDAO theatredao = new addTheatreDAO();
			screenVO screenvo = new screenVO();
			screenDAO screendao = new screenDAO();
			List<screenVO> list_screenvo = new ArrayList<screenVO>();
			List<addtheatreVO> list_theatrevo = new ArrayList<addtheatreVO>();
			
			String put_ticket = "";
			int show_hr=0,show_min=0;
			String show_date="";
			String theatre="";
			int show_screen=0;
			String show_movie = "";
			String show_tickets = "";
			if(list.size()==0)
			{
				put_ticket="<br><br><br><br<div class='page-heading'>You haven't done any purchase yet!!  [Current Balance: "+session.getAttribute("wallet_balance")+"]</div>";
			}
			else
			{
				put_ticket="<br><br><br><br><div class='page-heading'>You have done "+list.size()+" Order(s)! [Current Balance: "+session.getAttribute("wallet_balance")+"]</div>";
			}
			for(int i=0;i<list.size();i++)
			{
				Timestamp ts = list.get(i).getTimestamp();
				System.out.println("TR_ID:"+list.get(i).getTr_id());
				show_tickets = list.get(i).getTicket_list();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date=new Date();
				try {
					date = sdf.parse(ts.toString());
				} catch (ParseException e) {
						e.printStackTrace();
				}
				String booked_date = sdf.format(date);
				int show_id = list.get(i).getShow_id();
				screenvo.setShow_id(show_id);
				list_screenvo = screendao.get_price(screenvo);
				
				show_screen = list_screenvo.get(0).getScreen_id();
				show_movie = list_screenvo.get(0).getMovie_name();
				show_hr = list_screenvo.get(0).getStart_hr();
				show_min = list_screenvo.get(0).getStart_min();
				
				
				
				int d =list_screenvo.get(0).getStart_date();
				int m =list_screenvo.get(0).getStart_month();
				int y =list_screenvo.get(0).getStart_year();
				show_date = y+" - "+m+" - "+d;
				theatrevo.setTheatre_id(list_screenvo.get(0).getTheatre_id());
				list_theatrevo = theatredao.get_screen(theatrevo);
				theatre = list_theatrevo.get(0).getTheatre_name();
				
				put_ticket = put_ticket + "<div class='order-container'><div class='ticket'><div class='ticket-position'><div class='ticket__indecator indecator--pre'><div class='indecator-text pre--text'>Showcasa Online Ticket</div> </div><div class='ticket__inner'><div class='ticket-secondary'>";
				put_ticket = put_ticket + "<span class='ticket__item'>Transaction ID: <strong class='ticket__number'>"+ list.get(i).getTransaction_id() +"</strong></span>";
				put_ticket = put_ticket + "<span class='ticket__item'>Booked On: <strong class='ticket__number'>"+ booked_date +"</strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'>price: <strong class='ticket__cost'>"+ list.get(i).getPrice() +"</strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'>Total Ticket(s): <strong class='ticket__cost'>"+ list.get(i).getTotal_tickets() +"</strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Venue:<strong class='ticket__cost'>"+ theatre +" </strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Screen:<strong class='ticket__cost'>"+ show_screen +" </strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Date:<strong class='ticket__cost'>"+ show_date +" </strong></span>";
				put_ticket = put_ticket + " <span class='ticket__item'> Show Time:<strong class='ticket__cost'>"+ String.format("%02d", show_hr) +":" + String.format("%02d", show_min) +"</strong> </span>";
				put_ticket = put_ticket + "</div><div class='ticket-primery'>";
				put_ticket = put_ticket + "<span class='ticket__item ticket__item--primery ticket__film'>Film<br><strong class='ticket__movie'>"+ show_movie +"</strong></span>";
				put_ticket = put_ticket + "<span class='ticket__item ticket__item--primery'>Seats: <span class='ticket__place'><strong>"+ show_tickets +"</strong></span></span></div>";
				
				put_ticket = put_ticket + " </div><div class='ticket__indecator indecator--post'><div class='indecator-text post--text'>Showcasa Online Ticket</div></div></div></div><div class='ticket-control'><a href='#' class='watchlist list--download'>Download</a><a href='#' class='watchlist list--print'>Print</a> </div></div>";
				
			}
			session.setAttribute("put_ticket", put_ticket);

			response.sendRedirect("User/wallet_history.jsp");
		}
		else if(flag.equals("seats"))
		{
			System.out.println("inside: "+flag);
			int show_id = Integer.parseInt(request.getParameter("show_id"));
			int enc = Integer.parseInt(request.getParameter("enc"));
			System.out.println("enc= "+enc);
			if(enc==555)
			{
				session.setAttribute("task_enc", "yes");
			}
			System.out.println("task_enc: "+session.getAttribute("task_enc"));
			System.out.println("inside: "+show_id);
			String message = "You entered show_id : "+show_id;
			session.setAttribute("from_controller", message);
			session.setAttribute("task_done", "yes");
			response.sendRedirect("User/land.jsp?flag="+flag+"&show_id="+show_id+"&enc="+enc);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
