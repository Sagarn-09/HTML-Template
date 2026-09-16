package com.pg.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class AuthenticationInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		boolean mobileRequest = false;
		if (request.getHeader("User-Agent").indexOf("Mobile") != -1
				|| request.getHeader("User-Agent").contains("Android")
				|| request.getHeader("User-Agent").contains("Apache-HttpClient")) {
			mobileRequest = true;
		}

		boolean ajaxRequest = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
		String uri = request.getRequestURI();
		request.getSession().setAttribute("mm", request.getParameter("mm"));
	    request.getSession().setAttribute("ss", request.getParameter("ss"));
	
		if (ajaxRequest || mobileRequest || uri.contains("api") || uri.contains("resource")) {
			return true;
		} 
		
		return true;
	}
}