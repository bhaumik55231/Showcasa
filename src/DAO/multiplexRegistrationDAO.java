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
import VO.multiplexRegistrationVO;

public class multiplexRegistrationDAO {

	
	public void add_multiplex(multiplexRegistrationVO add_multiplex_VO) {
		// TODO Auto-generated method stub
	try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			
			session.save(add_multiplex_VO);
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
	}
	/*public void update_multiplex(multiplexRegistrationVO add_multiplex_VO) {
		// TODO Auto-generated method stub
		try{
			

			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  Session session =sessionFactory.openSession();
			  Transaction tr = session.beginTransaction();
			  
			  session.update(add_multiplex_VO);
			  tr.commit();
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}

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
	
	public List<multiplexRegistrationVO> search_all_multiplex() {
		// TODO Auto-generated method stub
		List<multiplexRegistrationVO> list_of_all_multiplex=new ArrayList<multiplexRegistrationVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from multiplexRegistrationVO");
		
				list_of_all_multiplex=q.list();
				
				System.out.println("list size" +list_of_all_multiplex.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_all_multiplex;	
		
	}
	public void delete_multiplex(multiplexRegistrationVO add_city_VO) {
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
	public List<multiplexRegistrationVO> edit_multiplex(multiplexRegistrationVO add_city_VO) {
		// TODO Auto-generated method stub
		List<multiplexRegistrationVO> list_of_multiplex=new ArrayList<multiplexRegistrationVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from multiplexRegistrationVO where multiplex_id='"+add_city_VO.getMultiplex_id()+"'");
		
			list_of_multiplex=q.list();
				
				System.out.println("list size" +list_of_multiplex.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_multiplex;
	}

	*/

	public List<multiplexRegistrationVO> get_movie_list() 
	{
		List<multiplexRegistrationVO> list =new ArrayList<multiplexRegistrationVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from multiplexRegistrationVO");
		
			list=q.list();
				
				System.out.println("list size" +list.size());
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

	public void updateTheatre_number(multiplexRegistrationVO vo) 
	{
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Query q=session.createQuery("from multiplexRegistrationVO where multiplex_id='"+vo.getMultiplex_id()+"'");
			List<multiplexRegistrationVO> list = new ArrayList<multiplexRegistrationVO>();
			list = q.list();
			int num_theatre = list.get(0).getNum_theatre()+1;
			Query q2=session.createQuery("update multiplexRegistrationVO set num_theatre='"+num_theatre+"' where multiplex_id='"+vo.getMultiplex_id()+"'");
		
			int result = q2.executeUpdate();
			System.out.println("Rows affected: " + result);
			///	System.out.println("list size" +list.size());
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
}
