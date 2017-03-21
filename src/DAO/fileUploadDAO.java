package DAO;


import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.fileUpVO;

public class fileUploadDAO 
{
	public void add_file(fileUpVO add_file_vo)
	{
			try
			{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			session.save(add_file_vo);
			transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
	}
}
