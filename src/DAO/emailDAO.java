package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.loginVO;

public class emailDAO {
	public List authentication(loginVO login_VO) {
		// TODO Auto-generated method stub
		List<loginVO> list_of_user=new ArrayList<loginVO>();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			Query q=session.createQuery("from loginVO where username='"+login_VO.getUsername()+"' ");
		
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


	

}
