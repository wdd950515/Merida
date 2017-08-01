package com.wdd.actions;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wdd.dao.UserDaoimpl;
import com.wdd.entity.Users;
import com.wdd.idao.IUserDao;

public class UserAction extends HttpServlet {
	
	IUserDao userDao = new UserDaoimpl();	
	Users user = new Users(); 
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
	String action=arg0.getParameter("action");
//	System.out.println(action);
	if("regist".equals(action)){
		doregist(arg0,arg1);
	}else if("exit".equals(action)){
		doexit(arg0,arg1);
	}
	else{
		dologin(arg0,arg1);
		}
	}
	
	
	private void doexit(HttpServletRequest arg0, HttpServletResponse arg1) {
		// TODO Auto-generated method stub
		arg0.getSession(true).invalidate();
		try {
			arg0.getRequestDispatcher("BikeAction").forward(arg0, arg1);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	protected void dologin(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		//post提交方式下解决中文乱码
		arg0.setCharacterEncoding("UTF-8");
		//get提交方式下解决中文乱码
		//username = new String(username.getBytes("ISO-8859-1"),"UTF-8");
		String username = arg0.getParameter("username");
		String password = arg0.getParameter("password");
		Users user = new Users();
		user.setUsername(username);
		user.setPassword(password);
		int num;
		try {
			Users user1 = userDao.login(user);
//			System.out.println(num);
			if (user1!=null) {
				arg0.getSession(true).setAttribute("user", user1);
				arg0.getRequestDispatcher("BikeAction").forward(arg0, arg1);
			} else {
				arg1.sendRedirect("regist.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	protected void doregist(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		arg0.setCharacterEncoding("UTF-8");
		String username=arg0.getParameter("username");	
		String password=arg0.getParameter("password");
		String relname=arg0.getParameter("relname");
		String sex=arg0.getParameter("sex");
		String tel=arg0.getParameter("tel");
		String address=arg0.getParameter("address");
		user.setUsername(username);
		user.setPassword(password);
		user.setRelname(relname);
		user.setSex(sex);
		user.setTel(tel);
		user.setAddress(address);
//		System.out.println(username+"aaaaaaaaaaaa");
		System.out.println(username+","+password+","+relname+","+sex+","+tel+","+address);
		int num;
		try {
			
			num=userDao.regist(user);
//			System.out.println(num);
			if(num>0){
				arg0.getRequestDispatcher("login.jsp").forward(arg0, arg1);
			}else{
				arg0.getRequestDispatcher("regist.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}


	
}
