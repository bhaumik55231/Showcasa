package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.addMovieVO;
import VO.addtheatreVO;
//import VO.loadMovieVO;
import VO.multiplexAdminVO;


public class addMovieDAO {
	public void add_movie(addMovieVO vo) {
		// TODO Auto-generated method stub

		try{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		session.save(vo);
		transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}	
	}
	public List<addMovieVO> edit_movie(addMovieVO add_movie_VO) {
		// TODO Auto-generated method stub
		List<addMovieVO> list_of_user=new ArrayList<addMovieVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addMovieVO ");
		
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
	public List moviename(addMovieVO vo) {
		// TODO Auto-generated method stub
		List<addMovieVO> list_of_user=new ArrayList<addMovieVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addMovieVO where movie_name='"+vo.getMovie_name()+"'");
		
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
	public List<addMovieVO> edit_movie1(addMovieVO add_movie_VO)
	{
		// TODO Auto-generated method stub
		List<addMovieVO> list_of_user=new ArrayList<addMovieVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addMovieVO where movie_id='"+add_movie_VO.getMovie_id()+"'");
		
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

	
	public List<addMovieVO> edit_movie3(addMovieVO add_movie_VO)
	{
		// TODO Auto-generated method stub
		List<addMovieVO> list_of_user=new ArrayList<addMovieVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addMovieVO");
		
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


	public List<multiplexAdminVO> get_multiplex(multiplexAdminVO add_movie_VO)
	{
		// TODO Auto-generated method stub
		List<multiplexAdminVO> list_of_user=new ArrayList<multiplexAdminVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from multiplexAdminVO where user_name='"+add_movie_VO.getUser_name()+"'");
		
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
	public List<addtheatreVO> get_theatre(addtheatreVO vo) 
	{
		List<addtheatreVO> list_of_user=new ArrayList<addtheatreVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from addtheatreVO where theatre_id='"+vo.getTheatre_id()+"'");
		
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
	public List<addMovieVO> getMovieList(addMovieVO vo) 
	{
		List<addMovieVO> list = new ArrayList<addMovieVO>();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Query q=session.createQuery("from addMovieVO");
			
			list=q.list();
				
				System.out.println("list size" +list.size());
				transaction.commit();
		
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return list;
	}
	public List<addMovieVO> getMovie(addMovieVO vo) 
	{
		Session session = null;
		List<addMovieVO> list = new ArrayList<addMovieVO>();
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Query q=session.createQuery("from addMovieVO where movie_id='"+vo.getMovie_id()+"'");
			
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

}
