package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.addMovieVO;
import VO.movieRatingVO;

public class ratingDAO
{

	public List<addMovieVO> get_rating(addMovieVO movievo) 
	{
		Session session = null;
		List<addMovieVO> list_addmovievo = new ArrayList<addMovieVO>();
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q = session.createQuery("from addMovieVO where movie_id = '"+movievo.getMovie_id()+"'");
		list_addmovievo = q.list();
		
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
		return list_addmovievo;
	}

	public void add_rating_movievo(addMovieVO movievo) 
	{
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q=session.createQuery("update addMovieVO set number_user_rating = '"+movievo.getNumber_user_rating()+"', rating='"+movievo.getRating()+"' where movie_id='"+movievo.getMovie_id()+"'");
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

	public void add_rating_movieratingvo(movieRatingVO movieratingvo)
	{
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		
		session.save(movieratingvo);
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

	public List<movieRatingVO> get_user_rating(movieRatingVO movieratingvo)
	{
		List<movieRatingVO> list = new ArrayList<movieRatingVO>();
		Session session = null;
		try
		{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		Query q = session.createQuery("from movieRatingVO where movie_id = '"+movieratingvo.getMovie_id()+"' and login_id='"+movieratingvo.getLogin_id()+"'");
		list = q.list();
		System.out.println("From ratingDAO list.size() = "+list.size());
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
