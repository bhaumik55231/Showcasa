package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.addtheatreVO;
import VO.addtheatreVO;
import VO.addtheatreVO;
import VO.loginVO;
import VO.screenVO;

public class addTheatreDAO 
{
	public void add_theatre(addtheatreVO add_theatre_VO) 
	{
		// TODO Auto-generated method stub
	try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			
			session.save(add_theatre_VO);
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
	}
	public List<addtheatreVO> search_all_user(addtheatreVO obj) 
	{
		// TODO Auto-generated method stub
		List<addtheatreVO> list_of_all_user=new ArrayList<addtheatreVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			int multiplex_id = obj.getMultiplex_id();
			//System.out.println("DAO ID="+admin_name);
			Query q=session.createQuery("from addtheatreVO WHERE multiplex_id="+"'"+multiplex_id+"'");
		
				list_of_all_user=q.list();
				//addtheatreVO user=(addtheatreVO) list_of_all_user.get(0);
				//String y = user.getTheatre_name();
				//System.out.println("NAME="+y);
				System.out.println("list size" +list_of_all_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_user;	
	}
	public List theatrename(addtheatreVO add_theatre_VO) 
	{
		// TODO Auto-generated method stub
		List<addtheatreVO> list_of_all_user=new ArrayList<addtheatreVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			//System.out.println("DAO ID="+admin_name);
			Query q=session.createQuery("from addtheatreVO WHERE theatre_name='"+add_theatre_VO.getTheatre_name()+"'");
		
				list_of_all_user=q.list();
				//addtheatreVO user=(addtheatreVO) list_of_all_user.get(0);
				//String y = user.getTheatre_name();
				//System.out.println("NAME="+y);
				System.out.println("list size" +list_of_all_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_user;	
	}
	public void delete_user(addtheatreVO add_city_VO) 
	{
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.delete(add_city_VO);
			transaction.commit();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public List<addtheatreVO> get_screen(addtheatreVO vo) 
	{
		int screen=0;
		List<addtheatreVO> list_of_all_user=new ArrayList<addtheatreVO>();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addtheatreVO WHERE theatre_id="+"'"+vo.getTheatre_id()+"'");
			list_of_all_user=q.list();
			
			addtheatreVO user=(addtheatreVO) list_of_all_user.get(0);
			screen = user.getScreen();
			
			//screen = vo.getTheatre_id();
			transaction.commit();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return list_of_all_user;
	}
	public List<screenVO> getAll() 
	{
		List<screenVO> list = new ArrayList<screenVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addtheatreVO ");
			list=q.list();
			
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
	public List<addtheatreVO> getAll_theatre() 
	{
		List<addtheatreVO> list = new ArrayList<addtheatreVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addtheatreVO ");
			list=q.list();
			
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
