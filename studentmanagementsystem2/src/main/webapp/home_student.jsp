<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
  *{
        box-sizing: border-box;
        margin: 0%;
    }

    #main{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        align-items: center;
            background-color: #ffffff;
        box-shadow: 2px 2px 2px  grey;
        height: 400px;
        width: 350px;
       
        margin: auto;
        margin-top: 40px;
        
    }
    .blocks
    {
     text-decoration: none;
      width: 250px;
      height: 50px;
      
      color:white;
      background-image: radial-gradient( circle farthest-corner at 92.3% 71.5%,  rgba(83,138,214,1) 0%, rgba(134,231,214,1) 90% );
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      font-size: 25px;
      text-decoration: none;
      text-align: center;
   
      transition: 500ms;
      font-family: sans-serif;
     
    }
    .blocks:hover{
        background-image: linear-gradient( 109.6deg,  rgba(61,245,167,1) 11.2%, rgba(9,111,224,1) 91.1% );
        width: 300px;
      height: 70px;
      box-shadow: 1px 4px 6px rgba(1, 1, 1, 0.2);

    }
      #home{
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
    #home:hover{
        background: rgb(0, 0, 0);
        color: rgb(255, 255, 255);
        margin-top: 20px;
        height: 65px;
        width: 210px;

    }
       h1 {
  font-size: 72px;
  text-align:center;
  background: -webkit-linear-gradient(#eee, #333);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
nav{
    background-color: black;
    height: 150px;
    width: 100%;
      transition: 500ms;
}
nav:hover{
    height: 110px;
    box-shadow: 2px 2px 2px rgb(96, 96, 96);
    background-color: rgb(252, 252, 252);

}

    .container {
      width: 80%;
      margin: 50px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .welcome-message {
      background-color: #3498db;
      color: #fff;
      padding: 20px;
      border-radius: 8px;
    }

    #wel {
      margin-bottom: 20px;
      font-size: 36px;
      color:white;
    }

    p {
      font-size: 18px;
      line-height: 1.6;
    }

    .highlight {
      font-weight: bold;
    }
    a{
    text-decoration: none;
    color: white;
  
    }
   
</style>
<body>
    <nav>
       <h1>Student Management</h1> 
         <div id="home">Home</div>
    </nav>
     
  </div>
    <div id="main">
        <a href="add_student.jsp"><div id="add student" class="blocks">Add student</div></a>
        <a href="remove_student.jsp"><div id="remove students" class="blocks"> Remove Student</div></a>
        <a href="update_student.jsp"><div id="update student" class="blocks">Update student</div></a>
        <a href="search_student.jsp"><div id="see student" class="blocks"> View Student by id</div></a>
         <a href="get_allStudent.jsp"><div id="see student" class="blocks"> View ALL Student</div></a>
         <a href="get_studentbypattern.jsp"><div id="see student" class="blocks"> Student by pattern</div></a>
    </div>
</body>

</html>