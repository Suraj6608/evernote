<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
UserDetails user2 = (UserDetails) session.getAttribute("userD");

if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error","Please Login..");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home-Page</title>
<%@include file="all_compo/allcss.jsp" %>
</head>
<body>

<div class="container-fluid">
<%@include file="all_compo/navbar.jsp" %>
<div class="card py-5">
<div class="card-body text-center" >
<img alt="" src="img/home.jpg" class="img-fluid mx-auto" style="max-width:300px">
<h1>Start Taking Your NOTES</h1>
<a href="addnotes.jsp" class="btn btn-outline-primary">Lets Start</a>
</div>
</div>
</div>


<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="all_compo/footer.jsp" %>
</body>
</html>