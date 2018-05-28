package com.dto;

public class AirportInfoDTO {
	private String airport_num;
	private String name_kr;
	private String country_kr;
	private String city_kr;
	private String location;
	
	public AirportInfoDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public AirportInfoDTO(String airport_num, String name_kr, String country_kr, String city_kr, String location) {
		super();
		this.airport_num = airport_num;
		this.name_kr = name_kr;
		this.country_kr = country_kr;
		this.city_kr = city_kr;
		this.location = location;
	}

	public String getAirport_num() {
		return airport_num;
	}
	public void setAirport_num(String airport_num) {
		this.airport_num = airport_num;
	}
	public String getName_kr() {
		return name_kr;
	}
	public void setName_kr(String name_kr) {
		this.name_kr = name_kr;
	}
	public String getCountry_kr() {
		return country_kr;
	}
	public void setCountry_kr(String country_kr) {
		this.country_kr = country_kr;
	}
	public String getCity_kr() {
		return city_kr;
	}
	public void setCity_kr(String city_kr) {
		this.city_kr = city_kr;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "AirportInfoDTO [airport_num=" + airport_num + ", name_kr=" + name_kr + ", country_kr=" + country_kr
				+ ", city_kr=" + city_kr + ", location=" + location + "]";
	}
	
	
}
