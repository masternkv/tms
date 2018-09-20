package com.tms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;

@Entity
@Table(name="school_details")
public class School {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="school_id")
	@Min(value=1)
	private Integer schoolId;
    @Column(name="school_name")
    private String schoolName;
	public Integer getSchoolId() {
		return schoolId;
	}
	public void setSchoolId(Integer schoolId) {
		this.schoolId = schoolId;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
@Override
public String toString()
{
	return schoolId+":"+schoolName;
}
}
