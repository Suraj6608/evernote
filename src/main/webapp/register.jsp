<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<%@ include file="all_compo/allcss.jsp"%>
<style type="text/css">
.container-fluid {
	background: url("img/5.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	border-radius: 5px width:100%;
	height: 85vh;
}

.btn-sub {
	text-color: white;
	background: #7e57c2;
	position: relative;
	height: 40px;
	border-radius: 5px;
	top: 50%;
	left: 41%;
}

.btn-sub:hover {
	background-color: white;
	transition: 0.7s;
}

.row .card-body {
	border-radius: 10px;
}
#pass{
	color: red;
}
</style>
<script>
    function validatePassword() {
      var password = document.getElementById('password').value;

      // Define your password validation criteria here
      var minLength = 8;
      var hasUpperCase = /[A-Z]/.test(password);
      var hasLowerCase = /[a-z]/.test(password);
      var hasNumbers = /\d/.test(password);

      // Check if the password meets the criteria
      if (password.length >= minLength && hasUpperCase && hasLowerCase && hasNumbers) {
        alert('Password is valid!');
      } else {
        alert('Password is invalid. Please follow the specified criteria.');
      }
    }
  </script>


</head>
<body>
	<%@ include file="all_compo/navbar.jsp"%>

	<div class="container-fluid ">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card  mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>


					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>Login<a href="login.jsp">Click here</a></div>
					<%
					session.removeAttribute("reg-success");
					}
					%>

					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");
					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=FailedMsg %></div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>
					
					<%
					String fillname=(String) session.getAttribute("fillname");
					if(fillname!=null){
					%>
					
					<div class="alert alert-danger" role="alert"><%=fillname%></div>
					<%
					session.removeAttribute("fillname");
					}
					%>
					
					
					<%
					String fillpass=(String) session.getAttribute("fillpass");
					if(fillpass!=null){
					%>
					
					<div class="alert alert-danger" role="alert"><%=fillpass%></div>
					<%
					session.removeAttribute("fillpass");
					}
					%>
					<div class="card-body">
						<form action="UserServlet" method="post">

							<div class="form-group">
								<label> Name:</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
							</div>
							<div class="form-group">
								<label> Email:</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1"> Password</label> <input
									type="password" class="form-control" id="exampleInputpassword1"
									name="upassword">
							</div>

							<center><button onclick="validatePassword()" type="submit" class="btn btn-success ">Register</button></center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="all_compo/footer.jsp"%>
</body>
</html>