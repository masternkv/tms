package com.tms.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
@Entity
@Table(name="County")
public class Country implements Serializable {
	private static final long serialVersionUID = 1L;
	@Column(name="country_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer countryId;
	@Column(name="country_name")
	private String counrtyName;
	

}
