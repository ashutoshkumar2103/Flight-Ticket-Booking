<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
         *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        body{
          background-image: url("https://www.boeing.com/resources/boeingdotcom/defense/jadc2/jadc2-hero_1280x436.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
        }
        .row{
          display: flex;
          justify-content: center;
          margin-top: 100px;


        }
        .form-control{ 
            padding: 12px 100px; 
            margin: 15px;
            border: 1PX solid #3b71ca;
            border-radius: 5px;
            
        }
        .btn{
            padding: 12px 155px;
            margin: 15px;
            color: white;
           background-color: #3b71ca;
            border: 1PX solid #3b71ca;
            border-radius: 5px;
        }
        input{
          text-align: center;
        }
    </style>
</head>
<body>
<%
   String email=(String) request.getAttribute("invalidEmail");
   String pass=(String) request.getAttribute("invalidPassword");
%>
<jsp:include page="navbar.jsp"></jsp:include>
 <section class="vh-100">
        <div class="container">
          <div class="row">
            <div class="from">
              <form action="loginAdmin" method="post">
              <% if(email!=null) {%>
                 <h4 style="color: red;"><%=email %></h4>
                 <%} %>
                 <!-- Email input -->
                <div class="form-outline mb-4">
                  <input type="email" id="form1Example13" class="form-control" name="email" placeholder="Email address"/>
                </div>
                <% if(pass!=null) {%>
                <h4 style="color: red;"><%=pass%></h4>
                 <%} %>
                <!-- Password input -->
                <div class="form-outline mb-4">
                  <input type="password" id="form1Example23" class="form-control" name="password" placeholder="Password" />
                  
                </div>
      
          
      
                <!-- Submit button -->
                <div class="login" >
                 <input type="submit" class="btn" value="LOGIN">
                </div>
          
              </form>
            </div>
          </div>
        </div>
      </section> 
</body>
</html>