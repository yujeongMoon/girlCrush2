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

		StringBuffer requestURL = request.getRequestURL();
		if (request.getQueryString() != null) {
			requestURL.append("?").append(request.getQueryString());
		}

		String returnUrl = requestURL.toString();
		System.out.println("returnUrl = " + returnUrl);
		// returnUrl = http://localhost:8080/notices/view/5

		HttpSession session = request.getSession();
		session.setAttribute("url", returnUrl);

		User user = (User) session.getAttribute("user");

		if (user == null) {
			response.sendRedirect(session.getServletContext().getContextPath() + "/login");
			System.out.println("LoginInterceptor # preHandle() : NO PASS");
			return false;
		}
		System.out.println("LoginInterceptor # preHandle() : PASS");
		return true;
	}
}