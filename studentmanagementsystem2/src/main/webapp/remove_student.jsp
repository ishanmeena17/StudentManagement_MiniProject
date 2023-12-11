<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
         {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
        #container {
            width: 50%;
            margin: 20px auto;
            background-color: #f0f0f0;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #cccccc;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        input[type="text"] {
            width: calc(100% - 24px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            background-color: #ffffff;
        }
        input[type="submit"] {
            padding: 12px 24px;
            border: none;
            background-color: #007bff;
            color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
             background-color: #0056b3;
             transform: translateY(-2px);
             box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        input[type="submit"]:focus {
            outline: none;
        }
        input[type="submit"]:active {
            transform: translateY(1px);
        }
        .go-home {
            text-align: center;
            margin-top: 20px;
        }
        .go-home a {
            display: inline-block;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 4px;
            background-color: #007bff;
            color: #ffffff;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        }
        .go-home a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .go-home a:focus {
            outline: none;
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
        width: 110px;

    }
       h1 {
  font-size: 72px;
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
   a{
    text-decoration: none;
    color: white;
  
    }
       
    </style>
</head>
<body>
 <nav>
       <h1>student Management</h1> 
         <a href="home_student.jsp"><div id="home">Home</div></a>
    </nav>
    <div id="container">
        <h1>REMOVE STUDENT</h1>
        
       
        <form action="remove_student" method="post" id="removeForm">
          
                
                    <td><input type="text" id="removeId" name="id" placeholder="Enter id to remove"></td>
          
            <div style="text-align: center;">
                <input type="submit" value="Remove">
            </div>
        </form>

        <div class="go-home">
            <a href="home_student.jsp">Go To Home</a>
        </div>
    </div>
</body>

</html>