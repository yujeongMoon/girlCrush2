// 조가희 : 결제화면 Model
// Oracle에 올라와있는 PAYMENT_BOARD 테이블 내용을 바탕으로 작성함.
package com.example.payment.model;

import lombok.Data;

@Data
public class Payment {
	private int payId;				// PAY_ID
	private String name;			// NAME
	private String email;			// EMAIL
	private String address;			// ADDRESS
	private String nameOnCard;	 	// NAME_ON_CARD
	private long creditCardNumber;	// CREADITCARD_NUMBER
	private int expMonth;			// EXP_MONTH
	private int expYear;			// EXP_YEAR
	private int cvc;				// CVC
	private int userId;				// USER_ID
}


// Create table PAYMENT_BOARD(
// pay_id NUMBER(10,0) NOT NULL PRIMARY KEY,
// name VARCHAR2(20) NOT NULL,
// email VARCHAR2(30) NOT NULL,
// address VARCHAR2(30) NOT NULL,
// name_on_card VARCHAR2(20) NOT NULL,
// creditcard_number VARCHAR2(30) NOT NULL,
// exp_month NUMBER NOT NULL,
// exp_year NUMBER NOT NULL,
// cvc NUMBER NOT NULL,
// user_id NUMBER NOT NULL
// );
