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
        margin: 0;
    }
nav{
    height: 100px;
    width: 100%;
    box-shadow: 2px 2px 2px rgb(56, 56, 56);
    background-color: rgb(255, 255, 255);
    transition: 500ms;
    font-size: 90px;
    text-align: center;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
   font-weight: 500;
   
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
#submit{
    height: 70px;
    width: 270px;
    display: inline-block;
   margin-left: 90px;
    margin-top: 30px;
    border-radius: 10px;
    background-color: rgb(255, 255, 255);
    color: rgb(100, 98, 98);
    transition: 500ms;
}
#submit:hover{
    height: 77px;
    width: 290px;
    background-color: black;
    color: white;
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
}
</style>

<body>
 <nav>
       <h1>student Management</h1> 
        <a href="home_student.jsp"> <div id="home">Home</div></a>
    </nav>

    <form action="add_student" method="post">
    <input type="text" name="id" placeholder="enter id" required>
        <input type="text" name="name" placeholder="enter name" required>
        
        <input type="text" name="email" placeholder="enter email" required>
        <input id="submit" type  ="submit" value="Add student">
    </form>
</body>
</html>