package com.wdd.actions;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wdd.dao.BikeDaoimpl;
import com.wdd.entity.Bikes;
import com.wdd.idao.IBikeDao;


	public class BikeAction extends HttpServlet {
	
		private static final long serialVersionUID = 1L;
		IBikeDao bikeDao = new BikeDaoimpl();

		@Override
		protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
				throws ServletException, IOException {
			String action = arg0.getParameter("action");
			
			if ("one".equals(action)) {
				DoSelectBikeById(arg0, arg1);
			} else if("two".equals(action)){
				DoSelectBikeByName(arg0, arg1);
			}else
			{
				DoSelectAllBike(arg0, arg1);
			}
		}

		protected void DoSelectAllBike(HttpServletRequest arg0,
				HttpServletResponse arg1) throws ServletException, IOException {
			try {
				List<Bikes> bikeList = bikeDao.selectAllBike();
				arg0.setAttribute("bikeList", bikeList);
				arg0.getRequestDispatcher("ShowAllBikes.jsp").forward(arg0, arg1);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		protected void DoSelectBikeByName(HttpServletRequest arg0,
				HttpServletResponse arg1) throws ServletException, IOException {
			String bikeName = arg0.getParameter("bikeName");
			try {
				 Bikes bike=bikeDao.selectBikeByName(bikeName);
				arg0.setAttribute("bike", bike); 
				arg0.getRequestDispatcher("ShowOneBike.jsp").forward(arg0, arg1);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		protected void DoSelectBikeById(HttpServletRequest arg0,
				HttpServletResponse arg1) throws ServletException, IOException {
			String bikeid = arg0.getParameter("bikeid");
			try {
				 Bikes bike=bikeDao.selectBikeById(Integer.parseInt(bikeid));
				arg0.setAttribute("bike", bike);
				arg0.getRequestDispatcher("ShowOneBike.jsp").forward(arg0, arg1);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

