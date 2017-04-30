package xwgl.core.project.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import xwgl.common.entity.BaseEntity;
import xwgl.core.sys.entity.Deptment;

@Entity
@Table(name = "t_apply")
public class Apply extends BaseEntity<Long> implements Serializable{
	
	@ManyToOne
	private FrontUser user;
	
	@ManyToOne
	private Deptment deptement;
	
	@ManyToOne
	private Resume resume;
	
	@ManyToOne
	private Job job;
	
	private String state;
	
	private String jobname;

	public FrontUser getUser() {
		return user;
	}

	public void setUser(FrontUser user) {
		this.user = user;
	}

	public Deptment getDeptement() {
		return deptement;
	}

	public void setDeptement(Deptment deptement) {
		this.deptement = deptement;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}
	
	
	
}
