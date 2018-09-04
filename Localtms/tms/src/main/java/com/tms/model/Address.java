package com.tms.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import com.tms.validator.IsValidSchool;

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
	@Column(name="address_city")
	private Integer addressCity;
	@Column(name="address_state")
	private Integer addressState;
	@Column(name="address_zip")
	private Integer addressZip;
	@Column(name="address_phoneno")
	private String addressPhoneNo;
	@Column(name="address_mobno")
	private String addressMobNo;
	@Column(name="address_email")
	private String addreesEmail;
	/*@Transient
	@Min(value=1)
    private Integer addressSchoolId;*/
	/*@Transient
	@Min(value=1)
    private Integer addressCountryId;*/
	@ManyToOne
	@JoinColumn(name="school_id")
	@IsValidSchool
	private School schoolDetails;
	@ManyToOne
	@JoinColumn(name="address_country")
	private Country countryDetails;
	

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


	public Integer getAddressCity() {
		return addressCity;
	}


	public void setAddressCity(Integer addressCity) {
		this.addressCity = addressCity;
	}


	public Integer getAddressState() {
		return addressState;
	}


	public void setAddressState(Integer addressState) {
		this.addressState = addressState;
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

	/*public Integer getAddressCountryId() {
		return addressCountryId;
	}


	public void setAddressCountryId(Integer addressCountryId) {
		this.addressCountryId = addressCountryId;
	}


	public Integer getAddressSchoolId() {
		return addressSchoolId;
	}


	public void setAddressSchoolId(Integer addressSchoolId) {
		this.addressSchoolId = addressSchoolId;
	}
*/

	@Override
	public String  toString()
	{
		return "addressDetail is:"+addressId+":"+addressLane1+":"+addressLane2
				+":"+addressCity+":"+addressState+":"+"addressZip"+":"+countryDetails.getCountryId()
				+":"+addressPhoneNo+":"+addressMobNo+":"+addreesEmail+":"+schoolDetails.getSchoolId();
	}

}
