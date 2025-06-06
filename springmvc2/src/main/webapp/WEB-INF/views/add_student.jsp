<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* Global styles */
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f7fc;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	color: #333;
}

/* Form container */
div {
	background-color: #fff;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
	padding: 40px 60px;
	border-radius: 10px;
	width: 100%;
	max-width: 600px;
	text-align: center;
}

/* Table styling */
table {
	width: 100%;
	margin-top: 20px;
	border-collapse: collapse;
}

/* Table headers */
td {
	padding: 10px;
	font-size: 14px;
	text-align: left;
	color: #333;
}

/* Input field styling */
input[type="text"], input[type="email"] {
	width: 100%;
	padding: 12px;
	margin-top: 8px;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 14px;
	outline: none;
	transition: all 0.3s ease;
}

/* Input focus effect */
input[type="text"]:focus, input[type="email"]:focus {
	border-color: #4CAF50;
	box-shadow: 0 0 5px rgba(76, 175, 80, 0.3);
}

/* Radio button styling */
input[type="radio"] {
	margin-top: 10px;
}

/* Submit button styling */
input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 15px 25px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	width: 100%;
	margin-top: 20px;
	transition: background-color 0.3s ease;
}

/* Submit button hover effect */
input[type="submit"]:hover {
	background-color: #45a049;
}

/* Message styling */
h4 {
	font-size: 16px;
	color: #d32f2f;
	margin-top: 20px;
}

/* Label styling */
label {
	font-size: 14px;
	color: #333;
	margin-left: 10px;
	vertical-align: middle;
}

/* Responsive design */
@media screen and (max-width: 768px) {
	div {
		padding: 30px 40px;
		width: 90%;
	}
	input[type="text"], input[type="email"], input[type="submit"] {
		padding: 12px;
	}
	h4 {
		font-size: 14px;
	}
}

@media screen and (max-width: 480px) {
	div {
		padding: 20px 30px;
		width: 95%;
	}
	input[type="text"], input[type="email"], input[type="submit"] {
		font-size: 14px;
		padding: 10px;
	}
}
</style>
</head>
<body>
  <div align="center">
     <form action="./add-student" method="post">
     
        <table>
        <tr>
               <td>Name</td>
               <td><input   type="text" name="name" /></td>   
        </tr>
         <tr>
               <td>Email</td>
               <td><input   type="email" name="email" /></td>   
        </tr>
         <tr>
               <td>Mobile</td>
               <td><input   type="tel" name="mobile" /></td>   
        </tr>
        <tr>
               <td>Course</td>
               <td><input   type="radio" name="course" value="DEVELOPMENT" >
               <label>Development</label></td>   
        </tr>
        <tr>
               <td>Course</td>
               <td><input   type="radio" name="course" value="TESTING">
               <label>Testing</label></td>   
        </tr>
              
               
               
        </table>
        <input  type="submit"  value="ADD"/>
     </form>
     <% 
     String message = (String) request.getAttribute("message");
     if(message != null){
     %>
     <h4><%=message %></h4>
     <%
     }
     %>
  </div>
</body>
</html>