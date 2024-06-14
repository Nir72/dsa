<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>registration page</h1>
	<form action="registration" method="post">
name:	<input type="text" name="name" required="required"><br>
email; <input type="email" name="email" required="required"><br>
password:<input type="password"  name="password" required="required"><br>
gender:	<input type="radio" name="gender" value="male" required="required">male<br>
		<input type="radio" name="gender" value="female" required="required">female<br>
mobile no: <input type="number" name="mobno" required="required"><br>
dob:		<input type="date" name="dob" required="required"><br>
address:	<textarea rows="5" cols="5" name="address"></textarea>	<br>
hobbies:	<input type="checkbox" name="hobbies" value="cricket">cricket <br>
			<input type="checkbox" name="hobbies" value="dance">dance<br>
			<input type="checkbox" name="hobbies" value="singing">singing<br>
			<input type="checkbox" name="hobbies" value="travelling">travelling <br>
			
			
			job: <select name="job">
					<option value="">select job</option>
						<option value="web dev">web dev</option>
						<option value="qa">qa</option>										
						<option value="hr">hr</option>
										
			</select><br>
		
			<button type="submit">submit</button>
	</form>
	
</body>
</html>