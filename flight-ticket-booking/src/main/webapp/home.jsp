<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        * {
          box-sizing: border-box;
          margin: 0;
          padding: 0;
        }
      
        .second {
          background-color: whitesmoke;
          display: flex;
      
        }
      
        .img {
          /* background-color: white; */
          height: 75]vh;
          width: 100vw;
          background-image: url("https://www.boeing.com/resources/boeingdotcom/commercial/assets/images/hero/hero-737-MAX-1500x529.jpg");
          background-repeat: no-repeat;
          background-size: contain;
        }
      
        .text {
          /* background-color: brown; */
          height: 80vw;
          width: 40vw;
        }
      
        .text span {
          /* background-color: blueviolet; */
          height: 50vh;
          display: flex;
          justify-content: center;
          align-items: center;
          font-size: 2vw;
          font-weight: bold;
          color: whitesmoke;
      
      
        }
      
        .text a button {
          background-color:#001b94;
          color: aliceblue;
          cursor: pointer;
          display: flex;
          margin-left: 8vw;
          font-size: 1.5rem;
          border-radius: 5px;
          text-decoration: none;
          padding: 10px 50px;
      
        }
      
        .text a {
          text-decoration: none;
        }
        
        .second a button {
        font-size: 2vw;}
</style>
</head>

<body>
<jsp:include page="navbar.jsp"></jsp:include>
<section class="second">
    
        <div class="img">
        
        <div class="text">
          <span>Start your journey with us. <br> Life is a journey, enjoy the flight</span>
          <a href="user-login.jsp"><button>Search flights</button></a>
        </div>
        </div>
  </section>
</body>
</html>
