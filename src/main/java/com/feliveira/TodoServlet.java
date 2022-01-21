package com.feliveira;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TodoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		RequestDispatcher rd = req.getRequestDispatcher("todo.jsp");
		rd.forward(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		HttpSession session = req.getSession();
		session.setAttribute("action", req.getParameter("action"));
		
		if(session.getAttribute("todoList") == null) {
			if(session.getAttribute("action").toString().equals("adicionar")) {
				if(req.getParameter("todo").length() >= 1) {
					session.setAttribute("todoList", req.getParameter("todo"));
				}
			}
		}
		else {
			if(session.getAttribute("action").toString().equals("adicionar")) {
				if(req.getParameter("todo").length() >= 1) {
					String todos = session.getAttribute("todoList").toString() + "," + req.getParameter("todo");
					session.setAttribute("todoList", todos);
				}
			}
			else {
				session.removeAttribute("todoList");
			}
			
			
		}
		
		doGet(req,res);
	}
	
		
}
