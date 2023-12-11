//package studentmanagementsystem2.servlet;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import studentmanagementsystem2.jdbc.StudentJDBC;
//@WebServlet("/add_student")
//public class AddStudent extends HttpServlet {
//	StudentJDBC studentJDBC = new StudentJDBC();
//
//	private static final long serialVersionUID = 1L;
//
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		int id = Integer.parseInt(req.getParameter("id"));
//		String name = req.getParameter("name");
//		String email = req.getParameter("email");
//		studentJDBC.addStudent(id, name, email);
//		resp.setContentType("text/html");
//		PrintWriter printWriter = resp.getWriter();
//		resp.sendRedirect("home_student.jsp");
//	}
//
//
//}
