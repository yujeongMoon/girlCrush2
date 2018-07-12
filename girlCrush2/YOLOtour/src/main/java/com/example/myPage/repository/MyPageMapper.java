package com.example.myPage.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.travelboard.model.Travel;

@Mapper
public interface MyPageMapper {
	
	@Select("SELECT * FROM travel_board_domestic where TBD_id = 1")
	public List<Travel> select_travel_domestic();
	
	@Select("SELECT * FROM travel_board_foreign where TBF_id = 1")
	public List<Travel> select_travel_foreign();
	
	@Select("SELECT COUNT(*) FROM travel_board_domestic where TBD_id = 1")
	public int count_domestic();
	
	@Select("SELECT COUNT(*) FROM travel_board_foreign where TBF_id = 1")
	public int count_foreign();
	
	@Select("SELECT pay_id, name, address FROM payment_board where user_id = 1")
	public List<Travel> select_payment();
}
