<%@page import="com.entity.hobbbies"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.employee"%>
<%@page import="com.dao.persistDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>update page</h1>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	persistDAO pd = new persistDAO();
	employee e = pd.singleemp(id);

	List<String> hoby = new ArrayList<>();
	for (hobbbies h : e.getHobbies()) {
		hoby.add(h.getName());

	}
	%>


	<form action="update?id=<%= e.getId()%>" method="post">
		name: <input type="text" name="name" required="required"
			value="<%=e.getName()%>"><br> email; <input type="email"
			name="email" required="required" value="<%=e.getEmail()%>"><br>
		password:<input type="password" name="password" required="required"
			value="<%=e.getPassword()%>"><br> gender: <input
			type="radio" name="gender" value="male"
			<%=e.getGender().equals("male") ? "checked" : ""%>
			required="required">male<br> <input type="radio"
			name="gender" value="female" required="required"
			<%=e.getGender().equals("female") ? "checked" : ""%>>female<br>
		mobile no: <input type="number" name="mobno" required="required"
			value="<%=e.getMobno()%>"><br> dob: <input type="date"
			name="dob" required="required" value="<%=e.getDob()%>"><br>
		address:
		<textarea rows="5" cols="5" name="address"><%=e.getAddress()%></textarea>
		<br> hobbies: <input type="checkbox" name="hobbies"
			value="cricket" <%=hoby.contains("cricket") ? "checked" : ""%>>cricket
		<br> <input type="checkbox" name="hobbies" value="dance" <%=hoby.contains("dance") ? "checked":"" %>>dance<br>
		<input type="checkbox" name="hobbies" value="singing" <%=hoby.contains("singing")? "checked" : "" %>>singing<br>
		<input type="checkbox" name="hobbies" value="travelling" <%=hoby.contains("travelling")? "checked" : "" %> >travelling
		<br> job: <select name="job">
			<option value="">select job</option>
			<option value="web dev" <%=e.getJob().equals("web dev")? "selected" :"" %>>web dev</option>
			<option value="qa" <%=e.getJob().equals("qa")? "selected" :"" %>>qa</option>
			<option value="hr" <%=e.getJob().equals("hr")? "selected" :"" %>>hr</option>

		</select><br>

		<button type="submit">submit</button>
	</form>

</body>
</html>