// 결제화면 Mapper  결제내용을 입력 및 삭제 이외에는 기능이 필요하지 않아서 insert, delete 메소드만 정의함.

package com.example.payment.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.payment.model.Payment;
import com.example.payment.model.PaymentAll;
import com.example.payment.model.PaymentCart;


@Mapper
public interface PaymentMapper {
	public int insert(Payment payment);
	public int insert_payCart(PaymentCart paymentCart);

	public List<PaymentAll> selectAll();
}
