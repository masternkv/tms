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

@Entity
@Table(name="address_details")
public class Address  implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="address_id")
	private int addressId;
	@Column(name="address_lane1")
	private String addressLane1;
	@Column(name="address_lane2")
	private String addressLane2;
	@Column(name="address_city")
	private String addressCity;
	@Column(name="address_state")
	private String addressState;
	@Column(name="address_zip")
	private Integer addressZip;
	@Column(name="address_country")
	private String addressCountry;
	@Column(name="address_phoneno")
	private String addressPhoneNo;
	@Column(name="address_mobno")
	private String addressMobNo;
	@Column(name="address_email")
	private String addreesEmail;
	@Transient
   private String addressSchoolId;
	@ManyToOne
	@JoinColumn(name="school_id")
	private School schoolDetails;
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	
	public String getAddressSchoolId() {
		return addressSchoolId;
	}
	public void setAddressSchoolId(String addressSchoolId) {
		this.addressSchoolId = addressSchoolId;
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
	public String getAddressCity() {
		return addressCity;
	}
	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}
	public String getAddressState() {
		return addressState;
	}
	public void setAddressState(String addressState) {
		this.addressState = addressState;
	}
	
	public Integer getAddressZip() {
		return addressZip;
	}
	public void setAddressZip(Integer addressZip) {
		this.addressZip = addressZip;
	}
	public String getAddressCountry() {
		return addressCountry;
	}
	public void setAddressCountry(String addressCountry) {
		this.addressCountry = addressCountry;
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
	@Override
	public String  toString()
	{
		return "addressDetail is:"+addressId+":"+addressLane1+":"+addressLane2
				+":"+addressCity+":"+addressState+":"+"addressZip"+":"+addressCountry
				+":"+addressPhoneNo+":"+addressMobNo+":"+addreesEmail+":"+schoolDetails.getSchoolId();
	}

}
