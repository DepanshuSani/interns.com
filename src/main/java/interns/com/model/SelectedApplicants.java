package interns.com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity (name = "selected_applicants")
public class SelectedApplicants {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int no;
	
	private String id;
	private int jobno;
	private String company;
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getJobno() {
		return jobno;
	}
	public void setJobno(int jobno) {
		this.jobno = jobno;
	}
	public void setNo(int no) {
		this.no = no;
	}
}
