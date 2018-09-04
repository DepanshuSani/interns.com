package interns.com.dao;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import interns.com.model.AppliedJobs;
import interns.com.model.JobDetails;
import interns.com.model.Mailbox;
import interns.com.model.SelectedApplicants;
import interns.com.model.UserModel;

public class LoginDAO {
	public static int login(UserModel user)
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
        if(id !=  null)
        {
        	if(id.getPass().equals(user.getPass()))
        	{
        		if(id.getFlag().equals("false"))
        		{
        			if(id.getType().equals("company"))
        				i=6;
        			else
        				i = 5;
        		}
        		else
        		{
        			if(id.getType().equals("company"))
        				i=60;
        			else
        				i = 50;
        		}
        	}
        }
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
		return i;
	}
	public static UserModel userDetails(String id)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.UserModel.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        UserModel user = session.get(UserModel.class, id);
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
		return user;
		
	}
	public static List<Mailbox> inbox(String id)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.Mailbox.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        String hql = "FROM mailbox M WHERE M.to = '" + id + "' order by no desc";
        Query query = session.createQuery(hql);
        List<Mailbox> results = query.list();
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
		return results;
	}
	public static List<Mailbox> sent(String id)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.Mailbox.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        String hql = "FROM mailbox M WHERE M.from = '" + id + "' order by no desc";
        Query query = session.createQuery(hql);
        List<Mailbox> results = query.list();
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
		return results;
	}
	public static void send(Mailbox mail)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.Mailbox.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        session.save(mail);
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
	}
	public static void post_jobs(JobDetails details)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.JobDetails.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        session.save(details);
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
	}

	public static List<JobDetails> load_jobs()
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.JobDetails.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        String hql = "FROM jobdetails order by no desc";
        Query query = session.createQuery(hql);
        List<JobDetails> results = query.list();
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
		return results;
	}
	public static void deleteMail(int no)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.Mailbox.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        Mailbox mail = session.get(Mailbox.class, no);
        session.delete(mail);
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
	}
	public static void deleteJob(int no)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.JobDetails.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        JobDetails job = session.get(JobDetails.class, no);
        session.delete(job);
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
	}
	public static void applyJob(AppliedJobs job)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.Mailbox.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        Mailbox mail = new Mailbox();
        mail.setDate(new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
    	mail.setTime(new SimpleDateFormat("hh:mm a").format(new Date()));
    	mail.setFrom(job.getId());
    	mail.setMessage("I, " + job.getId() + ",want to apply for the post of " + job.getTitle() + " in your " + job.getCompany() + ". I hereby declare that all the details provided by me in my profile are correct.");
    	mail.setSubject("Job application by " + job.getId() + " for the post of " + job.getTitle());
    	mail.setTo(job.getCompany());
        session.save(mail);
        String hql = "FROM mailbox m ORDER BY m.no desc";
        Query query = session.createQuery(hql);
        List<Mailbox> results = query.list();
        mail.setNo(results.get(0).getNo());
        
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
		
		cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.AppliedJobs.class); 
        cfg.configure();
        serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        sessionFac = cfg.buildSessionFactory(serReg);
        session = sessionFac.openSession();
        tx = session.beginTransaction();
        
            job.setMailno(mail.getNo());
        	session.save(job);    
        
        	tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();    
	}
	public static void selectApplicant(SelectedApplicants app)
	{
		Configuration cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.AppliedJobs.class); 
        cfg.configure();
        ServiceRegistry serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        SessionFactory sessionFac = cfg.buildSessionFactory(serReg);
        Session session = sessionFac.openSession();
        Transaction tx = session.beginTransaction();
        
        String hql = "FROM jobs_applied J WHERE J.mailno=" + app.getJobno();
        Query query = session.createQuery(hql);
        List<AppliedJobs> results = query.list();
        app.setJobno(results.get(0).getJobno());
        
		cfg = new Configuration();
		cfg.addAnnotatedClass(interns.com.model.SelectedApplicants.class); 
        cfg.configure();
        serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
        sessionFac = cfg.buildSessionFactory(serReg);
        session = sessionFac.openSession();
        tx = session.beginTransaction();
        
        Mailbox mail = new Mailbox();
        
        	mail.setDate(new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
        	mail.setTime(new SimpleDateFormat("hh:mm a").format(new Date()));
        	mail.setTo(app.getId());
        	mail.setMessage("You are selected for the recruitment procedure for the position of " + results.get(0).getTitle());
        	mail.setSubject("Recruitment for the post of " + results.get(0).getTitle());
        	mail.setFrom(app.getCompany());
        	session.save(app);
        	
        tx.commit();
        session.close();
        sessionFac.close();
        serReg.close();
        
	        cfg.addAnnotatedClass(interns.com.model.Mailbox.class); 
	        cfg.configure();
	        serReg = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
	        sessionFac = cfg.buildSessionFactory(serReg);
	        session = sessionFac.openSession();
	        tx = session.beginTransaction();
	        
	        session.save(mail);
	
	        tx.commit();
	        session.close();
	        sessionFac.close();
	        serReg.close();
        
        
	}
}
