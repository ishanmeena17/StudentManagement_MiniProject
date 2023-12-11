package studentmanagementsystem2.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import studentmanagementsystem2.jdbc.StudentJDBC;
@WebServlet("/update_student")
public class UpdateStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentJDBC studentJDBC = new StudentJDBC();
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        studentJDBC.updateStudent(id, name, email);
        response.setContentType("text/html");
       
		PrintWriter printWriter = response.getWriter();
		response.sendRedirect("home_student.jsp");
        
    }}
