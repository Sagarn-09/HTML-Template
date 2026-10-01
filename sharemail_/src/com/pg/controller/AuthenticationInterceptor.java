package com.pg.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class AuthenticationInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String userAgent = request.getHeader("User-Agent");
		boolean mobileRequest = userAgent != null && (userAgent.contains("Mobile") || userAgent.contains("Android")
				|| userAgent.contains("Apache-HttpClient"));

		boolean ajaxRequest = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
		String uri = request.getRequestURI();

		if (request.getParameter("mm") != null) {
			request.getSession().setAttribute("mm", request.getParameter("mm"));
		}
		if (request.getParameter("ss") != null) {
			request.getSession().setAttribute("ss", request.getParameter("ss"));
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}
}