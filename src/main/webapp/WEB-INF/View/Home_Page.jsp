<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Registration Form</h1>
	<hr>
	<div align="center">
		<form:form action="Process_form" modelAttribute="userregisterdto">
			<label>Name :</label>
			<form:input path="name" />
			<br />

			<label>UserName :</label>
			<form:input path="userName" />
			<br />

			<label>Password :</label>
			<form:password path="password" />
			<br />

			<label>Country :</label>
			<form:select path="country">
				<form:option value="India" label="India"></form:option>
				<form:option value="USA" label="USA"></form:option>
				<form:option value="Europe" label="Europe"></form:option>
			</form:select>
			<br />

			<label>Hobbies :</label>
	          Reading:<form:checkbox path="hobbies" value="reading" />
	          Travelling:<form:checkbox path="hobbies" value="Travelling" />
	          Dancing:<form:checkbox path="hobbies" value="Dancing" />

			<br />
			<label>Gender :</label>
		Male:<form:radiobutton path="gender" value="male" />
		Female:<form:radiobutton path="gender" value="female" />
			<br />
			<input type="submit" value="register">
		</form:form>
	</div>
</body>
</html>