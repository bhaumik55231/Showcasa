package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.walletVO;

public class walletDAO 
{

	public void add_wallet(walletVO walletvo) 
	{
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.save(walletvo);
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

	public List<walletVO> get_wallet(walletVO walletvo) 
	{
		List<walletVO> list = new ArrayList<walletVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from walletVO where login_id='"+ walletvo.getLogin_id() +"'");
			
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

	public double update_balance(walletVO walletvo) 
	{
		Double new_balance= 0.0;
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			List<walletVO> list = new ArrayList<walletVO>();
			Query q=session.createQuery("update walletVO set balance = '"+walletvo.getBalance()+"' where login_id='"+ walletvo.getLogin_id() +"'");
			int result  = q.executeUpdate();
			new_balance = walletvo.getBalance();
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
		return new_balance;
	}
}
