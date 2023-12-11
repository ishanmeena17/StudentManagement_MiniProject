<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

  <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            text-align: center;
        }
       form{
    height: 500px;
    width: 30%;
    box-shadow: 1px 1px 1px 2px gray;
    margin: auto;
    margin-top: 70px;
    transition: 500ms;
}
form:hover{
     height: 510px;
    width: 31%;
}
input{
    height: 50px;
    width: 250px;
    display: inline-block;
   margin-left: 90px;
    margin-top: 30px;
    border-radius: 10px;
    border: none;
    box-shadow: 1px 1px 1px black;
    transition: 500ms;

}
input:hover{
    height: 60px;
    width: 255px;
    box-shadow: 1px 1px 1px rgb(122, 122, 122);
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
         input[type="submit"]:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
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

<body>
 <nav>
       <h1>student Management</h1> 
         <a href="home_student.jsp"><div id="home">Home</div></a>
    </nav>
    <h1>Update Student Information</h1>
    
    <form action="update_student" >
       
        <input type="text" id="id" name="id" placeholder="enter id to update" value="">
      
        <input type="text" id="name" name="name" placeholder="enter new name">
     
        <input type="text" id="email" name="email" placeholder="enter  new email">
        <input type="submit" value="Update">
     </form>
     <div class="go-home">
            <a href="home_student.jsp">Go To Home</a>
     </div>
</body>


</html>