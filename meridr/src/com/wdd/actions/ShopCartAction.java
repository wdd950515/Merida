package com.wdd.actions;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wdd.idao.IBikeDao;
import com.wdd.dao.BikeDaoimpl;
import com.wdd.entity.Bikes;
import com.wdd.entity.ShopCart;

public class ShopCartAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IBikeDao bikeDao = new BikeDaoimpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String action = req.getParameter("action");
//		 System.out.println(action + "  ffff");
		// 根据参数不同，决定要执行的操作
		if ("del".equals(action)) {
			doDelete(req, resp);
		} else if ("clear".equals(action)) {
			doClear(req, resp);
		} else if ("update".equals(action)) {
			doUpdate(req, resp);
		}else{
			doBuy(req, resp);
		}
	}

	

	protected void doBuy(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String bikeid = req.getParameter("bikeid");
		try {
			HttpSession session = req.getSession(true);
			Bikes bike = bikeDao.selectBikeById(Integer.parseInt(bikeid));
			Object obj = session.getAttribute("cart");
			ShopCart cart;
			if (obj == null) {
				cart = new ShopCart();
			} else {
				cart = (ShopCart) obj;
			}
			
			Object obj2 = session.getAttribute("user");
			if (obj2 != null) {
				cart.addBike(bike);
			}
			session.setAttribute("cart", cart);
			resp.sendRedirect("admin/cart.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String bikeid = req.getParameter("bikeid");
		HttpSession session = req.getSession(true);
		ShopCart cart = (ShopCart) session.getAttribute("cart");
		cart.del(Integer.parseInt(bikeid));
		session.setAttribute("cart", cart);
		resp.sendRedirect("admin/cart.jsp");
	}

	protected void doClear(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		ShopCart cart = (ShopCart) session.getAttribute("cart");
		cart.clear();
		// session.setAttribute("cart", cart);
		// resp.sendRedirect("cart.jsp");
		PrintWriter out = resp.getWriter();
		out.print("<script>");
		out.print("alert('you have not buy anything!!!');");
		out.print("location.href='BikeAction';");
		out.print("</script>");
	}

	protected void doUpdate(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String bikeid = req.getParameter("bikeid");
		String num = req.getParameter("num");
		HttpSession session = req.getSession(true);
		ShopCart cart = (ShopCart) session.getAttribute("cart");
		cart.update(Integer.parseInt(bikeid), Integer.parseInt(num));
		session.setAttribute("cart", cart);
		resp.sendRedirect("admin/cart.jsp");
	}
}
