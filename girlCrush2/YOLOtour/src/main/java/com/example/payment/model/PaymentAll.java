package com.example.payment.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentAll {
	private int paycartId;
	private String title;
	private String email;
	private long price;
	
}
/*p.PAY_CART_ID, t.title, p.EMAIL, t.PRICE*/