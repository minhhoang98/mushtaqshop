<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="COPY YOUR CLIENT ID HERE">

<title>Login</title>

<!-- Custom fonts for this template-->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body
	style="background-image: url('resources/image/backgroundLogin.jpg');">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row" style="background: gray;">
							<div class="col-lg-6 d-none d-lg-block bg-login-image">
								<img
									src="<%=request.getContextPath()%>/resources/image/logoLogin.png"
									width="500" height="500">

							</div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Welcome</h1>
									</div>
									<form name="myForm" action="xacnhan" method="post"
										onsubmit="return validateForm()" class="user">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												name="username" placeholder="Enter username Address...">
										</div>

										<div class="form-group">
											<input type="password" name="password"
												class="form-control form-control-user"
												id="exampleInputPassword" placeholder="Password">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<p class="text-danger">${msg}</p>
											</div>
										</div>
										<div class="text-center">
											<button type="submit" class="btn btn-primary">Login
											</button>
										</div>

										<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
										<img id="myImg"><br>
										<p id="name"></p>
										<div id="status"></div>

									</form>
									<div></div>
									<hr>
									<div class="fb-login-button" data-width="" data-size="medium"
										data-button-type="login_with" data-layout="rounded"
										data-auto-logout-link="true" data-use-continue-as="false"></div>
									<div id="fb-root"></div>
									<script async defer crossorigin="anonymous"
										src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=831862667293585&autoLogAppEvents=1"></script>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>
	<script type="text/javascript">
		function validateForm() {
			var name = document.forms["myForm"]["username"].value;
			var a = document.forms["myForm"]["password"].value;

			if (name == "") {
				alert("Username can not be blank ");
				return false;
			}
			if (a == "") {
				alert("Password can not be blank");
				return false;
			}

			return true;
		}
	</script>
	<script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp?              
      email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
   </script>
	<button onclick="myFunction()">Sign Out</button>
	<script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>

</body>

</html>
