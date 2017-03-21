package DAO;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;



import VO.contactUsVO;


public class contactUsDAO {
	public void add_contact(contactUsVO contactusvo) {
		// TODO Auto-generated method stub

		try{
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		session.save(contactusvo);
		transaction.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}	
	}
}
