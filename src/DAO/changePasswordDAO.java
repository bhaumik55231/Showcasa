package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.loginVO;
import VO.userRegistrationVO;

public class changePasswordDAO {
	public List authentication(loginVO login_VO) {
		// TODO Auto-generated method stub
		List<loginVO> list_of_user=new ArrayList<loginVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from loginVO where password='"+login_VO.getPassword()+"' ");
		
			list_of_user=q.list();
				
				System.out.println("list size (no of user having this password) :" +list_of_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_user;
	}

	public void update(loginVO LoginVO) {
		// TODO Auto-generated method stub
		try{
			

			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  Session session =sessionFactory.openSession();
			  Transaction tr = session.beginTransaction();
			  
			  session.update(LoginVO);
			  tr.commit();
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}

	}

}
