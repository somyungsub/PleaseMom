package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.AirportInfoDTO;

@Repository(value="AirportDAO")
public class AirportDAO {
	
	@Autowired
	SqlSessionTemplate template;
	
	public List<AirportInfoDTO> airportSearch(String name){
		List<AirportInfoDTO> list = template.selectList("airport.search", name);
		return list;
	}
	public List<AirportInfoDTO> nationSearch(String name){
		List<AirportInfoDTO> list = template.selectList("airport.nationSearch", name);
		return list;
	}
	//공항이름으로 국가 이름 찾기
	public String airportSearchCountry(String scb_to) {
		String country = template.selectOne("airport.searchCountry", scb_to);
		return country;
	}
}
