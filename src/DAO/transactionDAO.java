package DAO;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.ticketVO;
import VO.transactionVO;

public class transactionDAO 
{

	public void add_transaction(transactionVO transactionvo)
	{
		Session session = null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
	
				session.save(transactionvo);
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

	public List<transactionVO> getTransaction_details(transactionVO vo) 
	{
		List<transactionVO> list = new ArrayList<transactionVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from transactionVO where user_id='"+vo.getUser_id()+"'");
			
			list=q.list();
				
			System.out.println("list size" +list.size());
				
			
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
		return list;
	}

	public List<transactionVO> getTransaction_details_wallet(transactionVO vo) 
	{
		List<transactionVO> list = new ArrayList<transactionVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from transactionVO where user_id='"+vo.getUser_id()+"'and payment_method='1'");
			
			list=q.list();
				
			System.out.println("list size" +list.size());
				
			
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
		return list;
	}

	public void update_success(transactionVO transactionvo)
	{
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		
		Query q=session.createQuery("update transactionVO  set success= '"+transactionvo.getSuccess()+"' where transaction_id='"+transactionvo.getTransaction_id()+"'");
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

	public int follow_up(transactionVO transactionvo)
	{
		Session session = null;
		int task=0;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		ticketVO ticketvo = new ticketVO();
		ticketDAO ticketdao = new ticketDAO();
		Query q1=session.createQuery("from transactionVO where transaction_id = '"+transactionvo.getTransaction_id()+"'");
		transactionVO vo = (transactionVO) q1.list().get(0);	
		if(vo.getSuccess()==0)
		{
			Query q=session.createQuery("update transactionVO  set success= '-2' where transaction_id='"+vo.getTransaction_id()+"'");
			task = q.executeUpdate();
			System.out.println("Removing boking!");
			int show_id = vo.getShow_id();
			ticketvo.setShow_id(show_id);
			String listString = vo.getTicket_list();
			List<String> mylist = new ArrayList<String>(Arrays.asList(listString .split(",")));
			System.out.println(mylist);
			for(int i=0;i<mylist.size();i++)
			{
				mylist.set(i, mylist.get(i).trim());
			}
			System.out.println(mylist);	
			System.out.println("SIZE"+mylist.size());
			for(int i=0;i<mylist.size();i++)
			{
				ticketvo.setTicket_tag(mylist.get(i));
				int count1 = ticketdao.remove_book_ticket(ticketvo);
				System.out.println("removed booking: "+count1);
			}
		}
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
		return task;
	}
}


