package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.reviewMovieVO;

public class reviewMovieDAO
{

	public List<reviewMovieVO> get_review(reviewMovieVO vo_r) 
	{
		List<reviewMovieVO> list_r = new ArrayList<reviewMovieVO>();
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q = session.createQuery("from reviewMovieVO where movie_id='"+vo_r.getMovie_id()+"'order by review_id desc");
			list_r = q.list();
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
		return list_r;
	}

	public void add_review(reviewMovieVO review_Movie_vo) 
	{
		
		Session session = null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.save(review_Movie_vo);
			
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
