<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
            body{
            /* background-image: url("https://www.boeing.com/resources/boeingdotcom/commercial/freighters/assets/images/boeing-freighter-family.jpg"); */
            background-color:gray;
            background-size: cover;
            background-repeat: no-repeat  
        }
        h2{
            text-align: center;
            font-size: 30px;
            
          }
          .admin-form{
            /* background-color: rgba(94, 97, 97, 0.5); */
            background-color: #ffffff;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
            border: 2px solid gainsboro;
            border-radius: 10px;
            height: 80vh;
            width: 700px;
            margin-left: 270px;
            margin-top: 30px; 
            
           
          }
          .input{
            padding: 10px;
            color: aliceblue;

          }
          input{
            text-align: center;
            font-size: 15px;
            font-family: Times New Roman;
            
            
          }
          .fill-up{
            padding: 20px 40px;
            border: 1px solid #2fa8df;
            border-radius: 5px;
            width: 400px;
           
          }
          .btn{
            padding: 20px 175px;
            margin: 15px 9px;
            color: white;
           background-color: #3b71ca;
            border: 1PX solid #3b71ca;
            border-radius: 5px;
            font-size: 20px;
            font-family: Times New Roman;
        }
        a{
        text-decoration: none;
        font-size: 20px;
        color: #3b71ca
        }
        span{
        font-size: 19px;
         margin-left: 10px;
        }
        .sign-up{
       
        }
        
        
    </style>
</head>
<body>
<%
String email=(String)request.getAttribute("userEmail");
String password=(String) request.getAttribute("userPassword");
%>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="admin-form">
        <form action="userLogin" method="post">
            <h2>Log in</h2> 
             <% if(email!=null){ %>
            <h4 style="color:red;"><%=email %></h4>
            
            <%} %>
            <div class="input">
                <input type="text" placeholder="Email" name="userEmail" class="fill-up">
            </div>
            
             <% if(password!=null){ %>
            <h4 style="color:red;"><%=password%></h4>
            
            <%} %>
             <div class="input"> 
            <input type="text" placeholder="Password" name="userPassword" class="fill-up">
             </div>

             <div class="sign" >
                <button type="submit" class="btn" >Log in </button>
                </div>
              <span class="sign-up">New User?</span> <a href="user-register.jsp" class="sign-up" id="">Sign Up</a>
            
        </form>    
        </div>
</body>
</html>