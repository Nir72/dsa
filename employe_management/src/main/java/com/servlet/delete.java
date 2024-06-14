package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.persistDAO;
import com.entity.employee;

@WebServlet("/delete")
public class delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));

		persistDAO pd = new persistDAO();
		employee e = pd.singleemp(id);
		if(e!=null) {
			pd.delete(e);
		}
		
		resp.sendRedirect("index.jsp");

	}

}
