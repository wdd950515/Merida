package com.wdd.filters;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckLoginFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest arg0 = (HttpServletRequest) request;
		HttpServletResponse arg1 = (HttpServletResponse) response;
		HttpSession session = arg0.getSession(true);
		// 获得项目根目录
		String path = arg0.getContextPath();
		// System.out.println(path);
		Object obj = session.getAttribute("user");
		if (obj == null) {
			PrintWriter out = arg1.getWriter();
			out.print("<script>");
			out.print("alert('您还没有登陆!!!');");
			out.print("location.href='" + path + "/login.jsp';");
			out.print("</script>");
		}

		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
