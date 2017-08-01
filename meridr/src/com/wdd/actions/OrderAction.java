package com.wdd.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wdd.dao.OrderDaoimpl;
import com.wdd.entity.ShopCart;
import com.wdd.entity.Users;

public class OrderAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		String action = arg0.getParameter("action");
		if ("commit".equals(action)) {
			doCommit(arg0, arg1);
		} else {
			arg1.sendRedirect("admin/order.jsp");
		}
	}

	protected void doCommit(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		String userid = arg0.getParameter("userid");
		String relname = arg0.getParameter("relname");
		String tel = arg0.getParameter("tel");
		String address = arg0.getParameter("address");
		Users user = new Users();
		user.setUserid(Integer.parseInt(userid));
		user.setRelname(relname);
		user.setTel(tel);
		user.setAddress(address);
		ShopCart cart = (ShopCart) arg0.getSession(true).getAttribute("cart");
		try {
			String orderId = new OrderDaoimpl().insertOrder(cart, user);
			arg0.setAttribute("orderId", orderId);
			arg0.getRequestDispatcher("admin/success.jsp").forward(arg0, arg1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
