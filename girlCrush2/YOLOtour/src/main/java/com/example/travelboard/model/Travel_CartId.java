package com.example.travelboard.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Travel_CartId {
	private long travelId;  // travel_id
	private int key;		// key
	private String writer;  // WRITER
	private String title;   // TITLE
	private String content; // CONTENT
	private Date regDate;   // REG_DATE
	private long hitCount;  // HIT_COUNT
	private long price;		// PRICE
	private String imgId;	// IMG_ID
	private int cartId;
}
