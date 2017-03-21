package DAO;

import java.sql.BatchUpdateException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.loginVO;
import VO.updateUserRegistrationVO;

public class loginDAO {

	public int add_login(loginVO loginvo) 
	{
		// TODO Auto-generated method stub
		int login_id = -1;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		session.save(loginvo);
		login_id = loginvo.getLogin_id();
		transaction.commit();
		System.out.println("inserted"+login_id);
		session.flush();
		session.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}	
		return login_id;
	
	}
	public List forgetPassword(loginVO loginVO)
	{
		List ls=null;
		try{
			Session session = null;
			SessionFactory sessionfactory = new Configuration().configure().buildSessionFactory();
			session = sessionfactory.openSession();
		
			
			Query q =  session.createQuery("from loginVO where username='"+loginVO.getUsername()+"'"); 
			
			
			ls =  q.list();
			System.out.println(ls.size());
			System.out.println("Done");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls; 
	}
	
	
	
	public List authentication(loginVO login_VO)
	{
		// TODO Auto-generated method stub
		List<loginVO> list_of_user=new ArrayList<loginVO>();
		try{
				
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q=session.createQuery("from loginVO where username='"+login_VO.getUsername()+"' and password='"+login_VO.getPassword()+"'");
			
				list_of_user=q.list();
					
				System.out.println("list size (no of user) :" +list_of_user.size());
				transaction.commit();
				
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_user;
	}
	public List authentication1(loginVO login_vo) 
	{
		List<updateUserRegistrationVO> list_of_user=new ArrayList<updateUserRegistrationVO>();
		try
		{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from updateUserRegistrationVO where loginvo='"+login_vo.getLogin_id()+"'");
		
			list_of_user=q.list();
				
				System.out.println("list size (no of user) :" +list_of_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_user;
	
	}
	public void update_login(loginVO loginvo)
	{
	
	}

}
