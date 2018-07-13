package com.example.myPage.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.travelboard.model.Travel;

@Mapper
public interface MyPageMapper {
	
	@Select("select d.img_id, d.title, d.writer, d.price\r\n" + 
			"from(select c.img_id, c.title, c.price, c.writer, c.key\r\n" + 
			"from(select a.img_id, a.travel_id, a.key, a.title, a.writer, a.price, b.user_id\r\n" + 
			"from travel_board a, travel_cart b\r\n" + 
			"where a.travel_id = b. travel_id) c\r\n" + 
			"where c.user_id = 1) d\r\n" + 
			"where d.key = 1")
	public List<Travel> select_travel_domestic();
	
	@Select("select d.img_id, d.title, d.writer, d.price\r\n" + 
			"from(select c.img_id, c.title, c.price, c.writer, c.key\r\n" + 
			"from(select a.img_id, a.travel_id, a.key, a.title, a.writer, a.price, b.user_id\r\n" + 
			"from travel_board a, travel_cart b\r\n" + 
			"where a.travel_id = b. travel_id) c\r\n" + 
			"where c.user_id = 1) d\r\n" + 
			"where d.key = 2")
	public List<Travel> select_travel_foreign();
	
	@Select("SELECT COUNT(*) FROM travel_board where key = 1")
	public int count_domestic();
	
	@Select("SELECT COUNT(*) FROM travel_board where key = 2")
	public int count_foreign();
	
	@Select("SELECT pay_id, name, address FROM payment_board where user_id = 1")
	public List<Travel> select_payment();
}
