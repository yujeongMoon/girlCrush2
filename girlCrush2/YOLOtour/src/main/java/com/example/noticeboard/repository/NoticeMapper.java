package com.example.noticeboard.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.example.noticeboard.model.Notice;
import com.example.travelboard.model.Travel;

@Mapper
public interface NoticeMapper {
	public int insert(Notice notice);
	public int update(Notice notice);
	public int delete(long noticeId);
	
	@Select("SELECT COUNT(*) FROM NOTICE_BOARD")
	public int count();
	
	@Select("SELECT * FROM NOTICE_BOARD ORDER BY notice_id DESC")
	public List<Notice> selectAll();

	public Notice selectById(long noticeId);
	public List<Notice> selectByLimit(@Param("page") int page, @Param("size") int size);
	
	public int increment(@Param("noticeId") long noticeId, @Param("requester") String requester);	
}
