package DAO;
import java.util.List;   
import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.cityVO;
import VO.countryVO;
import VO.reviewMovieVO;
import VO.stateVO;

public class adminDAO {
	public void add_country(countryVO add_country_vo) {
		// TODO Auto-generated method stub

		try{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		session.save(add_country_vo);
		transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}	
	}
	public List authentication(countryVO add_country_vo) {
		// TODO Auto-generated method stub
		System.out.println("Hi");
		List<countryVO> list_of_user=new ArrayList<countryVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from countryVO where country_name='"+add_country_vo.getCountry_name()+"' ");
		
			list_of_user=q.list();
				
				System.out.println("list size (no of Country) :" +list_of_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_user;
	}
	public void add_review(reviewMovieVO add_review_vo) {
		// TODO Auto-generated method stub

		try{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		session.save(add_review_vo);
		transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
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
		public List<reviewMovieVO> search_all_review() {
			// TODO Auto-generated method stub
			List<reviewMovieVO> ls=new ArrayList<reviewMovieVO>();
			try{
				
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from reviewMovieVO");
		
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
		public void delete_country(countryVO add_country_VO) {
			// TODO Auto-generated method stub
			try{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				session.delete(add_country_VO);
				transaction.commit();
				
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		}
		public void delete_review(reviewMovieVO del_review_VO) {
			// TODO Auto-generated method stub
			try{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				session.delete(del_review_VO);
				transaction.commit();
				
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		}
		public List<countryVO> edit_country(countryVO add_country_VO) {
			// TODO Auto-generated method stub
			List<countryVO> list_of_country=new ArrayList<countryVO>();
			try{
				
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q=session.createQuery("from countryVO where country_id='"+add_country_VO.getCountry_id()+"'");
			
				list_of_country=q.list();
					
					System.out.println("list size" +list_of_country.size());
					transaction.commit();
				}
				catch(Exception ex)
				{
					ex.printStackTrace();
				}
				return list_of_country;
		}
		public List<reviewMovieVO> edit_review(reviewMovieVO add_country_VO) {
			// TODO Auto-generated method stub
			List<reviewMovieVO> list_of_country=new ArrayList<reviewMovieVO>();
			try{
				
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				Session session=sessionFactory.openSession();
				Transaction transaction=session.beginTransaction();
				
				Query q=session.createQuery("from reviewMovieVO where review_id='"+add_country_VO.getReview_id()+"'");
			
				list_of_country=q.list();
					
					System.out.println("list size" +list_of_country.size());
					transaction.commit();
				}
				catch(Exception ex)
				{
					ex.printStackTrace();
				}
				return list_of_country;
		}
		public void update_country(countryVO add_country_VO) {
			// TODO Auto-generated method stub
			try{
				

				  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				  Session session =sessionFactory.openSession();
				  Transaction tr = session.beginTransaction();
				  
				  session.update(add_country_VO);
				  tr.commit();
		
			}
			catch(Exception e)
			{
				e.printStackTrace();
				
			}
		}
		public void update_review(reviewMovieVO add_country_VO) {
			// TODO Auto-generated method stub
			try{
				

				  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				  Session session =sessionFactory.openSession();
				  Transaction tr = session.beginTransaction();
				  
				  session.update(add_country_VO);
				  tr.commit();
		
			}
			catch(Exception e)
			{
				e.printStackTrace();
				
			}
		}

		
		
		

				
				
		
		
		
		
		
		
		
	}
	
	
		
	

