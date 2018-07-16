package com.example.user.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	private int userId;
	private String email;
	private String password;
	
	public static String sendEmail(String email) {
		return email;
	}
}
