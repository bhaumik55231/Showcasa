package Controller;
 
import java.io.File;  
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import DAO.addMovieDAO;
import DAO.addTheatreDAO;
import DAO.ratingDAO;
import DAO.reviewMovieDAO;
import DAO.screenDAO;
//import DAO.loadMovieDAO;
import VO.addMovieVO;
import VO.addtheatreVO;
import VO.movieRatingVO;
import VO.multiplexAdminVO;
import VO.reviewMovieVO;
import VO.screenVO;
//import VO.loadMovieVO;

/**
 * Servlet implementation class addMovieController
 */
@WebServlet("/addMovieController")
@MultipartConfig
public class addMovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addMovieController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		System.out.println("Flag"+flag);
		if(flag.equals("load1"))
		{
			System.out.println(flag);
			int page_movielist = Integer.parseInt(request.getParameter("page_movielist"));
			addMovieVO add_movie_VO=new addMovieVO();
			
			
			addMovieDAO DAO=new addMovieDAO();
			
			
			List<addMovieVO> list_of_movie=DAO.edit_movie(add_movie_VO);
			
			
			HttpSession session=request.getSession();
			session.setAttribute("edit_movie", list_of_movie);
			session.setAttribute("task_done", "yes");
			response.sendRedirect("User/movieList.jsp?flag="+flag+"&page_movielist="+page_movielist);
			}
		
		else if(flag.equals("load"))
		{
			System.out.println(flag);
			int movie_id=Integer.parseInt(request.getParameter("movie_id"));
			addMovieVO add_movie_VO=new addMovieVO();
			add_movie_VO.setMovie_id(movie_id);
			
			addMovieDAO DAO=new addMovieDAO();
			
			List<addMovieVO> list_of_movie=DAO.edit_movie1(add_movie_VO);
			
			screenDAO sdao = new screenDAO();
			
			List<screenVO> list = sdao.get_screens(add_movie_VO);
			
			System.out.println(list.get(0).getStart_hr());
			HttpSession session=request.getSession();
			session.setAttribute("edit_movie1", list_of_movie);
			session.setAttribute("get_screen",list);
			session.setAttribute("single_movie_id",movie_id);
			System.out.println(list);
			
			response.sendRedirect("User/singleMovie.jsp");
		}
		else if(flag.equals("load2"))
		{
			System.out.println("inside: "+flag);
			int movie_id=Integer.parseInt(request.getParameter("movie_id"));
			addMovieVO add_movie_VO=new addMovieVO();
			add_movie_VO.setMovie_id(movie_id);
			addMovieDAO DAO=new addMovieDAO();
			List<addMovieVO> list_of_movie=DAO.edit_movie1(add_movie_VO);
			HttpSession session=request.getSession();
			
			movieRatingVO movieratingvo = new movieRatingVO();
			ratingDAO ratingdao = new ratingDAO();
			List<movieRatingVO> list = new ArrayList<movieRatingVO>();
			session.setAttribute("user_rating", null);
			if(session.getAttribute("user_id")!=null)
			{
				movieratingvo.setLogin_id((int)session.getAttribute("user_id"));
				movieratingvo.setMovie_id(movie_id);
				list = ratingdao.get_user_rating(movieratingvo);
				System.out.println("Rating List size ="+list.size() );
				if(list.size()==0)
				{
				
				}
				else
				{
					session.setAttribute("rating_value",list.get(0).getRating_value() );
					session.setAttribute("user_rating", movie_id);
				}
			}
			session.setAttribute("edit_movie1", list_of_movie);
			if(session.getAttribute("user_rating")==null)
			{
				System.out.println("NULL");
			}
			else
			{
				System.out.println("User Rating"+session.getAttribute("user_rating"));
			}
			session.setAttribute("single_movie_id", movie_id);
			List<reviewMovieVO> list_r = new ArrayList<reviewMovieVO>();
			reviewMovieVO vo_r = new reviewMovieVO();
			reviewMovieDAO dao_r = new reviewMovieDAO();
			vo_r.setMovie_id(movie_id);
			list_r = dao_r.get_review(vo_r);
			session.setAttribute("list_review", list_r);
			session.setAttribute("total_review", list_r.size());
			System.out.println(list_r);
			session.setAttribute("disabled", "");
			if(session.getAttribute("user_id")==null)
			{
				session.setAttribute("disabled", "disabled='disabled'");
			}
			int enc = Integer.parseInt(request.getParameter("enc"));
			/*if(enc==555)
			{*/
				session.setAttribute("task_enc", "yes");
			/*}*/
			System.out.println(session.getAttribute("task_enc"));
			session.setAttribute("task_done", "yes");
			response.sendRedirect("User/singleMovie.jsp?flag="+flag+"&movie_id="+movie_id+"&enc="+enc);
		}
		
		else if(flag.equals("booking1"))
		{
			HttpSession session=request.getSession();
			int movie_id=Integer.parseInt(request.getParameter("movie_id"));
			session.setAttribute("select_movie_id", movie_id);
			int date = Integer.parseInt(request.getParameter("date"));
			int month = Integer.parseInt(request.getParameter("month"));
			int year = Integer.parseInt(request.getParameter("year"));
			int enc = Integer.parseInt(request.getParameter("enc"));
			session.setAttribute("select_date_date",date);
			session.setAttribute("select_date_month",month);
			session.setAttribute("select_date_year",year);
			String put_time="";
			String reportDate = "";
			session.setAttribute("put_time", put_time);
			Calendar c = Calendar.getInstance();
			c.set(year, month-1, date);
			System.out.println(c);
			DateFormat df1 = new SimpleDateFormat("dd");
			DateFormat df2 = new SimpleDateFormat("MM");
			DateFormat df3 = new SimpleDateFormat("yyyy");
			DateFormat df4 = new SimpleDateFormat("EEEE");
			DateFormat df5 = new SimpleDateFormat("u");
			DateFormat df6 = new SimpleDateFormat("w");
			DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
			String day_of_week = "";
			reportDate = df.format(c.getTime());
			session.setAttribute("select_date",reportDate);
			day_of_week = df4.format(c.getTime());
			session.setAttribute("day_of_week",day_of_week);
			Calendar today = (Calendar) session.getAttribute("today_c");
			long DAY_IN_MS = 1000 * 60 * 60 * 24;
			int date0 = (int)  ( (c.getTimeInMillis() - today.getTimeInMillis()) / DAY_IN_MS );
			session.setAttribute("compute_day", date0);
			System.out.println("DAYS+"+session.getAttribute("compute_day"));
			int week_number = Integer.parseInt(df6.format(today.getTime()));
			int day_number = Integer.parseInt(df5.format(today.getTime()));
			System.out.println("DAY NUMBER:"+day_number);
			String disableClick = "",date7 = "",day7 = "";
			Integer[] days_pick_up = {-4,-5,-6,0,-1,-2,-3};
			
			int start = days_pick_up[day_number-1],end = start + 7;
			String put_date_link = "<ul class='nav nav-pills'>";

			//put_date_link = "<a href='#' class= 'btn btn-md btn--warning disableClick'>JJJ  khbgui kjugiubgiubgiug<br>jjiuhbuibh</a>";
			for(int i=start;i<end;i++)
			{
				disableClick = "disabled";
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.DATE, i);
				int set_date = Integer.parseInt(df1.format(cal.getTime()));
				int set_month = Integer.parseInt(df2.format(cal.getTime()));
				int set_year = Integer.parseInt(df3.format(cal.getTime()));
				date7 = df.format(cal.getTime());
				day7 = df4.format(cal.getTime());
				System.out.println("D= "+set_date+"M= "+set_month+"Y= "+set_year);
				System.out.println("Date: "+date7+"Day: "+day7);
				if(i>=0)
				{
					disableClick = "";
				}
				if(i == date0)
				{
					disableClick = "active";
				}
				//put_date_link = put_date_link + "<a href='#' class= '"+disableClick+"'>Day "+date7+"<br>"+day7+"</a>";
				put_date_link = put_date_link + "<li role='presentation' class='"+disableClick+"'><a href='bookingStep1.jsp?flag=booking1&movie_id="+movie_id+"&date="+set_date+"&month="+set_month+"&year="+set_year+"&enc=888'>Day "+date7+"<br>"+day7+"</a></li>";
			}
			put_date_link = put_date_link + "</ul><br><br>";
			System.out.println(put_date_link);
			session.setAttribute("put_date_link", put_date_link);
			//
			addMovieVO addmovievo = new addMovieVO();
			addMovieDAO addmoviedao = new addMovieDAO();
			List<addMovieVO> list_movievo = new ArrayList<addMovieVO>();
			screenVO screenvo = new screenVO();
			screenDAO screendao = new screenDAO();
			List<screenVO> list_screenvo = new ArrayList<screenVO>();
			//
			addmovievo.setMovie_id(movie_id);
			list_movievo = addmoviedao.getMovie(addmovievo);
			session.setAttribute("select_movie", list_movievo.get(0).getMovie_name());
			//
			addtheatreVO addtheatrevo = new addtheatreVO();
			addTheatreDAO addtheatredao = new addTheatreDAO();
			List<addtheatreVO> list_addtheatrevo = new ArrayList<addtheatreVO>();
			list_addtheatrevo = addtheatredao.getAll_theatre();
			//
			screenvo.setStart_date(date);
			screenvo.setStart_month(month);
			screenvo.setStart_year(year);
			screenvo.setShow_status(1);
			screenvo.setMovie_id(movie_id);
			//
			//put_time=put_time+"<div class='time-select__group'><div class='col-sm-3'>";
			for(int i=0; i<list_addtheatrevo.size();i++)
			{
				screenvo.setTheatre_id(list_addtheatrevo.get(i).getTheatre_id());
				list_screenvo = screendao.get_live_show(screenvo);
				if(list_screenvo.size()!=0)
				{
					//theatre name
					put_time = put_time + "<div class='time-select__group'>";
					put_time = put_time + "<div class='col-sm-3'>";
					put_time = put_time + "<p class='time-select__place'>"+list_addtheatrevo.get(i).getTheatre_name()+"</p>";
					put_time = put_time + "</div>";
					put_time = put_time + "<ul class='ol-sm-6 items-wrap'>";
				}
				for(int k=0;k<list_screenvo.size();k++)
				{
					int hr = list_screenvo.get(k).getStart_hr(),min = list_screenvo.get(k).getStart_min();
					String hr_s = String.format("%02d", hr),min_s = String.format("%02d", min);
					
					if(list_screenvo.get(k).getShow_status()==1)
					{
						put_time = put_time + "<li class='time-select__item' id='show' data-id='"+list_screenvo.get(k).getShow_id()+"' data-time="+hr_s+":"+min_s+">"+hr_s+":"+min_s+"</li>";
					}
				}
				if(list_screenvo.size()!=0)
				{
					put_time = put_time + "</ul>";
					put_time = put_time + "</div>";
				}
			}
			
			
			//
			/*if(date0==0)
			{
				Date today = Calendar.getInstance().getTime();
				reportDate = df.format(today.getTime());
				set_date = Integer.parseInt(df1.format(today));
				set_month = Integer.parseInt(df2.format(today));
				set_year = Integer.parseInt(df3.format(today));
				set_day = Integer.parseInt(df5.format(today));
				day_of_week = df4.format(today);
				System.out.println("DATE"+reportDate);
				System.out.println("Day of week:"+day_of_week);
			}
			else*/
			
			/*if(source.equals("index")) 
			{
				System.out.println("OOPPOOPP");
				session.setAttribute("compute_day", 0);
				Date today = Calendar.getInstance().getTime();        
				DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
		        String reportDate = df.format(today.getTime());
				DateFormat df1 = new SimpleDateFormat("dd");
				DateFormat df2 = new SimpleDateFormat("MM");
				DateFormat df3 = new SimpleDateFormat("yyyy");
				int set_date = Integer.parseInt(df1.format(today));
				int set_month = Integer.parseInt(df2.format(today));
				int set_year = Integer.parseInt(df3.format(today));
				System.out.println("DATE"+reportDate);
				System.out.println("Report Date: " + reportDate);
				session.setAttribute("select_date",reportDate);
				session.setAttribute("select_date_date",set_date);
				session.setAttribute("select_date_month",set_month);
				session.setAttribute("select_date_year",set_year);
			}
			else if(source.equals("bookingStep1"))
			{
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
			addMovieVO add_movie_VO=new addMovieVO();
			add_movie_VO.setMovie_id(movie_id);
			
			addMovieDAO DAO=new addMovieDAO();
			List<addMovieVO> list_of_movie=DAO.edit_movie1(add_movie_VO);
			String select_movie = list_of_movie.get(0).getMovie_name();
			session.setAttribute("select_movie", select_movie);
			screenDAO sdao = new screenDAO();
			//List<screenVO> list = sdao.get_screens(add_movie_VO);
			//System.out.println(list.size());
			
			addtheatreVO vo=new addtheatreVO();
			//List<screenVO> list_th =new ArrayList<screenVO>();
			String mm="";
			
			int showID=0;
			String put_time="";
			
			
			screenVO vo1 = new screenVO();
			addTheatreDAO dao1 = new addTheatreDAO();
			List<screenVO> list1 =dao1.getAll();
			vo1.setMovie_id(movie_id);
			screenDAO sdao2 = new screenDAO();
			List<screenVO> list = null;
			System.out.println("DATE selected:"+session.getAttribute("select_date"));
			
			int day = (int)session.getAttribute("compute_day");
			int select_year2;
			int select_month2;
			int select_date2;
			
			select_year2 = (int)session.getAttribute("select_date_year");
		    select_month2 = (int)session.getAttribute("select_date_month");
		    select_date2 = (int)session.getAttribute("select_date_date");
		    vo1.setStart_date(select_date2);
		    vo1.setStart_month(select_month2);
		    vo1.setStart_year(select_year2);
			for(int i=1;i<=list1.size();i++ )
			{
				vo1.setTheatre_id(i);
				
				list = sdao2.getShow(vo1);
				if(list.size()!=0)
				{
					
						vo.setTheatre_id(i);
					
						List<addtheatreVO> ent=DAO.get_theatre(vo);
						System.out.println(ent);
						mm=(String)ent.get(0).getTheatre_name();
						session.setAttribute("select_cinema", mm);
						put_time=put_time+"<div class='time-select__group'><div class='col-sm-3'><p class='time-select__place'>"+mm+"</p></div><ul class='ol-sm-6 items-wrap'>";
						for(int j=0;j<list.size();j++)
						{
							Date date1 = new Date();
							SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");
							try
							{
								Date cr_date = sdf1.parse(sdf1.format(date1));
							}
							catch (java.text.ParseException e) 
							{
								e.printStackTrace();
							}
							SimpleDateFormat sdf = new SimpleDateFormat("h");
							SimpleDateFormat sdf2 = new SimpleDateFormat("aa");
							int c_hr = Integer.parseInt(sdf.format(date1));
							String get_aa = sdf2.format(date1);
							System.out.println("PM/AM:  "+get_aa);
							if(get_aa.equals("PM"))
							{
								c_hr = c_hr + 12;
							}
							System.out.println("CURRENT HR:"+c_hr);
							int hr = list.get(j).getStart_hr();
							int min = list.get(j).getStart_min();
							
							String hour=Integer.toString(hr);
							String minu = Integer.toString(min);
									if(hr<10)
									{
									 hour="0"+hour;
									}
									if(min<10)
									{
										minu="0"+min;
									}
									session.setAttribute("select_hr", hour);
									session.setAttribute("select_min", minu);
									showID = list.get(j).getShow_id();
									if(c_hr<hr || day!=0)
									{
										put_time = put_time + "<li class='time-select__item' id='show' data-id='"+showID+"' data-time="+hour+":"+minu+">"+hour+":"+minu+"</li>";
									}
						}
						put_time = put_time + "</li></div>";
				}
			}*/
			System.out.println(put_time);
			session.setAttribute("task_done", "yes"); 
			session.setAttribute("put_time",put_time);
			//'/Showcasa_user/paymentController?flag=load_seat"+"&"+"&"+"show_id="+showID+"'
			response.sendRedirect("User/bookingStep1.jsp?flag="+flag+"&movie_id="+movie_id+"&date="+date+"&month="+month+"&year="+year+"&enc="+enc);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session =(((HttpServletRequest) request).getSession());
		String flag=request.getParameter("flag");
		
		if(flag.equals("add_movie"))
		{
			System.out.println(flag);
			
			
			for(Part filePart : request.getParts())
			{
				if(filePart.getSubmittedFileName()!=null && !filePart.getSubmittedFileName().equals(""))
				{
					//String fileTxtName = filePart.getName();
					System.out.println("hi1");
					String fileName = filePart.getSubmittedFileName();
					session.setAttribute("fileName",fileName);
					System.out.println(fileName);
				    InputStream fileContent = filePart.getInputStream();
				    // ... (do your job here)
				    
				    byte[] buffer = new byte[fileContent.available()];
					fileContent.read(buffer);
					
					String filePath = getServletContext().getRealPath(request.getServletPath());
					
					int path = filePath.lastIndexOf('\\');
					String path1= filePath.substring(0, path) +"\\doc\\";
					
				    // File targetFile = new File(path1+fileName);
				    // OutputStream outStream = new FileOutputStream(targetFile);
				    // outStream.write(buffer);
				    
					String encryptFileName = encryptFileName(fileName);
					session.setAttribute("encryptedName", encryptFileName);
					
				    File targetEncryptFile = new File(path1+encryptFileName);
				    OutputStream outStream = new FileOutputStream(targetEncryptFile);
				    outStream.write(buffer);
				    
				    System.out.println("File Output Path :: "+path1+fileName);
				    System.out.println("hi2");
				    outStream.close();
					
					
				}
			}

			String movie_name=request.getParameter("moviename");
			int duration=Integer.parseInt(request.getParameter("duration"));
			int age_restriction=Integer.parseInt(request.getParameter("agerestriction"));
			String actor_1=request.getParameter("actor1");
			String actor_2=request.getParameter("actor2");
			String actor_3=request.getParameter("actor3");
			String actor_4=request.getParameter("actor4");
			String actor_5=request.getParameter("actor5");
			String category=request.getParameter("category");
			String director=request.getParameter("director");
			String writer=request.getParameter("writer");
			String release_date=request.getParameter("releasedate");
			String youtube_link=request.getParameter("link");
			String plot=request.getParameter("plot");
			String file_name=(String)session.getAttribute("fileName");
			String encrypted_name=(String)session.getAttribute("encryptedName");
			
			String admin_name="abc";
			int home_value=Integer.parseInt(request.getParameter("value")); //i had passed a hidden 'value' in jsp page
			
			
			
			addMovieVO vo=new addMovieVO();
			vo.setMovie_name(movie_name);
			vo.setDuration(duration);
			vo.setAge_restriction(age_restriction);
			vo.setActor_1(actor_1);
			vo.setActor_2(actor_2);
			vo.setActor_3(actor_3);
			vo.setActor_4(actor_4);
			vo.setActor_5(actor_5);
			vo.setCategory(category);
			vo.setDirector(director);
			vo.setWriter(writer);
			vo.setRelease_date(release_date);
			vo.setYoutube_link(youtube_link);
			vo.setPlot(plot);
			vo.setFile_name(file_name);
			vo.setEncrypted_name(encrypted_name);
			
			vo.setAdmin_name(admin_name);
			vo.setHome_value(home_value);
			vo.setRating(5.0);
			vo.setNumber_user_rating(1);
			
			
			
			
			
			
			addMovieDAO dao=new addMovieDAO();
			List list=dao.moviename(vo);
			if(list != null && list.size()==1){
				response.sendRedirect("Admin/error_1.jsp");
			}
			
			else{
			
			dao.add_movie(vo);
			
			
			response.sendRedirect("Admin/admin.jsp");
		}
		}
	}

	
	
	private String encryptFileName(String fileName){
		 
		   Random r = new Random();
		   String file[] = fileName.split("\\.");
		  
		   byte[] unencodedFile = file[0].getBytes();
		   MessageDigest md = null;
		   try {
		   md = MessageDigest.getInstance("MD5");
		   } catch (Exception e) {}
		   md.reset();
		   md.update(unencodedFile);
		   byte[] encodedFile = md.digest();
		   StringBuffer buf = new StringBuffer();
		   for (int i = 0; i < encodedFile.length; i++) {
		   if (((int) encodedFile[i] & 0xff) < 0x10) {
		   buf.append("0");
		   }
		   buf.append(Long.toString((int) encodedFile[i] & 0xff, 16));
		   }
		  
		   String encryptedFileName=(buf.toString()).concat(String.valueOf(r.nextInt())); 
		   System.out.println(encryptedFileName);
		   System.out.println("hi3");
		   return encryptedFileName+"."+file[1];
		   
	}
	

}
