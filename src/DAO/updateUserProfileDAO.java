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
import VO.updateUserRegistrationVO;


public class updateUserProfileDAO {
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
		public List<updateUserRegistrationVO> edit_user(updateUserRegistrationVO add_city_VO) {
			// TODO Auto-generated method stub
			List<updateUserRegistrationVO> list_of_user=new ArrayList<updateUserRegistrationVO>();
			try{
				
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q=session.createQuery("from updateUserRegistrationVO where user_id='"+add_city_VO.getUser_id()+"'");
			
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

		
	
		public List authentication(updateUserRegistrationVO updateuserregistrationvo) {
			// TODO Auto-generated method stub
			System.out.println("Hi");
			List<updateUserRegistrationVO> list_of_user=new ArrayList<updateUserRegistrationVO>();
			try{
				
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q=session.createQuery("from updateUserRegistrationVO where email_id='"+updateuserregistrationvo.getEmail_id()+"' ");
			
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
		public int add_user(updateUserRegistrationVO add_user_VO) 
		{
			int user_id = -1;
		try
		{
				
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				
				session.save(add_user_VO);
				user_id = add_user_VO.getUser_id();
				transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return user_id;
		}
		
	public void update_user(updateUserRegistrationVO add_user_VO) {
		// TODO Auto-generated method stub
		try{
			

			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  Session session =sessionFactory.openSession();
			  Transaction tr = session.beginTransaction();
			  
			  session.update(add_user_VO);
			  tr.commit();
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}

	}

	public List<stateVO> search_all_state() {
		
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
	public List<stateVO> search_all_state1(countryVO cvo) {
		// TODO Auto-generated method stub
		List<stateVO> list_of_all_state=new ArrayList<stateVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from stateVO as s where s.country_id="+cvo.getCountry_id());
		
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
	
	public List<cityVO> search_all_city1(stateVO cvo) {
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
