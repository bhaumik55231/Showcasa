package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.multiplexAdminVO;
import VO.multiplexAdminVO;
import VO.multiplexAdminVO;

public class multiplexAdminDAO 
{
	public void add_multiplex_admin(multiplexAdminVO multiplex_admin) 
	{
	try
	{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			session.save(multiplex_admin);
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
	}
	public List search_username(multiplexAdminVO obje) 
	{
		// TODO Auto-generated method stub
		List<multiplexAdminVO> list_of_all_user=new ArrayList<multiplexAdminVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from multiplexAdminVO where user_name='"+obje.getUser_name()+"'");
		
				list_of_all_user=q.list();
				
				System.out.println("list size" +list_of_all_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_user;	
		
	}
	public List<multiplexAdminVO> search_all_multiplex_admin() 
	{
		// TODO Auto-generated method stub
		List<multiplexAdminVO> list_of_all_user=new ArrayList<multiplexAdminVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from multiplexAdminVO");
		
				list_of_all_user=q.list();
				
				System.out.println("list size" +list_of_all_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_user;	
		
	}
	public void delete_user(multiplexAdminVO obj) {
		// TODO Auto-generated method stub
		try{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.delete(obj);
			transaction.commit();
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	/*public List<cityVO> search_all_city() {
		// TODO Auto-generated method stub
		List<cityVO> list_of_all_city=new ArrayList<cityVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from cityVO");
		
				list_of_all_city=q.list();
				
				System.out.println("list size" +list_of_all_city.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_city;	
		
	}
	
	public void delete_city(cityVO add_city_VO) {
		// TODO Auto-generated method stub
		try{
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
	
	public List<cityVO> edit_city(cityVO add_city_VO) {
		// TODO Auto-generated method stub
		List<cityVO> list_of_city=new ArrayList<cityVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from cityVO where city_id='"+add_city_VO.getCity_id()+"'");
		
			list_of_city=q.list();
				
				System.out.println("list size" +list_of_city.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_city;
	}

	public void update_city(cityVO add_city_VO) {
		// TODO Auto-generated method stub
		try{
			

			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  Session session =sessionFactory.openSession();
			  Transaction tr = session.beginTransaction();
			  
			  session.update(add_city_VO);
			  tr.commit();
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}

	}
	public List<stateVO> search_all_state() {
		// TODO Auto-generated method stub
		List<stateVO> list_of_all_state=new ArrayList<stateVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from stateVO");
		
				list_of_all_state=q.list();
				
				System.out.println("list size" +list_of_all_state.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_state;	
		
		}
	
	public List<stateVO> search_all_state(countryVO cvo) {
		// TODO Auto-generated method stub
		List<stateVO> list_of_all_state=new ArrayList<stateVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from stateVO");
		
				list_of_all_state=q.list();
				
				System.out.println("list size" +list_of_all_state.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_state;	
		
		}
	
	
	
	
	public List<countryVO> search_all_country() {
		// TODO Auto-generated method stub
		List<countryVO> ls=new ArrayList<countryVO>();
		try{
			
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q=session.createQuery("from countryVO");
	
			ls=q.list();
			
			System.out.println("list size" +ls.size());
			transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;	
	
		
	}
	public List<cityVO> search_all_city1(cityVO cvo) {
		// TODO Auto-generated method stub
		List<cityVO> list_of_all_city=new ArrayList<cityVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from cityVO as s where s.state_id="+cvo.getState_id());
		
				list_of_all_city=q.list();
				
				System.out.println("list size" +list_of_all_city.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_city;	
		
		}*/
	public List<multiplexAdminVO> getMultiplex_id(multiplexAdminVO vo) 
	{
		Session session = null;
		List <multiplexAdminVO> list_multiplex_admin = new ArrayList<multiplexAdminVO>();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from multiplexAdminVO where user_name='"+vo.getUser_name()+"'");
		
			list_multiplex_admin=q.list();
				
				//System.out.println("list size" +list.size());
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
		return list_multiplex_admin;
	}
	
}
