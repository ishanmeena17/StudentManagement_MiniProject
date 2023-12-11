<%@page import="studentmanagementsystem2.jdbc.StudentJDBC"%>
<%@page import="studentmanagementsystem2.student.Student"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to bottom, #fafafa 0%, #e0e0e0 100%);
    color: #333;
    margin: 0;
    padding: 0;
  }
  table {
    width: 70%;
    margin: 20px auto;
    border-collapse: collapse;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background: #fff;
    border-radius: 8px;
    overflow: hidden;
    transition: box-shadow 0.3s ease-in-out;
  }
  th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    color: #333;
  }
  th {
    background: blue;
    color: #fff;
    
  }
  tr{
  transition:500ms;
  }
 
  tr:hover {
  height:70px;
  width:1200px;
    background-color: dodger-blue;
    color:white;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
</style>
</head>
<body>
    <% 
    StudentJDBC studentJDBC = new StudentJDBC();
    List<Student> students = studentJDBC.getAllStudents();
    
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
</body>
</html>