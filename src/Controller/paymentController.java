package Controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javassist.bytecode.Descriptor.Iterator;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.addMovieDAO;
import DAO.addTheatreDAO;
import DAO.itemDAO;
import DAO.loginDAO;
import DAO.revenueDAO;
import DAO.screenDAO;
import DAO.ticketDAO;
import DAO.transactionDAO;
import DAO.userRegistrationDAO;
import DAO.walletDAO;
import VO.addMovieVO;
import VO.addtheatreVO;
import VO.itemBookingVO;
import VO.itemUpVO;
import VO.loginVO;
import VO.revenueVO;
import VO.screenVO;
import VO.ticketVO;
import VO.transactionVO;
import VO.updateUserRegistrationVO;
import VO.userRegistrationVO;
import VO.walletVO;

/**
 * Servlet implementation class paymentController
 */
@WebServlet("/paymentController")
public class paymentController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paymentController() 
    {
        super();
        
    }
    public boolean check(String a, String b)
    {
    	if(a.equals(b))
    	{
    		return true;
    	}
    	else
    	{
    		return false;
    	}
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session =request.getSession();
		String flag=request.getParameter("flag");
		//String flag=request.getParameter("flag1");
		System.out.println("PAYMENTCONTROLLER:"+flag);
		 if(flag.equals("load_seat"))
		{
			//int show_id = (int)session.getAttribute("show_id");
			int show_id = Integer.parseInt(request.getParameter("show_id"));
			session.setAttribute("show_id", show_id);
			screenVO screenvo= new screenVO();
			screenvo.setShow_id(show_id);
			screenDAO screendao = new screenDAO();
			List<screenVO> list_price = new ArrayList<screenVO>();
			list_price = (List<screenVO>) screendao.get_price(screenvo);
			int screen_id = list_price.get(0).getScreen_id();
			int multiplex_id = list_price.get(0).getMultiplex_id();
			int theatre_id = list_price.get(0).getTheatre_id();
			session.setAttribute("select_multiplex_id", multiplex_id);
			session.setAttribute("select_theatre_id", theatre_id);
			session.setAttribute("select_screen", screen_id);
			session.setAttribute("select_hr",String.format("%02d", list_price.get(0).getStart_hr() ));
			session.setAttribute("select_min",String.format("%02d", list_price.get(0).getStart_min() ));
			ticketVO ticketvo = new ticketVO();
			ticketvo.setShow_id(show_id);
			ticketDAO ticketdao = new ticketDAO();
			List<ticketVO> list_ticket = new ArrayList<ticketVO>();
			list_ticket = (List<ticketVO>) ticketdao.get_tickets(ticketvo);
			addtheatreVO addtheatrevo = new addtheatreVO();
			addtheatrevo.setTheatre_id(theatre_id);
			addMovieDAO addtheatredao = new addMovieDAO();
			session.setAttribute("select_cinema", (addtheatredao.get_theatre(addtheatrevo)).get(0).getTheatre_name());
			List<String> list = new ArrayList<String>();
			for(int i=0;i<list_ticket.size();i++)
			{
				list.add(list_ticket.get(i).getTicket_tag());
			}
			int price1=list_price.get(0).getPrice1();
			int price2=list_price.get(0).getPrice2();
			int price3=list_price.get(0).getPrice3();
			int movie_id = list_price.get(0).getMovie_id();
			
			String un = "";
			session.setAttribute("price1", price1);
			session.setAttribute("price2", price2);
			session.setAttribute("price3", price3);
			System.out.println("Ready To roll");
			System.out.println(show_id);
			String put_seat="";
			String temp;
			int ticket_id=0;
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=2;i<18;i++)
			{
				temp="A"+i;
				int count=0;
				un="";
				
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				ticket_id++;
				put_seat=put_seat+"<span class='sits__place sits-price--cheap seats "+un+"' data-id='"+ticket_id+"' data-place='"+temp+"' data-price='"+price1+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=1;i<19;i++)
			{
				temp="B"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--cheap "+un+"' data-place='"+temp+"' data-price='"+price1+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=1;i<19;i++)
			{
				temp="C"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--cheap "+un+"' data-place='"+temp+"' data-price='"+price1+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=1;i<19;i++)
			{
				temp="D"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--cheap "+un+"' data-place='"+temp+"' data-price='"+price1+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=1;i<19;i++)
			{
				temp="E"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--middle "+un+"' data-place='"+temp+"' data-price='"+price2+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=1;i<19;i++)
			{
				temp="F"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--middle "+un+"' data-place='"+temp+"' data-price='"+price2+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=1;i<19;i++)
			{
				temp="G"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--middle "+un+"' data-place='"+temp+"' data-price='"+price2+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=3;i<17;i++)
			{
				temp="I"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--middle "+un+"' data-place='"+temp+"' data-price='"+price2+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=5;i<15;i++)
			{
				temp="J"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--expensive "+un+"' data-place='"+temp+"' data-price='"+price3+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=5;i<15;i++)
			{
				temp="K"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--expensive "+un+"' data-place='"+temp+"' data-price='"+price3+"'>"+temp+"</span>";
			}
			put_seat=put_seat+"</div>";
			put_seat=put_seat+"<div class='sits__row'>";
			for(int i=6;i<14;i++)
			{
				temp="L"+i;
				int count=0;
				un="";
				for (int j=0;j<list.size();j++)
				{
					if (check(temp,list.get(j)))
					{
						count++;
					}
				}
				if(count!=0)
				{
					un="sits-state--not";
				}
				put_seat=put_seat+"<span class='sits__place sits-price--expensive "+un+"' data-place='"+temp+"' data-price='"+price3+"'>"+temp+"</span>";
			}
			session.setAttribute("task_done", "yes");
			session.setAttribute("put_seat", put_seat);
			response.sendRedirect("User/bookingStep2.jsp?flag=load_seat&show_id="+show_id);
		}
		 else if(flag.equals("booking1"))
		 {
			 //System.out.println("inside:"+flag);
			
			 int select_date=Integer.parseInt(request.getParameter("select_date"));
			 String reportDate="";
			 Date date3 = new Date();
			 int set_date=0;
			 int set_month=0;
			 int set_year=0;
			if(select_date==1) 
			{
				session.setAttribute("compute_day", 0);
			 // Get the date today using Calendar object.
			Date today = Calendar.getInstance().getTime();        
			// Using DateFormat format method we can create a string 
			// representation of a date with the defined format.
			DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
	        reportDate = df.format(today.getTime());
			DateFormat df1 = new SimpleDateFormat("dd");
			DateFormat df2 = new SimpleDateFormat("MM");
			DateFormat df3 = new SimpleDateFormat("yyyy");
			set_date = Integer.parseInt(df1.format(today));
			set_month = Integer.parseInt(df2.format(today));
			set_year = Integer.parseInt(df3.format(today));
			
			
			
			// Print what date is today!
			System.out.println("Report Date: " + reportDate);
			}
			else if(select_date==2)
			{
				session.setAttribute("compute_day", 1);
				Calendar calObject = Calendar.getInstance();
		        calObject.add(Calendar.DAY_OF_YEAR, 1);
		        System.out.println(calObject);
		        DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		        reportDate = df.format(calObject.getTime());
		        DateFormat df1 = new SimpleDateFormat("dd");
				DateFormat df2 = new SimpleDateFormat("MM");
				DateFormat df3 = new SimpleDateFormat("yyyy");
				set_date = Integer.parseInt(df1.format(calObject.getTime()));
				set_month = Integer.parseInt(df2.format(calObject.getTime()));
				set_year = Integer.parseInt(df3.format(calObject.getTime()));
		        
			}
			System.out.println("DATE"+reportDate);
			System.out.println("Report Date: " + reportDate);
			session.setAttribute("select_date",reportDate);
			 session.setAttribute("select_date_date",set_date);
			 session.setAttribute("select_date_month",set_month);
			 session.setAttribute("select_date_year",set_year);
		 }

		 else if(flag.equals("purchase"))
		 {
			 int count=0,booking_status,remove_booking_status,count1=0;
			 List<String> tickets2 = (List<String>)session.getAttribute("select_ticket");
			 List<String> tickets2_booked = new ArrayList<String>();
			 int show_id = (int)session.getAttribute("show_id");
			 ticketVO ticketvo = new ticketVO();
			 ticketDAO ticketdao = new ticketDAO();
			 for(int i=0;i<tickets2.size();i++)
			 {
				  ticketvo.setTicket_tag(tickets2.get(i));
				  ticketvo.setShow_id(show_id);
				  booking_status = ticketdao.book_ticket(ticketvo);
				  if(booking_status==0)
				  {
					  count++;
					  tickets2_booked.add(tickets2.get(i));
				  }
				  
				  System.out.println("Booking ....Count="+count);
			  }
			  System.out.println("Booking done for "+tickets2_booked);
			  
			  if(count==tickets2.size())
			  {
				  //LOGIC for transactionVO table
				  Date date = new Date();
				  Timestamp ts = new Timestamp(date.getTime());
				  
				  String booking_email="";
				  long booking_number=0;
				  String listString="";
				  for (String s : tickets2)
				  {
				      listString += s + "\t";
				      listString = listString + ",";
				  }
				  System.out.println("TICKETS"+listString);
				  int price = (int)session.getAttribute("total_cost");
				  int user_id =0;
				  if(session.getAttribute("user_id")!=null)
				  {
					  user_id = (int)session.getAttribute("user_id");
				  }
				  if(user_id==0)
				  {
					 booking_email = request.getParameter("user-mail");
					 System.out.println("Booking email"+booking_email);
					 booking_number = 0;
				  }
				  else
				  {
					  System.out.println("User_ID"+user_id);
					  
					  //userRegistrationDAO rdao = new userRegistrationDAO();
					  List<userRegistrationVO> list_user = new ArrayList<userRegistrationVO>();
					  loginVO login_vo =new loginVO();
					  login_vo.setLogin_id(user_id);
					  updateUserRegistrationVO rvo = new updateUserRegistrationVO();
					  rvo.setLoginvo(login_vo);
					  loginDAO dao=new loginDAO();
					  List list1=dao.authentication1(login_vo);
					  updateUserRegistrationVO user2=(updateUserRegistrationVO)list1.get(0);
					  
					  long num=user2.getMobile_number();
					  System.out.println("Mobile Number:"+num);
					 
					  session.setAttribute("user_booking_number",num );
						
					  
					  booking_email = (String)session.getAttribute("user_name"); 
					  booking_number = (long)session.getAttribute("user_booking_number");
				  }
				  //Get Item details
				  System.out.println((int) session.getAttribute("select_theatre_id"));
				  
				  String transaction_id =generate_trransaction_id(ts,user_id,session);
				  System.out.println("AFTER FUNC CALL"+transaction_id);
				  session.setAttribute("transaction_id", transaction_id);
				  int method = Integer.parseInt(request.getParameter("method"));
				  transactionVO transactionvo = new transactionVO();
				  transactionvo.setShow_id(show_id);
				  transactionvo.setPrice(price);
				  transactionvo.setTicket_list(listString);
				  transactionvo.setTotal_tickets(tickets2.size());
				  transactionvo.setPayment_method(method);
				  transactionvo.setUser_id(user_id);
				  transactionvo.setBooking_email(booking_email);
				  transactionvo.setBooking_number(booking_number);
				  transactionvo.setTimestamp(ts);
				  transactionvo.setTransaction_id(transaction_id);
				  transactionvo.setSuccess(0);
				 
				  
				  //transactionVO entry finished
				  //Get Item details
				  System.out.println((int) session.getAttribute("select_theatre_id"));
				  if( session.getAttribute("list_item") !=null)
				  {
					  List<itemUpVO> list_item = new ArrayList<itemUpVO>();
					  list_item = (List<itemUpVO>) session.getAttribute("list_item");
					 // System.out.println("LISTSSSS:"+list_item);
					  String delivery = request.getParameter("delivery");
					  System.out.println("DELIVERY METHOD:"+delivery);
					  List<String> ss = new ArrayList<String>();
					  for(int i=0;i<list_item.size();i++)
					  {
						  ss.add(list_item.get(i).getItem_name());
						  ss.add(request.getParameter(list_item.get(i).getItem_name()+"_qty"));
					  }
					  itemBookingVO item_booking_vo = new itemBookingVO();
					  int theatre_id = (int) session.getAttribute("select_theatre_id");
					 item_booking_vo.setTheatre_id(theatre_id);
					 item_booking_vo.setTransaction_id(transaction_id);
					 item_booking_vo.setPickup(delivery);
					 item_booking_vo.setDate((String)session.getAttribute("select_date"));
					 item_booking_vo.setTime( (String)session.getAttribute("select_hr") +":"+(String)session.getAttribute("select_min"));
					 item_booking_vo.setPayment(0);
					 item_booking_vo.setDelivery("Not Delivered");
					 itemDAO item_booking_dao= new itemDAO();
					 for(int k=0;k<ss.size();k=k+2)
					 {
						 item_booking_vo.setItem_name(ss.get(k));
						 item_booking_vo.setItem_qty( Integer.parseInt((ss.get(k+1))) );
						 System.out.println("Input: "+ss.get(k));
						 item_booking_dao.add_booking(item_booking_vo);
					 }
					 
					 
				  }
				  //

				  //revenueVO entry start
				  int item_price = Integer.parseInt(request.getParameter("total_val"));
				  session.setAttribute("item_cost", item_price);
				  int price_grand = price + item_price;
				  session.setAttribute("grand_cost", price_grand);
				  System.out.println("GRAND PRICE:"+price_grand);
				  transactionvo.setItem_price(item_price);
				  transactionvo.setGrand_total(price_grand);
				  transactionDAO transactiondao = new transactionDAO();
				  transactiondao.add_transaction(transactionvo);
				  session.setAttribute("timestamp", ts);
				  try {
					OnDemandJob obj = new OnDemandJob(ts,transaction_id);
				} catch (ParseException e) {
					
					e.printStackTrace();
				}
				  if(method==1)
				  {
					transactionVO transactionvo1 = new transactionVO();
					transactionDAO transactiondao1 = new transactionDAO();
					transactionvo1.setSuccess(1);
					transactionvo1.setTransaction_id((String)session.getAttribute("transaction_id"));
					transactiondao1.update_success(transactionvo1);
						 
					 walletVO walletvo = new walletVO();
					 walletDAO walletdao = new walletDAO();
					 double new_balance = (double) session.getAttribute("wallet_balance") - price ;
					 walletvo.setLogin_id((int)session.getAttribute("user_id"));
					 walletvo.setBalance(new_balance);
					 new_balance = walletdao.update_balance(walletvo);
					 session.setAttribute("wallet_balance", new_balance);
					 session.setAttribute("tickets2", tickets2);
					 session.setAttribute("ticketvo", ticketvo);
					 response.sendRedirect("User/bookingFinal.jsp"); 
				  }
				  else if(method==2)
				  {
					 session.setAttribute("payu_fname", "Harsh");
					 session.setAttribute("payu_amount", price_grand);
					 session.setAttribute("payu_email", "pandya.hv1995@gmail.com");
					 session.setAttribute("payu_pnum", "9638441438");
					 session.setAttribute("payu_pinfo", "Tickets");
					 session.setAttribute("payu_surl", "http://localhost:8080/Showcasa_user/User/success.jsp");
					 session.setAttribute("payu_furl", "http://localhost:8080/Showcasa_user/User/fail.jsp");
					 session.setAttribute("tickets2_booked", tickets2_booked);
					 session.setAttribute("tickets2", tickets2);
					 session.setAttribute("ticketvo", ticketvo);
					 
					 response.sendRedirect("User/payu.jsp"); 
				  }
				  
				  
				  //revenueVO entry finished
				  /*List<String> mylist = new ArrayList<String>(Arrays.asList(listString.split(",")));
				  System.out.println(mylist);
				  System.out.println("SIZE"+mylist.size());
				  */
				  
			  }
			  else
			  {
				  for(int i=0;i<tickets2_booked.size();i++)
				  {
					  ticketvo.setTicket_tag(tickets2_booked.get(i));
					  ticketvo.setShow_id(show_id);
					  remove_booking_status = ticketdao.remove_book_ticket(ticketvo);
					  if(remove_booking_status==0)
					  {
						  count1++;
						  //tickets2_booked.add(tickets2.get(i));
					  }
					  
					  System.out.println("Removed Booking ....Count="+count1);
				  }
				  response.sendRedirect("User/errorPage1.jsp");
			  }
		 }
		 else if(flag.equals("success"))
		 {
			 System.out.println(flag);
			 int show_id = (int)session.getAttribute("show_id");
			 List<String> tickets2_booked = (List<String>)session.getAttribute("tickets2_booked");
			 List<String> tickets2 = (List<String>)session.getAttribute("tickets2");
			 
			transactionVO transactionvo = new transactionVO();
			transactionDAO transactiondao = new transactionDAO();
			transactionvo.setSuccess(1);
			transactionvo.setTransaction_id((String)session.getAttribute("transaction_id"));
			transactiondao.update_success(transactionvo);
			 
			itemBookingVO item_b_vo = new itemBookingVO();
			item_b_vo.setTransaction_id((String)session.getAttribute("transaction_id"));
			item_b_vo.setPayment(1);
			itemDAO dao = new itemDAO();
			dao.update_payment(item_b_vo);
			 
			 screenVO screenvo = new screenVO();
			  screenvo.setShow_id(show_id);
			  screenDAO screendao = new screenDAO();
			  List<screenVO> list_screenvo = new ArrayList<screenVO>();
			  list_screenvo = screendao.get_price(screenvo);
			  
				 
			  int multiplex_id = list_screenvo.get(0).getMultiplex_id();
			  int theatre_id = list_screenvo.get(0).getTheatre_id();
			  
			  revenueVO revenuevo = new revenueVO();
			  revenuevo.setMultiplex_id(multiplex_id);
			  revenuevo.setTheatre_id(theatre_id);
			  revenuevo.setShow_id(show_id);
			  revenuevo.setTimestamp((Timestamp)session.getAttribute("timestamp"));
			  revenuevo.setTotal_revenue((int)session.getAttribute("payu_amount"));
			  revenuevo.setTotal_tickets(tickets2.size());
			  
			  revenueDAO revenuedao = new revenueDAO();
			  revenuedao.upadate_revenue(revenuevo);
			 
			 response.sendRedirect("User/bookingFinal.jsp");
		 }
		 else if(flag.equals("fail"))
		 {
			 System.out.println(flag);
			 List<String> tickets2_booked = (List<String>)session.getAttribute("tickets2_booked");
			 ticketVO ticketvo = (ticketVO) session.getAttribute("ticketvo");
			 int show_id = (int)session.getAttribute("show_id");
			 int count1 = 0;
			 int remove_booking_status= 0;
			 ticketDAO ticketdao = new ticketDAO();
			 for(int i=0;i<tickets2_booked.size();i++)
			  {
				  ticketvo.setTicket_tag(tickets2_booked.get(i));
				  ticketvo.setShow_id(show_id);
				  remove_booking_status = ticketdao.remove_book_ticket(ticketvo);
				  if(remove_booking_status==0)
				  {
					  count1++;
					  //tickets2_booked.add(tickets2.get(i));
				  }
				  
				  System.out.println("Removed Booking ....Count="+count1);
			  }
			 transactionVO transactionvo = new transactionVO();
				transactionDAO transactiondao = new transactionDAO();
				transactionvo.setSuccess(-1);
				transactionvo.setTransaction_id((String)session.getAttribute("transaction_id"));
				
				transactiondao.update_success(transactionvo);
				
				itemBookingVO item_b_vo = new itemBookingVO();
				item_b_vo.setTransaction_id((String)session.getAttribute("transaction_id"));
				item_b_vo.setPayment(-1);
				itemDAO dao = new itemDAO();
				dao.update_payment(item_b_vo);
			 response.sendRedirect("User/errorPage1.jsp");

		 }
	}

	private String generate_trransaction_id(Timestamp ts, int user_id, HttpSession session)
	{
		
		String gen_transaction_id="";
		String user="";
		Date date = new Date(ts.getTime());
		System.out.println(date);
		//SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy h:mm:ss a");
		SimpleDateFormat sdf =new SimpleDateFormat("dd");
		String f_date = sdf.format(date);
		System.out.println("FORMATTED DATE"+f_date);
		SimpleDateFormat sdf2 =new SimpleDateFormat("ss");
		String f_sec = sdf2.format(date);
		System.out.println("FORMATTED HR"+f_sec);
		int seed = Integer.parseInt(f_date) + Integer.parseInt(f_sec) + 50;
		System.out.println("SEED"+seed);
		Random rand = new Random();
		int n;
		int multiplex_id=(int)session.getAttribute("select_multiplex_id");
		int theatre_id = (int) session.getAttribute("select_theatre_id");
		int screen_id = (int) session.getAttribute("select_screen");
		int show_id = (int) session.getAttribute("show_id");
		if(user_id==0)
		{
			user="TR";
		}
		else
		{
			user="PRC";
		}
		n = rand.nextInt(seed) + 1;
		n = n + rand.nextInt(Integer.parseInt(f_sec)) + 1;
		System.out.println("Random Number"+n);
		gen_transaction_id = user + multiplex_id + theatre_id + screen_id + show_id + n;
		System.out.println("TRANSACTION ID from FUNC:"+gen_transaction_id );
		return gen_transaction_id;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session =request.getSession();
		String flag=request.getParameter("flag");
		System.out.println("Flag="+flag);
		if(flag.equals("choosen_tickets"))
		{
			String seats = request.getParameter("choosen-sits");
			int cost = Integer.parseInt(request.getParameter("choosen-cost"));
			System.out.println(seats);
			System.out.println(cost);
			session.setAttribute("total_cost",cost);
			int show_id = (int)session.getAttribute("show_id");
			
			  String[] tickets = seats.split(",", -1);
			  List<String> tickets2 = new ArrayList<String>();
			  
			  int end = tickets.length;
			  System.out.println(end);
			  end=end-1;
			  end=end/2;
			  for(int i = 0; i < end; i++)
			  {
			    tickets[i]=tickets[i].trim();
			    System.out.println(i+". "+tickets[i]);
			    tickets2.add(tickets[i]);
			  }
			  System.out.println("Booked: "+tickets2.size());
			  for(int i=0;i<tickets2.size();i++)
			  {
				  System.out.println("You tickets:"+tickets2.get(i));
			  }
			  session.setAttribute("total_ticket",tickets2.size());
			  session.setAttribute("select_ticket", tickets2);
			  itemUpVO itemvo = new itemUpVO();
			  itemDAO itemdao = new itemDAO();
			  List<itemUpVO> list_item = new ArrayList<itemUpVO>();
			  itemvo.setTheatre_id((int)session.getAttribute("select_theatre_id"));
			  list_item = itemdao.get_item_all(itemvo);
			  session.setAttribute("list_item", list_item);
			  String put_item="";
			  String put_item_thubmnail ="";
			  put_item_thubmnail = put_item_thubmnail(list_item); //1
			  session.setAttribute("put_item_thubmnail", put_item_thubmnail);
			  System.out.println("LLL+="+put_item);
			  String put_item_table = "";
			  put_item_table = put_item_table(list_item); //2
			  session.setAttribute("put_item_table", put_item_table);
			  put_item = put_item + put_item_theatre(list_item); //3
			  String put = "";
			  int user_id;
			  String user_name ="";
			  if(session.getAttribute("user_id")==null)
			  {
				  user_id = 0;
			  }
			  else
			  {
				  user_id = (int)session.getAttribute("user_id");
				  user_name = (String) session.getAttribute("user_name");
			  }
			  if(user_id==0)
			  {
				  put = put + "<h2 class='page-heading'>Contact information</h2><form action='/Showcasa_user/paymentController' id='contact-info' method='get'  class='form contact-info'><div class='contact-info__field contact-info__field-mail'><input type='email' name='user-mail' placeholder='Your email' required='' class='form__mail'>* </div>";
			  }
			  else
			  {
				  walletVO walletvo = new walletVO();
				  walletDAO walletdao = new walletDAO();
				  walletvo.setLogin_id((int)session.getAttribute("user_id"));
				  double n_balance = walletdao.get_wallet(walletvo).get(0).getBalance();
				  session.setAttribute("wallet_balance", n_balance);
				  if(n_balance < cost)
				  {
					  put = put + "<h2 class='page-heading'>Showcasa Wallet Balance: "+session.getAttribute("wallet_balance")+" </h2><form action='/Showcasa_user/paymentController' id='contact-info' method='get'><h2 class='page-heading'>Choose Payment Method</h2><p><img alt='' src='img/pay3.png'><input type='radio' name='method' value='1' disabled >Showcasa Wallet (Not sufficient balance)</p><br>"; 
				  }
				  else
				  {
					  put = put + "<h2 class='page-heading'>Showcasa Wallet Balance: "+session.getAttribute("wallet_balance")+" </h2><form action='/Showcasa_user/paymentController' id='contact-info' method='get'><h2 class='page-heading'>Choose Payment Method</h2><p><img alt='' src='img/pay3.png'><input type='radio' name='method' value='1' >Showcasa Wallet</p><br>"; 
				  }
			  }
			  put = put +"<div id='radio_buttons'><div class='page-heading'>Meal Delivery Options</div><p><label class='radio'>";
			  put = put + "<input type='radio' name='delivery' value='pick_up'>Pick Up";
			  put = put + "</label><br>";
			  put = put + "<label class='radio'>";
			put = put + "<input type='radio' name='delivery' value='begining'>Delivery to seat at Begining";
			put = put + "</label><br>";
			put = put + "<label class='radio'>";
			put = put + "<input type='radio' checked name='delivery' value='interval'>Delivery to seat at Interval";
			put = put + "</label></p><br></div>";
			put = put +"<p><img alt='' src='img/pay4.png'><input type='radio' checked='checked' name='method' value='2'>PayUMoney</p><br><input type='hidden' name='flag' value='purchase'/><input type='submit' value='Purchase' class='btn btn-md btn--warning btn--wide'/>";
			  
			  put = put + put_item +"</form><div class='order'>";
			  
              //put=put+"<a href='/Showcasa_user/paymentController?flag=purchase' onclick='document.getElementById('contact-info').submit();' class='btn btn-md btn--warning btn--wide'>purchase</a>";
              put=put+"</div>";
              System.out.println(put);
			 
			  System.out.println("TH_ID:"+session.getAttribute("select_theatre_id"));
			  
			  
			  session.setAttribute("put_item", put_item);
			  
			  session.setAttribute("put_form", put);
			  response.sendRedirect("User/bookingStep3.jsp");
		}

	}
	
	private String put_item_table(List<itemUpVO> list_item)
	{
		String put_item_table ="";
		put_item_table = put_item_table + "<table class='table table-striped'>";
		put_item_table = put_item_table + "<thead><tr>";
		put_item_table = put_item_table + "<th>Item Name</th>";
		put_item_table = put_item_table + "<th>Item Price</th>";
		put_item_table = put_item_table + "<th>Qty</th>";
		put_item_table = put_item_table + "<th>Item Subtotal</th>";
		put_item_table = put_item_table + "</tr></thead>";
		put_item_table = put_item_table + "<tbody>";
		for(int i=0;i<list_item.size();i++)
		{
		put_item_table = put_item_table + "<tr>";
		put_item_table = put_item_table + "<td id='"+list_item.get(i).getItem_name()+"_tab_name'></td>";
		put_item_table = put_item_table + "<td id='"+list_item.get(i).getItem_name()+"_tab_price'></td>";
		put_item_table = put_item_table + "<td id='"+list_item.get(i).getItem_name()+"_tab_qty'></td>";
		put_item_table = put_item_table + "<td id='"+list_item.get(i).getItem_name()+"_tab_subtotal'></td>";
		put_item_table = put_item_table + "</tr>";
		}
		put_item_table = put_item_table + "<tr>";
		put_item_table = put_item_table + "<td></td><td></td><td></td>";
		put_item_table = put_item_table + "<td id='total_val_tab1'>Item Total: Rs:0</td>";
		put_item_table = put_item_table + "</tr></tbody>";
		put_item_table = put_item_table + "</table>";
		return put_item_table;
	}
	private String put_item_thubmnail(List<itemUpVO> list_item)
	{
		String put_item = "";
		
		put_item = put_item + "<div class='row'>";
		for(int i=0;i<list_item.size();i++)
		{
		put_item = put_item + "<div class='col-lg-3 col-sm-6 col-md-4'>";
		put_item = put_item + "<div class='thumbnail'>";
		put_item = put_item + "	<img src='../doc/"+list_item.get(i).getEn_file_name()+"' alt='' height='30%'>";
		put_item = put_item + "	<div class='caption'>";
		put_item = put_item + "<h3 class='page-heading'>"+list_item.get(i).getItem_name()+"</h3>";
		put_item = put_item + "<p><input class='check' type='checkbox' id='"+list_item.get(i).getItem_name()+"' name='item' value='"+list_item.get(i).getItem_price()+"' onchange='add_val(this.id,this.value);'>";
		put_item = put_item + "<button disabled type='button' id='"+list_item.get(i).getItem_name()+"_select_minus' onclick='get_qty(this.id)' class='btn btn-danger'>";
		put_item = put_item + "<i class='fa fa-minus'></i>";
		put_item = put_item + "</button>";
		put_item = put_item + "<input size='10' disabled type='text' id='"+list_item.get(i).getItem_name()+"_select' value='0'>";
		put_item = put_item + "<button disabled type='button' id='"+list_item.get(i).getItem_name()+"_select_plus' onclick='get_qty(this.id)' class='btn btn-success'>";
		put_item = put_item + "<i class='fa fa-plus'></i>";
		put_item = put_item + "</button>";
		put_item = put_item + "</p>";
		put_item = put_item + "</div>";
		put_item = put_item + "</div>";
		put_item = put_item + "</div>";
		}
		put_item = put_item + "</div>";
		return put_item;
	}
	private String put_item_theatre(List<itemUpVO> list_item)
	{
		String put_item = "";
		//put_item = put_item + "<form id='submit_this'>";
		put_item = put_item + "<table class='tt'>";
		for(int i=0;i<list_item.size();i++)
		{
		System.out.println(list_item.get(i).getItem_name());
		put_item = put_item + "<tr>";
		put_item = put_item + "<td><input disabled type='hidden' name='item' id='"+list_item.get(i).getItem_name()+"_name' value='"+list_item.get(i).getItem_name()+"'></td>";
		put_item = put_item + "<td><input disabled type='hidden' name='item_price' id='"+list_item.get(i).getItem_name()+"_price' value='"+list_item.get(i).getItem_price()+"'></td>";
		put_item = put_item + "<td> <input  type='hidden' name='"+list_item.get(i).getItem_name()+"_qty' id='"+list_item.get(i).getItem_name()+"_qty' value='0'></td>";
		put_item = put_item + "<td> <input type='hidden' name='"+list_item.get(i).getItem_name()+"_subtotal' id='"+list_item.get(i).getItem_name()+"_subtotal' value='0'></td>";
		put_item = put_item + "</tr>";
		}
		put_item = put_item + "<tr>";
		put_item = put_item + "<td></td><td></td><td></td>";
		put_item = put_item + "<td> <input type='hidden' name='total_val' id='total_val' value='0'/></td>";
		put_item = put_item + "</tr>";
		put_item = put_item + "</table>"; 
		//put_item = put_item + "</form>";
		return put_item;
	}

}
