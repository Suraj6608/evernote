<%@page import="java.io.File"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img{
background:url("img/5.jpg");
background-repeat:no-repeat;
background-size:cover;
border-radius:1px
width:100%;
height:85vh;
}
.container-fluid .text-center .text{	
	font-size:70px;
}
.btn{
margin:5px;
display: inline-block;
  padding: 20px 30px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  border: 1px solid #3498db;
  border-radius: 5px;
  background-color: #7e57c2;
  color: #ffffff;
  cursor: pointer;
  transition: background-color 0.3s, color 0.3s, border-color 0.3s;
}
.btn:hover {
  background-color: #000000;
  border-color: #2980b9;
}
.btn:active {
  background-color: #1f618d;
  border-color: #1f618d;
}
.text-center .text{
margin:1px;
}
.text{
color:#212121;
}
.fa-user{
font-size:3px;
margin:3px;
padding:3px;
}
.fa-sign-in{
margin:3px;
padding:3px;
}
</style>
<meta charset="UTF-8">
<title>Index</title>
<%@ include file="all_compo/allcss.jsp" %>

</head>
<body>
<%@ include file="all_compo/navbar.jsp" %>

<!--  <%
	Connection conn=DBConnect.getConn();
	out.println(conn);
%>-->
<div class="container-fluid back-img">
<div class="text-center">
<h1 class="text"><br><br><br><br> <i class="fa fa-book" aria-hidden="true"></i>EverNote: Notes Organizer <br> Smart Way To Take Notes</h1><br>

<a href="login.jsp" class="btn"><i class="fa fa-user" aria-hidden="true"></i>Login</a>
<a href="register.jsp" class="btn"><i class="fa fa-sign-in" aria-hidden="true"></i>Register</a>
</div>
</div>
<%@ include file="all_compo/footer.jsp" %>
</body>
</html>