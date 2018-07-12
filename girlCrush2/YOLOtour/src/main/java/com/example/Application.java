package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.example.web.interceptor.LoginInterceptor;

@SpringBootApplication
public class Application extends WebMvcConfigurerAdapter{
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
	
	// 빈 컨테이너에 LoginInterceptor 자료형의 객체가 없다.
	@Autowired
	private LoginInterceptor loginInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loginInterceptor)
		.addPathPatterns("/notices/view/**")
		.addPathPatterns("/notices/write/**")
		.addPathPatterns("/notices/update/**")
		.addPathPatterns("/notices/delete/**")
		.addPathPatterns("/mypage/**");
	}
}
