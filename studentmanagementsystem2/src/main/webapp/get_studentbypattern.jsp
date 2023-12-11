<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="studentmanagementsystem2.student.Student"%>
    <%@page import="studentmanagementsystem2.jdbc.StudentJDBC"%>
<%@page import="studentmanagementsystem2.student.Student"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="get_studentsbypattern" method="post">

<input type="String" name="pattern" placeholder="enter pattern">

 <input id="submit" type  ="submit" value="get student">


</form>

    List<Student> students = studentJDBC.getAllStudents();
    
   

	<%
	    List<Student> students=(List<Student>)request.getAttribute("studentlist");
	  if (students != null && students.size() > 0) { %>
	    <div align="center">
	        <table>
	            <thead>
	                <tr>
	                    <th>ID</th>
	                    <th>Name</th>
	                    <th>Email</th>
	                   
	                </tr>
	            </thead>
	            <tbody>
	                <%
	                for (Student student : students) {
	                %>
	                <tr>
	                    <td><%= student.getId() %></td>
	                    <td><%= student.getName() %></td>
	                    <td><%= student.getEmail() %></td>
	                   
	                </tr>
	                <%
	                }
	                %>
	            </tbody>
	        </table>
	    </div>
	    <%
	    }
	    %>
	
	%>

</body>
</html>