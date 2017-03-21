package DAO;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.revenueVO;
import VO.screenVO;
import VO.transactionVO;


public class revenueDAO 
{

	public void upadate_revenue(revenueVO revenuevo)
	{
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			List<revenueVO> list_s = new ArrayList<revenueVO>();
			int price;
			int total_tickets;
			
			Query q1 = session.createQuery("from revenueVO where show_id ='"+ revenuevo.getShow_id() +"'");
			list_s = q1.list();
			System.out.println("List_S.size() = "+list_s.size());
			
			price = list_s.get(0).getTotal_revenue() + revenuevo.getTotal_revenue();
			total_tickets = list_s.get(0).getTotal_tickets() + revenuevo.getTotal_tickets();
			
			Query q=session.createQuery("update revenueVO  set total_revenue= '"+price+"',total_tickets= '"+total_tickets+"',timestamp= '"+revenuevo.getTimestamp()+"'   where show_id='"+revenuevo.getShow_id()+"'");
			int result = q.executeUpdate();
			
			session.flush();
	        session.clear();
			transaction.commit();
			sessionFactory.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}		
		
	}

	public void add_revenue(revenueVO revenuevo) 
	{
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		
		session.save(revenuevo);
		System.out.println("Revenue Account Generated!!");
		session.flush();
        session.clear();
		transaction.commit();
		sessionFactory.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
	        session.close();
		}
	}

	public int get_total_revenue_multiplex(revenueVO revenuevo)
	{
		int total_revenue_multiplex = 0;
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		List<revenueVO> list = new ArrayList<revenueVO>();
		
		Query q = session.createQuery("from revenueVO where multiplex_id ='"+revenuevo.getMultiplex_id()+"'");
		list = q.list();
		for(int i=0;i<list.size();i++)
		{
			total_revenue_multiplex = total_revenue_multiplex + list.get(i).getTotal_revenue();
		}
		System.out.println("Revenue is: "+total_revenue_multiplex);
		session.flush();
        session.clear();
		transaction.commit();
		sessionFactory.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
	        session.close();
		}
		return total_revenue_multiplex;
	}

	public List<Integer> get_total_tickets_multiplex(revenueVO revenuevo)
	{
		List<Integer> list_integer = new ArrayList<Integer>();
		int total_tickets_multiplex = 0;
		int total_revenue_multiplex = 0;
		int total_show_multiplex = 0;
		int total_movie_multiplex = 0;
		/*list_integer.add(total_revenue_multiplex);
		list_integer.add(total_tickets_multiplex);*/
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		List<screenVO> list = new ArrayList<screenVO>();
		List<transactionVO> list_transactionvo1 = new ArrayList<transactionVO>();
		int multiplex_id = revenuevo.getMultiplex_id();
		
		DateFormat day = new SimpleDateFormat("dd");
		DateFormat month = new SimpleDateFormat("MM");
		DateFormat year = new SimpleDateFormat("yyyy");
		int day_int,month_int,year_int;
		screenVO screenvo_1 = new screenVO();
		screenvo_1.setMultiplex_id(multiplex_id);
		List<screenVO> list_1 = new ArrayList<screenVO>();
		List<Integer> list001 = new ArrayList<Integer>();
		List<Integer> list002 = new ArrayList<Integer>();
		Timestamp stamp = new Timestamp(System.currentTimeMillis());
		Date today_date = new Date(stamp.getTime());
		long DAY_IN_MS = 1000 * 60 * 60 * 24;
		Date week_ago_date = new Date(System.currentTimeMillis() - (7 * DAY_IN_MS));
		System.out.println("Today = "+today_date);
		System.out.println("Week Ago = "+week_ago_date);
		Calendar start = Calendar.getInstance();
		start.setTime(week_ago_date);
		Calendar end = Calendar.getInstance();
		end.setTime(today_date);

		for (Date date = start.getTime(); !start.after(end); start.add(Calendar.DATE, 1), date = start.getTime()) 
		{
		    System.out.println("HMM"+date);
		    day_int = Integer.parseInt( day.format( date ) );
			month_int = Integer.parseInt( month.format(date ));
			year_int = Integer.parseInt( year.format( date ));
			screenvo_1.setStart_date(day_int);
			screenvo_1.setStart_month(month_int);
			screenvo_1.setStart_year(year_int);
			Query q3 = session.createQuery("from screenVO where start_date='"+screenvo_1.getStart_date()+"'And start_month='"+screenvo_1.getStart_month()+"'And start_year='"+screenvo_1.getStart_year()+"'And multiplex_id='"+screenvo_1.getMultiplex_id()+"'");
			list_1 = q3.list();
			total_show_multiplex = total_show_multiplex + list_1.size();
			for(int k=0;k<list_1.size();k++)
			{
				
				System.out.println("Counted Show_id: "+list_1.get(k).getShow_id());
				list001.add(list_1.get(k).getMovie_id());
				System.out.println(list_1.get(k).getMovie_id() + "ADDED");
				System.out.println("SHows"+total_show_multiplex);
			}
			System.out.println("Total_show : "+total_show_multiplex);
		}
			
		
		
		
		
		Query q = session.createQuery("from screenVO where multiplex_id ='"+multiplex_id+"'");
		list = q.list();
		System.out.println(list);
		transactionVO transactionvo = new transactionVO();
		
		List<Date> list_date = new ArrayList<Date>();
		List<Date> list_date_in_range = new ArrayList<Date>();
		
		List<transactionVO> list_transactionvo = new ArrayList<transactionVO>();
		Timestamp ts;
		for(int i=0;i<list.size();i++)
		{	
			int show_id = list.get(i).getShow_id();
			transactionvo.setShow_id(show_id);
			Query q1 = session.createQuery("from transactionVO where show_id ='"+transactionvo.getShow_id()+"'");
			list_transactionvo = q1.list();
			if(list_transactionvo.size()!=0)
			{
				for(int j=0;j<list_transactionvo.size();j++)
				{
					ts = list_transactionvo.get(j).getTimestamp();
					Date date = new Date(ts.getTime());
					list_date.add(date);
					System.out.println("Transactions size"+list_transactionvo.size());
				}
			}
		}
		
		
		for(int i=0;i<list_date.size();i++)
		{
			System.out.println("Test Date"+list_date.get(i));
			
			if(isWithinRange(today_date,week_ago_date,list_date.get(i)))
			{
				System.out.println("True");
				list_date_in_range.add( list_date.get(i) );
				System.out.println("in");
			}
		}
		
		System.out.println("In range..");
		for(int i=0;i<list_date_in_range.size();i++)
		{
			System.out.println(list_date_in_range.get(i));
			Timestamp ts1 = new Timestamp(list_date_in_range.get(i).getTime());
			transactionvo.setTimestamp(ts1);
			Query q2 = session.createQuery("from transactionVO where timestamp='"+transactionvo.getTimestamp()+"'");
			list_transactionvo1 = q2.list();
			System.out.println(list_transactionvo1.get(0).getTotal_tickets());
			total_tickets_multiplex = total_tickets_multiplex + list_transactionvo1.get(0).getTotal_tickets();
			System.out.println("Tickets"+total_tickets_multiplex);
			total_revenue_multiplex = total_revenue_multiplex + list_transactionvo1.get(0).getPrice();
			System.out.println("Revenue"+total_revenue_multiplex);
			
		}
		HashSet<Integer> uniqueValues = new HashSet<>(list001);
		for (Integer value : uniqueValues)
		{
		   list002.add(value);
		}
		total_movie_multiplex = list002.size();
		//System.out.println("TotalMovies= "+total_movie_multiplex);
		System.out.println("List_date"+list_date);
		System.out.println("total tickets: "+total_tickets_multiplex);
		session.flush();
        session.clear();
		transaction.commit();
		sessionFactory.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
	        session.close();
		}
		list_integer.add(total_revenue_multiplex);
		list_integer.add(total_tickets_multiplex);
		list_integer.add(total_show_multiplex);
		list_integer.add(total_movie_multiplex);
		return list_integer;
	}

	private boolean isWithinRange(Date today_date, Date week_ago_date, Date date) 
	{
		return !(date.before(week_ago_date) || date.after(today_date));
	}

	
	
}
