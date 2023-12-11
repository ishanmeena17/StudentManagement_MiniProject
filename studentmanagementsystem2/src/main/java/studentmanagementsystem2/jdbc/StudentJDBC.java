package studentmanagementsystem2.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.connector.Response;

import studentmanagementsystem2.student.Student;

public class StudentJDBC {
	private Connection connection;
	private PreparedStatement preparedStatement;
	private ResultSet resultSet;
	private String query;
	
   ArrayList<Student> students =new ArrayList<Student>();
   ArrayList<Student> studentslist=new ArrayList<Student>();
   
	
  

	private void openConnection() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmanagementsystem2", "root",
					"Indore@123");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	private void closeConnection() throws SQLException {
		if (connection != null) {
			connection.close();
		}
		if (preparedStatement != null) {
			preparedStatement.close();
		}
		if (resultSet != null) {
			resultSet.close();
		}
	}

	public void addStudent(int id, String name, String email) {
		try {
			openConnection();
			query = "INSERT INTO student2 VALUES(?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, email);
			int res = preparedStatement.executeUpdate();
			System.out.println(res + " row(s) affected.");
			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	 public void removeStudent(int id) {
	        try {
	            openConnection();
	            query = "DELETE FROM student2 WHERE id = ?";
	            preparedStatement = this.connection.prepareStatement(query);
	            preparedStatement.setInt(1, id);
	            int rowsAffected = preparedStatement.executeUpdate();

	            System.out.println(rowsAffected + " row(s) deleted.");

	            closeConnection();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	   
	    public Student searchStudent(int id) {
	    	 Student student = null;
	        try {
	            openConnection();
	           
	            query = "SELECT * FROM student2 WHERE id = ?";
	            
	            preparedStatement = connection.prepareStatement(query);
	            preparedStatement.setInt(1, id);
	            
	            resultSet = preparedStatement.executeQuery();
	            if(resultSet.next()) {
	                student=new Student();
	            	student.setId(resultSet.getInt(1));
	            	student.setName(resultSet.getString(2));
	            	student.setEmail(resultSet.getString(3));
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return student;
	    }
	    public void updateStudent(int id, String name, String email) {
	        try {
	            openConnection();
	            query = "UPDATE student2 SET name = ?, email = ? WHERE id = ?";
	            preparedStatement =connection.prepareStatement(query);
	            preparedStatement.setString(1, name);
	            preparedStatement.setString(2, email);
	            preparedStatement.setInt(3, id);

	            int rowsAffected = this.preparedStatement.executeUpdate();

	            System.out.println(rowsAffected + " row(s) updated.");

	            this.closeConnection();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    public  List<Student> getAllStudents() {
	    	try {
	    		openConnection();
	    		query="SELECT * FROM student2";
	    		preparedStatement =connection.prepareStatement(query);
	    		resultSet= preparedStatement.executeQuery();
	    		while(resultSet.next()) {
	    			Student student =new Student();
	    			student.setId(resultSet.getInt(1));
	    			student.setName(resultSet.getString(2));
	    			student.setEmail(resultSet.getString(3));
	    			students.add(student);
	    		}
	    		
				
			} catch (Exception e) {
				// TODO: handle exception
			}
	    	return students;
	    	
	    }
	    
	    public List<Student> getByPattern(String pattern) {
	    	openConnection();
	    	
	    	try {
	    		openConnection();
		    	query="SELECT * FROM student2 WHERE name LIKE %'?'%";
				preparedStatement =connection.prepareStatement(query);
				preparedStatement.setString(1, pattern);
				resultSet= preparedStatement.executeQuery();
				while(resultSet.next()) {
	    			Student student =new Student();
	    			student.setId(resultSet.getInt(1));
	    			student.setName(resultSet.getString(2));
	    			student.setEmail(resultSet.getString(3));
	    			studentslist.add(student);
	    		}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	return studentslist;
	    }
	    
	   

}
