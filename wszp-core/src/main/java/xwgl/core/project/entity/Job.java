package xwgl.core.project.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import xwgl.common.entity.BaseEntity;
import xwgl.core.sys.entity.Deptment;
@Entity
@Table(name = "t_job")
public class Job extends BaseEntity<Long> implements Serializable{
	
	private String name;
	
	private Integer num;
	
	private String cash;
	
	private String year;
	
	private String edu;
	
	private String scale;
	
	private String nature;
	
	@ManyToOne
	private Deptment deptment;
	
	private String addr;
	
	private String remark;
	
	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	private String tel;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCash() {
		return cash;
	}

	public void setCash(String cash) {
		this.cash = cash;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getEdu() {
		return edu;
	}

	public void setEdu(String edu) {
		this.edu = edu;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public String getNature() {
		return nature;
	}

	public void setNature(String nature) {
		this.nature = nature;
	}

	public Deptment getDeptment() {
		return deptment;
	}

	public void setDeptment(Deptment deptment) {
		this.deptment = deptment;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}
