package com.example.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.example.user.model.User;

@Component
public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String url = session.getServletContext().getContextPath();
		
		session.setAttribute("url", url);
		
		User user = (User) session.getAttribute("user");
		if (user == null) {			
			response.sendRedirect(url+ "/login");
			System.out.println("LoginInterceptor # preHandle() : NO PASS");
			return false;
		}
		System.out.println("LoginInterceptor # preHandle() : PASS");
		return true;
	}
}
