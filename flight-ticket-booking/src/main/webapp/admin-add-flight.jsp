<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <style>
        body{
            background-image: url("https://www.boeing.com/resources/boeingdotcom/commercial/freighters/assets/images/boeing-freighter-family.jpg");
            background-size: cover;
            background-repeat: no-repeat  
        }
        h2{
            text-align: center;
          }
          .admin-form{
            background-color: rgba(94, 97, 97, 0.5);
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
            border: 2px solid #2fa8df;
            border-radius: 5px;
            height: 95vh;
            width: 800px;
            margin-left: 235px; 
            
           
          }
          .input{
            padding: 10px;
            color: aliceblue;

          }
          label{
            width: 200PX;
            display: inline-block;
            font-size: 20px;
          }
          input{
            text-align: center;
            
          }
          .fill-up{
            padding: 9px 40px;
            border: 1px solid #2fa8df;
            border-radius: 5px;
            width: 350px;
           
          }
          select{
            width: 350PX;
            height: 35PX;
            border: 1px solid #2fa8df;
            border-radius: 5px;
          }

    </style>
</head>
<body>
<jsp:include page="admin-navbar.jsp"></jsp:include>
    <div class="admin-form">
        <form action="admin-add-flight" method="post">
            <h2>Enter Flight Details</h2>
            <div class="input">
            <label class="label">Flight Number</label> 
            <input type="number" placeholder="Enter Flight Number" name="flight-number" class="fill-up">
            </div>
            
            <div class="input">
                <label class="label">Source</label>
                <input type="text" placeholder="Enter Source" name="source" class="fill-up">
            </div>
            
             <div class="input">
            <label class="label"> Destination</label> 
            <input type="text" placeholder="Enter Destination" name="destination" class="fill-up">
             </div>
            
            <div class="input"> 
              <label class="label">Departure Date</label> 
                <input type="date" placeholder="Enter Departure Date" name="departure-date" class="fill-up"></div>
            
             <div class="input">
                <label class="label">Departure Time</label>
                <input type="time" placeholder="Enter Departure Time" name="departure-time" class="fill-up"></div>
            
            <div class="input">
                <label class="label">Arrival Time</label> 
            <input type="time" placeholder="Enter Arrival time" name="flight-number" class="fill-up">
            </div>
            
           <div class="input">
            <label class="label">Price</label> 
            <input type="number"  name="flight-number" class="fill-up"> 
           </div>
            
           <div class="input">
            <label class="label">Flight Class</label>
            <select name=""   >
             <option value="">Select class</option>
             <option value="Economy">Economy</option>
             <option value="Bussiness" >Business</option>
           </div>
             
            </select>
            
        </form>    
        </div>

</body>
</html>