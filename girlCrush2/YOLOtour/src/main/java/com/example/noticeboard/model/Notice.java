package com.example.noticeboard.model;

import java.util.Date;

import lombok.Data;

@Data
public class Notice {
	int noticeId; // id(순서)
	String writer; // 글쓴이
	String title; // 제목
	String content; // 내용
	Date regDate; // 현재 날짜
	int hitCount; // 조회수
}
