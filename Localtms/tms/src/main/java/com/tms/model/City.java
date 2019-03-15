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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="city")
public class City  implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="city_id")
	@Min(value=1)
	@NotNull
	private Integer cityId;
	@Column(name="city_name")
	private String cityName;
	@ManyToOne
	@JoinColumn(name="state_id")
	private CountryState countryState;
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public CountryState getCountryState() {
		return countryState;
	}
	public void setCountryState(CountryState countryState) {
		this.countryState = countryState;
	}
	
	

}
