package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.persistDAO;
import com.entity.employee;
import com.entity.hobbbies;

@WebServlet("/update")
public class update extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String gender = req.getParameter("gender");
		long mobno = Long.valueOf(req.getParameter("mobno"));
		String dob = req.getParameter("dob");
		String address = req.getParameter("address");
		String[] hobbies = req.getParameterValues("hobbies");
		String job = req.getParameter("job");

		employee e = new employee();
		e.setId(id);
		e.setName(name);
		e.setEmail(email);
		e.setPassword(password);
		e.setGender(gender);
		e.setMobno(mobno);
		e.setDob(dob);
		e.setAddress(address);
		e.setJob(job);

		List<hobbbies> h = new ArrayList<>();
		for (String hob : hobbies) {
			hobbbies h1 = new hobbbies();
			h1.setName(hob);
			h.add(h1);
		}
		e.setHobbies(h);

		persistDAO pd = new persistDAO();
		pd.update(e);

		resp.sendRedirect("index.jsp");

	}
}
