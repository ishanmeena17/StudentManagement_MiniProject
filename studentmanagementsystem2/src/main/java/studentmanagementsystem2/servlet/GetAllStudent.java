package studentmanagementsystem2.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import studentmanagementsystem2.jdbc.StudentJDBC;
import studentmanagementsystem2.student.Student;
@WebServlet("/get_allStudent")
public class GetAllStudent extends HttpServlet {
	private StudentJDBC studentJDBC=new StudentJDBC();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Student> students=studentJDBC.getAllStudents();
		req.setAttribute("students",students);
    	RequestDispatcher requestDispatcher = req.getRequestDispatcher("get_allStudent.jsp");
    	requestDispatcher.forward(req, resp);
		
	}

}
