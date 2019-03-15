package com.tms.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="address_details")
public class Address  implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="address_id")
	private Integer addressId;
	@Column(name="address_lane1")
	@NotEmpty
	private String addressLane1;
	@Column(name="address_lane2")
	private String addressLane2;
	@Column(name="address_zip")
	private Integer addressZip;
	@Column(name="address_phoneno")
	private String addressPhoneNo;
	@Column(name="address_mobno")
	private String addressMobNo;
	@Column(name="address_email")
	private String addreesEmail;
	@ManyToOne
	@JoinColumn(name="school_id")
	@Valid
	@NotNull
	private School schoolDetails;
	@ManyToOne
	@JoinColumn(name="address_country")
	@Valid
	@NotNull
	private Country countryDetails;
	@ManyToOne
	@JoinColumn(name="address_state")
	@Valid
	@NotNull
	private CountryState stateDetails;
	@ManyToOne
	@JoinColumn(name="address_city")
	@Valid
	@NotNull
	private City cityDetails;

	public Integer getAddressId() {
		return addressId;
	}


	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}


	public String getAddressLane1() {
		return addressLane1;
	}


	public void setAddressLane1(String addressLane1) {
		this.addressLane1 = addressLane1;
	}


	public String getAddressLane2() {
		return addressLane2;
	}


	public void setAddressLane2(String addressLane2) {
		this.addressLane2 = addressLane2;
	}


	public Integer getAddressZip() {
		return addressZip;
	}


	public void setAddressZip(Integer addressZip) {
		this.addressZip = addressZip;
	}


	public String getAddressPhoneNo() {
		return addressPhoneNo;
	}


	public void setAddressPhoneNo(String addressPhoneNo) {
		this.addressPhoneNo = addressPhoneNo;
	}


	public String getAddressMobNo() {
		return addressMobNo;
	}


	public void setAddressMobNo(String addressMobNo) {
		this.addressMobNo = addressMobNo;
	}


	public String getAddreesEmail() {
		return addreesEmail;
	}


	public void setAddreesEmail(String addreesEmail) {
		this.addreesEmail = addreesEmail;
	}

	public School getSchoolDetails() {
		return schoolDetails;
	}


	public void setSchoolDetails(School schoolDetails) {
		this.schoolDetails = schoolDetails;
	}

	public Country getCountryDetails() {
		return countryDetails;
	}


	public void setCountryDetails(Country countryDetails) {
		this.countryDetails = countryDetails;
	}


	
	public CountryState getStateDetails() {
		return stateDetails;
	}


	public void setStateDetails(CountryState stateDetails) {
		this.stateDetails = stateDetails;
	}

	public City getCityDetails() {
		return cityDetails;
	}


	public void setCityDetails(City cityDetails) {
		this.cityDetails = cityDetails;
	}


	@Override
	public String  toString()
	{
		return "addressDetail is:"+addressId+":"+addressLane1+":"+addressLane2
				+":"+stateDetails.getState_Name()+":"+"addressZip"+":"+countryDetails.getCountryId()
				+":"+addressPhoneNo+":"+addressMobNo+":"+addreesEmail+":"+schoolDetails.getSchoolId();
	}

}
