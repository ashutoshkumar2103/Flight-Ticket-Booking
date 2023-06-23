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
            background-color:#4973e1;
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
            height: 85vh;
            width: 700px;
            margin-left: 270px; 
            margin-top: 25px;
            
           
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
            padding: 15px 40px;
            border: 1px solid #2fa8df;
            border-radius: 5px;
            width: 400px;
           
          }
          .btn{
            padding: 15px 132px;
            margin: 10px 9px;
            color: white;
           background-color: #3b71ca;
            border: 1PX solid #3b71ca;
            border-radius: 5px;
            font-size: 20px;
            font-family: Times New Roman;
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="admin-form">
        <form action="userRegister" method="post">
            <h2>Sign up</h2>
            <div class="input"> 
            <input type="text" placeholder="Name" name="username" class="fill-up">
            </div>

            <div class="input"> 
                <input type="number" placeholder="Phone" name="usermobile" class="fill-up">
                </div>
            
            <div class="input">
                <input type="text" placeholder="Email" name="useremail" class="fill-up">
            </div>
            
             <div class="input"> 
            <input type="text" placeholder="Password" name="userpassword" class="fill-up">
             </div>
              <div class="input"> 
            <input type="text" placeholder="Confirm password" name="confirmpassword" class="fill-up">
             </div>

             <div class="sign-up" >
                <button type="submit" class="btn" >Create an account</button>
                </div>
            
        </form>    
        </div>
</body>
</html>