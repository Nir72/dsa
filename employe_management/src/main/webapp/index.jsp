<%@page import="com.entity.employee"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.persistDAO"%>
<html>
<body>
	<!-- 	<h2>Hello World!</h2>
 -->
	<a href="register.jsp">
		<button>register employee</button>
	</a>

	<table border="1">
		<tr>
			<td>id</td>
			<td>name</td>
			<td>email</td>
			<td>password</td>
			<td>gender</td>
			<td>mobile no</td>
			<td>dob</td>
			<td>address</td>
			<td>hobbies</td>
			<td>job</td>
			<td>action</td>
		</tr>

		<%
		persistDAO pd = new persistDAO();

		List<employee> em = pd.employeeALL();
		for (employee employe : em) {
		%>
		<tr>
			<td><%=employe.getId()%></td>
			<td><%=employe.getName()%></td>
			<td><%=employe.getEmail()%></td>
			<td><%=employe.getPassword()%></td>
			<td><%=employe.getGender()%></td>
			<td><%=employe.getMobno()%></td>
			<td><%=employe.getDob()%></td>
			<td><%=employe.getAddress()%></td>
			<td><%=employe.getHobbies()%></td>
			<td><%=employe.getJob()%></td>
			<td><a href="update.jsp?id=<%=employe.getId() %>"><button>update</button></a> <a href="delete?id=<%=employe.getId() %>">
					<button>delete</button>
			</a></td>


		</tr>


		<%
		}
		%>


	</table>

</body>
</html>
