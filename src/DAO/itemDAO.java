package DAO;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.itemAgent;
import VO.itemBookingVO;
import VO.itemUpVO;

public class itemDAO 
{
	public void add_item(itemUpVO add_file_vo)
	{
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();

			session.save(add_file_vo);
			session.flush();
			session.clear();
			transaction.commit();
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

	public List<itemUpVO> get_item_all(itemUpVO itemvo)
	{
		List<itemUpVO> list_item = new ArrayList<itemUpVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q = session.createQuery("from itemUpVO where theatre_id = '"+itemvo.getTheatre_id()+"'");
			list_item = q.list();
			System.out.println("from itemDAO: "+list_item.size());
			session.flush();
			session.clear();
			transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return list_item;
	}

	

	public void add_booking(itemBookingVO item_booking_vo) 
	{
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.save(item_booking_vo);
			session.flush();
			session.clear();
			transaction.commit();
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

	public void update_payment(itemBookingVO item_b_vo) 
	{
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("update itemBookingVO  set payment= '"+item_b_vo.getPayment()+"' where transaction_id='"+item_b_vo.getTransaction_id()+"'");
			int result = q.executeUpdate();
			session.flush();
			session.clear();
			transaction.commit();
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

	public int search_item_agent(itemAgent ia)
	{
		Session session = null;
		int result=1;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from itemAgent where item_username = '"+ia.getItem_username()+"'");
			List<itemAgent> list = q.list();
			result = list.size();
			System.out.println("Number="+result);
			session.flush();
			session.clear();
			transaction.commit();
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

	public void add_agent(itemAgent ia1)
	{
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.save(ia1);
			session.flush();
			session.clear();
			transaction.commit();
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

	public List<itemAgent> getAgentByLogin_id(itemAgent ia)
	{
		List<itemAgent> list_item = new ArrayList<itemAgent>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q = session.createQuery("from itemAgent where login_id = '"+ia.getLogin_id()+"'");
			list_item = q.list();
			System.out.println("from itemDAO: "+list_item.size());
			session.flush();
			session.clear();
			transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return list_item;
		
	}

	public List<itemBookingVO> getBookedItem(itemBookingVO itemB2) 
	{
		List<itemBookingVO> list_item = new ArrayList<itemBookingVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q = session.createQuery("from itemBookingVO where theatre_id = '"+itemB2.getTheatre_id()+"'");
			list_item = q.list();
			System.out.println("from itemDAO: "+list_item.size());
			session.flush();
			session.clear();
			transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			session.close();
		}
		return list_item;
	}
	
}
