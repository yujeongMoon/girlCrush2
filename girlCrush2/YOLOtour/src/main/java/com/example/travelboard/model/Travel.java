// 조가희 : 여행상품리스트
// Oracle에 올라와있는 travel_board 테이블 내용을 바탕으로 작성함.
// Controller클래스에게 요청받은 내용을 가공한다.
// 데이터가 DB에 있을경우 DB에 요청해서 가져와서 가공한 결과를 다시 Controller에게 보낸다.
package com.example.travelboard.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Travel {
	private long travelId;  // travel_id
	private int key;		// key
	private String writer;  // WRITER
	private String title;   // TITLE
	private String content; // CONTENT
	private Date regDate;   // REG_DATE
	private long hitCount;  // HIT_COUNT
	private long price;		// PRICE
	private String imgId;	// IMG_ID
	
}


// Create table TRAVEL_BOARD(
// travel_id NUMBER(10,0) NOT NULL PRIMARY KEY,
// key number default 1,
// writer VARCHAR2(100) DEFAULT NULL,
// title VARCHAR2(255) DEFAULT NULL,
// content VARCHAR2(4000) DEFAULT NULL,
// reg_date DATE DEFAULT NULL,
// hit_count NUMBER(10,0) DEFAULT 0,
// price NUMBER(20,0) DEFAULT 0,
// IMG_id VARCHAR2(100) DEFAULT NULL
// );
