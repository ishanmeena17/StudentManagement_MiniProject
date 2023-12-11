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
@WebServlet("/get_studentsbypattern")
public class GetStudentByPattern extends HttpServlet {
	StudentJDBC studentJDBC = new StudentJDBC();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pattern = req.getParameter("pattern");
		
		List<Student> studentlist = studentJDBC.getByPattern(pattern);
		req.setAttribute("studentlist",studentlist);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("get_studentbypattern.jsp");
    	requestDispatcher.forward(req, resp);
	
		
	}
	
	

}
