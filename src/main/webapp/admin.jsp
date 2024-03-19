<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-Login</title>
<%@ include file="all_compo/allcss.jsp"%>
<style type="text/css">
.container-fluid {
	background: url("img/6.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	border-radius: 5px width:100%;
	height: 85vh;
}

.btn-sub {
	background: #7e57c2;
	width: 110px;
	position: relative;
	height: 40px;
	border-radius: 5px;
	top: 50%;
	left: 39%;
}

.btn-sub:hover {
	background-color: #323C53;
	transition: 0.7s;
}

.row .card-body {
	border-radius: 10px;
}
</style>
</head>
<body>
	<%@ include file="all_compo/navbar.jsp"%>

	<div class="container-fluid ">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card  mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-circle mt-2 fa-3x" aria-hidden="true"></i>
						<h4>Admin Login Page</h4>
					</div>


					<%
					String invalidMsg = (String) session.getAttribute("Admin-login-failed");

					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
					<%
					session.removeAttribute("Admin-login-failed");
					}
					%>
					<%
					String withoutLogin = (String) session.getAttribute("admin-Login-error");
					if (withoutLogin != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>

					<%
					session.removeAttribute("admin-login-error");
					}
					%>
					<%
					String lgMsg=(String)session.getAttribute("logoutMsg");
					if(lgMsg!=null)
					{%>
					<div class="alert alert-success" role="alert"><%=lgMsg%></div>
						
					<%
					session.removeAttribute("logoutMsg");
					}
					
					%>

					<div class="card-body">
						<form action="adminloginServlet" method="post">
							<div class="form-group">
								<label>Admin Email:</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="adminemail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="adminpassword">
							</div>
							<button type="submit" class="btn-sub text-white fa-1x">
								Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="all_compo/footer.jsp"%>
</body>
</html>