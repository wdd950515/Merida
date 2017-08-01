package com.wdd.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EncodingFilter implements Filter {
	private String encoding = "UTF-8";

	public void destroy() {

	}

	// ���ڵĹ��˷���----ֻ��post����������
	// ����get����----tomcat---server.xml---���ö˿ںŵĵط���� URIEncoding="UTF-8"
	/*
	 * <Connector URIEncoding="UTF-8" port="8080" protocol="HTTP/1.1"
	 * maxThreads="150" connectionTimeout="20000" redirectPort="8443" />
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest arg0 = (HttpServletRequest) request;
		HttpServletResponse arg1 = (HttpServletResponse) response;
		arg0.setCharacterEncoding(encoding);
		arg1.setCharacterEncoding(encoding);
		arg1.setContentType("text/html;charset=" + encoding);
		// �ù�������������ִ��
		chain.doFilter(request, response);
	}

	public void init(FilterConfig config) throws ServletException {
		String encoder = config.getInitParameter("encoder");
		// System.out.println(encoder);
		if (encoder != null) {
			encoding = encoder;
		}
	}

}
