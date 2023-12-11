<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
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

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      padding: 10px;
      border: 1px solid #ccc;
    }

    th {
      background: linear-gradient(45deg, #3498db, #9b59b6);
      color: #fff;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #e0e0e0;
    }

    .highlight {
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>User Information</h1>
    <table>
      <tr>
        <th id="id">ID</th>
        <th id="name">Name</th>
        <th id="email">Email</th>
      </tr>
      <!-- <tr>
        <td>USR001</td>
        <td>John Doe</td>
        <td>johndoe@example.com</td>
      </tr>
      <tr>
        <td>USR002</td>
        <td>Jane Smith</td>
        <td>janesmith@example.com</td>
      </tr>
      <tr>
        <td>USR003</td>
        <td>Robert Johnson</td>
        <td>robert@example.com</td>
      </tr> -->
      <!-- Add more rows as needed -->
    </table>
  </div>
</body>

</html>