<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Josefin+Sans:wght@700&display=swap"
    rel="stylesheet">
  <style>   * {
          box-sizing: border-box;
          margin: 0;
          padding: 0;
        }
      
        .nav-bar {
          background-color: white;
          height: 8vh;
          display: flex;
          justify-content: space-around;
          align-items: center;
        }
      
        .nav-bar div a {
          text-decoration: none;
          font-size: 2vw;
          color: #021992;
      
        }
      
      
        .logo {
            width: 170px;
            height: 37px;
           float: right;
          background-image: url("https://www.boeing.com/assets/images/logo.png");
          background-repeat: no-repeat;
          background-size: cover;
        }
</style>
</head>
<body>
<nav class="nav-bar">
        <div class="logo"></div>
        <div><a href="user-login.jsp">User Login</a></div>
        <div><a href="admin-login.jsp">Admin Login</a></div>
        <div><a href="home.jsp">Home</a></div>
        
</nav>     
</body>
</html>