package com.tms.model;

import java.io.Serializable;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="state")
public class CountryState implements Serializable {
	public static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="state_id")
	private Integer stateId;
	@Column(name="state_name")
	private String state_Name;
	@ManyToOne
	@JoinColumn(name="country_id")
	private Country country;
	
	public Integer getStateId() {
		return stateId;
	}
	public void setStateId(Integer stateId) {
		this.stateId = stateId;
	}
	public String getState_Name() {
		return state_Name;
	}
	public void setState_Name(String state_Name) {
		this.state_Name = state_Name;
	}
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	
	@Override
	public String  toString()
	{
		return "CountryDetails is:"+stateId+":"+state_Name+":"+country.getCountryId();
				
					}

}
