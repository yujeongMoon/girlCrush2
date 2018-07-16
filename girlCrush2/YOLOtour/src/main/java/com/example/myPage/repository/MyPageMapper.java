package com.example.myPage.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.example.travelboard.model.Travel;

@Mapper
public interface MyPageMapper {

	public List<Travel> select_travel_domestic(String email);
	
	public List<Travel> select_travel_foreign(String email);

	public List<Travel> select_payment(@Param("email") String email);
}
