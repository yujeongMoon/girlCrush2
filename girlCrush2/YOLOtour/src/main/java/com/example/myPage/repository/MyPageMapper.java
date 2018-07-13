package com.example.myPage.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.travelboard.model.Travel;

@Mapper
public interface MyPageMapper {

	public List<Travel> select_travel_domestic(String email);
	
	public List<Travel> select_travel_foreign(String email);

	@Select("SELECT COUNT(*) FROM travel_board where key = 1") public int count_domestic();

	@Select("SELECT COUNT(*) FROM travel_board where key = 2")
	public int count_foreign();

//	@Select("SELECT pay_id, name, address FROM payment_board")
//	public List<Travel> select_payment();
}
