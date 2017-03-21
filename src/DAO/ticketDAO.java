package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.screenVO;
import VO.ticketVO;
import VO.ticketVO;


public class ticketDAO 
{

	public List<ticketVO> get_tickets(ticketVO ticketvo) 
	{
		List<ticketVO> list_of_user = new ArrayList<ticketVO>();
		try{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q=session.createQuery("from ticketVO where show_id='"+ticketvo.getShow_id()+"' and status='0'");
	
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

	public int book_ticket(ticketVO ticketvo) 
	{
		Session session = null;
		int count1=0;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q1 = session.createQuery("from ticketVO where ticket_tag='"+ticketvo.getTicket_tag()+"' and show_id='"+ticketvo.getShow_id()+"'");
			List<ticketVO> list = new ArrayList<ticketVO>();
			list = q1.list();
			System.out.println("TicketDAO Size of ticket-Should be 1:"+list.size());
			if(list.size()!=1)
			{
				count1=-1;
			}
			else
			{
				int status = list.get(0).getStatus();
				if(status == 1)
				{
					Query q=session.createQuery("update ticketVO  set status= '0' where ticket_tag='"+ticketvo.getTicket_tag()+"' and show_id='"+ticketvo.getShow_id()+"'");
					int result = q.executeUpdate();
					if(result==0)
					{
						count1++;
					}
					System.out.println("From DAO: "+result);
				}
				else
				{
					count1 = -1;
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
		return count1;
	}

	public void add_ticket(ticketVO ticketvo) 
	{
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		
		session.save(ticketvo);
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

	public int remove_book_ticket(ticketVO ticketvo) 
	{
		Session session = null;
		int count1=0;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q1 = session.createQuery("from ticketVO where ticket_tag='"+ticketvo.getTicket_tag()+"' and show_id='"+ticketvo.getShow_id()+"'");
			List<ticketVO> list = new ArrayList<ticketVO>();
			list = q1.list();
			System.out.println("TicketDAO Size of ticket-Should be 1:"+list.size());
			if(list.size()!=1)
			{
				count1=-1;
			}
			else
			{
				int status = list.get(0).getStatus();
				if(status == 0)
				{
					Query q=session.createQuery("update ticketVO  set status= '1' where ticket_tag='"+ticketvo.getTicket_tag()+"' and show_id='"+ticketvo.getShow_id()+"'");
					int result = q.executeUpdate();
					if(result==0)
					{
						count1++;
					}
					System.out.println("From DAO for remove Booking: "+result);
				}
				else
				{
					count1 = -1;
				}
			}
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
		return count1;
	
	}

	
}
