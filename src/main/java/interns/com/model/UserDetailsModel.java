package interns.com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="user_details")
public class UserDetailsModel {
	@Id
	private String id;
	private String marks10;
	private String marks12;
	private String programme;
	private String sem1;
	private String sem2;
	private String sem3;
	private String sem4;
	private String sem5="0";
	private String sem6="0";
	private String sem7="0";
	private String sem8="0";
	private String interest;
	private String about;
	private String recommend;
	private String resume;
	private String dp;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMarks10() {
		return marks10;
	}
	public void setMarks10(String marks10) {
		this.marks10 = marks10;
	}
	public String getMarks12() {
		return marks12;
	}
	public void setMarks12(String marks12) {
		this.marks12 = marks12;
	}
	public String getProgramme() {
		return programme;
	}
	public void setProgramme(String programme) {
		this.programme = programme;
	}
	public String getSem1() {
		return sem1;
	}
	public void setSem1(String sem1) {
		this.sem1 = sem1;
	}
	public String getSem2() {
		return sem2;
	}
	public void setSem2(String sem2) {
		this.sem2 = sem2;
	}
	public String getSem3() {
		return sem3;
	}
	public void setSem3(String sem3) {
		this.sem3 = sem3;
	}
	public String getSem4() {
		return sem4;
	}
	public void setSem4(String sem4) {
		this.sem4 = sem4;
	}
	public String getSem5() {
		return sem5;
	}
	public void setSem5(String sem5) {
		this.sem5 = sem5;
	}
	public String getSem6() {
		return sem6;
	}
	public void setSem6(String sem6) {
		this.sem6 = sem6;
	}
	public String getSem7() {
		return sem7;
	}
	public void setSem7(String sem7) {
		this.sem7 = sem7;
	}
	public String getSem8() {
		return sem8;
	}
	public void setSem8(String sem8) {
		this.sem8 = sem8;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	public String getDp() {
		return dp;
	}
	public void setDp(String dp) {
		this.dp = dp;
	}

}
