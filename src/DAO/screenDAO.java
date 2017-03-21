package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;








import VO.screenVO;
import VO.addMovieVO;
import VO.stateVO;

public class screenDAO {

	public List<screenVO> get_screens(addMovieVO add_movie_VO) 
	{
		List<screenVO> list_of_user=new ArrayList<screenVO>();
		Session session = null;
		try
		{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from screenVO where movie_id="+add_movie_VO.getMovie_id());
		
			list_of_user=q.list();
				
				System.out.println("list size" +list_of_user.size());
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
			return list_of_user;
		
	}

	public List<screenVO> get_price(screenVO screenvo) 
	{
		List<screenVO> list_of_user = new ArrayList<screenVO>();
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q=session.createQuery("from screenVO where show_id='"+screenvo.getShow_id()+"'");
	
		list_of_user=q.list();
			
			System.out.println("list size" +list_of_user.size());
			transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return list_of_user;
	}
	public int add_show(screenVO vo) 
	{
			int max=0;
			try
			{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			
			session.save(vo);
			max = vo.getShow_id();
			System.out.println("FROM DAO"+max);
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return max;
	}

	public List<screenVO> get_shows(screenVO vo1) 
	{
		List<screenVO> list_of_user = new ArrayList<screenVO>();
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q=session.createQuery("from screenVO where multiplex_id='"+vo1.getMultiplex_id()+"'AND theatre_id='"+vo1.getTheatre_id()+"'AND screen_id='"+vo1.getScreen_id()+"'AND start_date='"+vo1.getStart_date()+"'AND start_month='"+vo1.getStart_month()+"'AND start_year='"+vo1.getStart_year()+"'" );
	
		list_of_user=q.list();
			
			System.out.println("list size" +list_of_user.size());
			transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return list_of_user;
		
	}

	public List<screenVO> getShow(screenVO vo1) 
	{
		List<screenVO> list_of_user = new ArrayList<screenVO>();
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q=session.createQuery("from screenVO where movie_id='"+vo1.getMovie_id()+"'AND theatre_id='"+vo1.getTheatre_id()+"'AND start_date='"+vo1.getStart_date()+"'AND start_month='"+vo1.getStart_month()+"'AND start_year='"+vo1.getStart_year()+"'AND Status='1'");
	
		list_of_user=q.list();
			
			System.out.println("list size" +list_of_user.size());
			transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return list_of_user;
	}

	public List<screenVO> get_all_shows(screenVO vo1) 
	{
		List<screenVO> list = new ArrayList<screenVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from screenVO where  multiplex_id='"+vo1.getMultiplex_id()+"'AND theatre_id='"+vo1.getTheatre_id()+"'AND screen_id='"+vo1.getScreen_id()+"'AND show_status='1'");
			list = q.list();
			System.out.println("SIZE="+list.size());
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
		return list;
		
		
	}

	public int suspend_show(screenVO screenvo) 
	{
		Session session = null;
		int result=0;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("update screenVO set show_status = '0' where  show_id='"+screenvo.getShow_id()+"'");
			result = q.executeUpdate();
			
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
		return result;
	}

	public void delete_show(screenVO screenvo)
	{
		Session session = null;
		int result=0;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("update screenVO set show_status = '0' where start_date = '"+screenvo.getStart_date()+"' and start_month = '"+screenvo.getStart_month()+"'and start_year = '"+screenvo.getStart_year()+"'and show_status = '"+screenvo.getShow_status()+"'");
			result = q.executeUpdate();
			System.out.println("from DAO: "+result);
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

	public List<screenVO> get_live_show(screenVO screenvo) 
	{
		List<screenVO> list = new ArrayList<screenVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from screenVO where  theatre_id = '"+screenvo.getTheatre_id()+"'and movie_id='"+screenvo.getMovie_id()+"'AND start_date='"+screenvo.getStart_date()+"'AND start_month='"+screenvo.getStart_month()+"'AND start_year='"+screenvo.getStart_year()+"'and show_status='1'");
			list = q.list();
			System.out.println("get_live_show.size()= "+list.size());
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
		return list;
		
	}
	

}
