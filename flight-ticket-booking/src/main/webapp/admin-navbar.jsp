<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        <div><a href="home.jsp">Home</a></div>
        <div><a href="adminLogout">Logout</a></div>
        
</nav>
</body>
</html>