package interns.com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity (name="jobs_applied")
public class AppliedJobs {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int no;
	private int jobno;
	private int mailno;
	private String id;
	private String company;
	private String title;
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getNo() {
		return no;
	}
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getMailno() {
		return mailno;
	}
	public void setMailno(int mailno) {
		this.mailno = mailno;
	}

}
