package studentmanagementsystem2.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import studentmanagementsystem2.jdbc.StudentJDBC;

@WebServlet("/remove_student")
public class RemoveStudent extends HttpServlet {

    private static final long serialVersionUID = 1L;
    StudentJDBC studentJDBC = new StudentJDBC();

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        studentJDBC.removeStudent(id);
        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();
		resp.sendRedirect("home_student.jsp");
    }
}

