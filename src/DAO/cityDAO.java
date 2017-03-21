package DAO;

import java.util.ArrayList; 
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.cityVO;
import VO.countryVO;
import VO.stateVO;

public class cityDAO {
	public void add_city(cityVO add_city_VO) {
		// TODO Auto-generated method stub
	try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			
			session.save(add_city_VO);
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
	}
	public List authentication(cityVO add_city_VO) {
		// TODO Auto-generated method stub
		System.out.println("Hi");
		List<cityVO> list_of_user=new ArrayList<cityVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from cityVO where city_name='"+add_city_VO.getCity_name()+"' ");
		
			list_of_user=q.list();
				
				System.out.println("list size (no of City) :" +list_of_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_user;
	}
	
	public List<cityVO> search_all_city() {
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
		
		}
	
}
