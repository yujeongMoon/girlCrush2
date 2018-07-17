package com.example.travelboard.model;

import lombok.Data;

@Data
public class TravelCart {
	private int cartId;       // CART_ID
	private long travelCartId;	  // TRAVEL_ID
	private String email;     // EMAIL
	
}


// Create table TRAVEL_CART(
// cart_id number(10,0) not null PRIMARY KEY,
// travel_id NUMBER(10,0) NOT NULL,
// user_id NUMBER(10,0) NOT NULL
// );