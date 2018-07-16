// 조가희 : 결제화면 Model
// Oracle에 올라와있는 PAYMENT_BOARD 테이블 내용을 바탕으로 작성함.
package com.example.payment.model;

import lombok.Data;

@Data
public class Payment {
	private int payId;				// PAY_ID
	private String name;			// NAME		
	private long creditCardNumber;	// CREADITCARD_NUMBER
	private int expMonth;			// EXP_MONTH
	private int expYear;			// EXP_YEAR
	private int cvc;				// CVC
	private String email;			// EMAIL
}


// Create table PAYMENT_BOARD(
// pay_id NUMBER(10,0) NOT NULL PRIMARY KEY,
// name VARCHAR2(20) NOT NULL,
// creditcard_number VARCHAR2(30) NOT NULL,
// exp_month NUMBER NOT NULL,
// exp_year NUMBER NOT NULL,
// cvc NUMBER NOT NULL,
//email VARCHAR2(30) NOT NULL,
// );
