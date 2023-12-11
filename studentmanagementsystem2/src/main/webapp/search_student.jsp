<%@page import="studentmanagementsystem2.student.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
	text-decoration: none;
}

h1 {
	text-align: center;
}

form {
	text-align: center;
	margin-bottom: 20px;
}

input[type="text"], input[type="submit"] {
	padding: 10px;
	margin: 5px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

div {
	text-align: center;
	border: 1px solid #ccc;
	padding: 10px;
	border-radius: 5px;
	background-color: #f9f9f9;
}

h2 {
	margin-bottom: 10px;
}

p {
	margin: 5px 0;
	font-size: 10px;
	color: blue;
}

.go-home {
	text-align: center;
	margin-top: 20px;
}

.go-home a {
	display: inline-block;
	text-decoration: none;
	padding: 10px 20px;
	border-radius: 4px;
	background-color: #007bff;
	color: #ffffff;
	transition: background-color 0.3s ease, transform 0.3s ease, box-shadow
		0.3s ease;
}

.go-home a:hover {
	background-color: #0056b3;
	transform: translateY(-2px);
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.go-home a:focus {
	outline: none;
}

input[type="submit"] {
	padding: 12px 24px;
	border: none;
	background-color: #007bff;
	color: #ffffff;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #0056b3;
	transform: translateY(-2px);
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

#home {
	margin-top: 30px;
	height: 60px;
	width: 100px;
	margin-left: 1300px;
	background: rgb(190, 189, 189);
	color: rgb(1, 1, 1);
	border-radius: 5px;
	line-height: 50px;
	font-size: 30px;
	font-family: sans-serif;
	transition: 500ms;
	text-align: center;
}

#home:hover {
	background: rgb(0, 0, 0);
	color: rgb(255, 255, 255);
	margin-top: 20px;
	height: 65px;
	width: 110px;
}

h1 {
	font-size: 72px;
	background: -webkit-linear-gradient(#eee, #333);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

nav {
	background-color: black;
	height: 150px;
	width: 100%;
	transition: 500ms;
}

nav:hover {
	height: 110px;
	box-shadow: 2px 2px 2px rgb(96, 96, 96);
	background-color: rgb(252, 252, 252);
}

a {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
	<nav>
		<h1>student Management</h1>
		<a href="home_student.jsp"><div id="home">Home</div></a>
	</nav>
	<h1>Search Student</h1>
	<form action="search_student" method="post">
		<input type="text" name="id" placeholder="enter id"> <input
			type="submit" value="Search">
	</form>
	<br>

	<%
	Student student = (Student) request.getAttribute("student");
	if (student != null) {
	%>
	<div align="center">
		<table border="1px solid">
		<th>id</th>
			<th>name</th>
				<th>email</th>
		
			<tr>
				<td><%=student.getId()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
			</tr>
		</table>
		<%
		}
		%>
	</div>
	<div class="go-home">
		<a href="home_student.jsp">Go To Home</a>
	</div>

</body>


</html>