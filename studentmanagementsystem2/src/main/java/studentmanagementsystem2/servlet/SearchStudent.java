package studentmanagementsystem2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import studentmanagementsystem2.jdbc.StudentJDBC;
import studentmanagementsystem2.student.Student;

@WebServlet("/search_student")
public class SearchStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentJDBC studentJDBC = new StudentJDBC();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	int id = Integer.parseInt(request.getParameter("id"));
    	Student student = studentJDBC.searchStudent(id);
    	
    	request.setAttribute("student",student);
    	RequestDispatcher requestDispatcher = request.getRequestDispatcher("search_student.jsp");
    	requestDispatcher.forward(request, response);
    	
    	
    	
    	

    }
}
