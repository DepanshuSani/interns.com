package interns.com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import interns.com.model.CompanyDetailsModel;
import interns.com.model.UserDetailsModel;
import interns.com.model.UserModel;

public class RegistrationDAO {
	public static int register(UserModel user)
	{
		int i = 10;
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.UserModel.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        UserModel id = session.get(UserModel.class, user.getId());
        if(id ==  null)
        {
        	session.save(user);
        }
        else
        {
        	System.out.println("ID ALREADY EXISTS!!");
        	i = 0;
        }
        tx.commit();
        session.close();
		return i;
	}
	public static int reg2_submit(UserDetailsModel user)
	{
		int i = 10;
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.UserDetailsModel.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        session.saveOrUpdate(user);
        tx.commit();
        session.close();
        
        cfg.addAnnotatedClass(interns.com.model.UserModel.class); 
        cfg.configure();
        serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        sessionFac = cfg.buildSessionFactory(serReg);
        session = sessionFac.openSession();
        tx = session.beginTransaction();
        UserModel id2 = session.get(UserModel.class, user.getId());
        id2.setFlag("true");
        session.update(id2);
        id2 = session.get(UserModel.class, user.getId());
        tx.commit();
        session.close();
		return i;
	}
	public static int creg_submit(CompanyDetailsModel user)
	{
		int i = 10;
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.CompanyDetailsModel.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        session.saveOrUpdate(user);
        tx.commit();
        session.close();
        
        cfg.addAnnotatedClass(interns.com.model.UserModel.class); 
        cfg.configure();
        serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        sessionFac = cfg.buildSessionFactory(serReg);
        session = sessionFac.openSession();
        tx = session.beginTransaction();
        UserModel id2 = session.get(UserModel.class, user.getId());
        id2.setFlag("true");
        session.update(id2);
        id2 = session.get(UserModel.class, user.getId());
        tx.commit();
        session.close();
		return i;
	}
}
