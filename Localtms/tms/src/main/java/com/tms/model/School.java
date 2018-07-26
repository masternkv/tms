package com.tms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="school_details")
public class School {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="school_id")
	private int schoolId;
    //@Column(name="school_")
}
