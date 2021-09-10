<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%if("wrong".equals(msg)) 
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>

<form action="changeMobileNumberAction.jsp" metod="post">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" name="newMobileNumber" type="text" placeholder="Enter New Mobile Number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" name="password" type="text" placeholder="Enter Password" required>
<hr>

 <button class="button" type="submit"><i class='far fa-arrow-alt-circle-right'></i>Save</button>
</form>
</body>
<br><br><br>
</html>