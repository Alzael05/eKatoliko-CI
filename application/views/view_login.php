	<?php
		defined('BASEPATH') OR exit('No direct script access allowed');
	 ?>

	<!DOCTYPE html>
	<?php
	// require 'Personnel_DetailBackend.php';
	// session_start();

	?>
	<html lang="en" class="body-full-height">
		<head>
			<title>eKatoliko - Web-based Service Scheduling and Collection Management System</title>

			<!-- META SECTION -->
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge" />
			<meta name="viewport" content="width=device-width, initial-scale=1" />

			<link rel="icon" href="img/favicon.png" type="image/x-icon" />
			<!-- END META SECTION -->

			<!-- CSS INCLUDE -->
			<link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
			<!-- EOF CSS INCLUDE -->
			<link rel="stylesheet" type="text/css" href="css/picker.css"/>
		</head>
	<body>

	<div class="login-container">

	<div class="login-box animated fadeInDown"
			style = "margin-top: 100px;"
			>
		<div class="login-body" >
			<div class="login-title" >
				<img src="img/favicon.png"
						style="width:5em; height:5em; "
						>
				<strong>Log In</strong> to your account
			</div>
			<form  class="form-horizontal" method="post">

				<div class="form-group" >
					<div class="col-md-12" >
						<div class="input-group" >
							<span class="input-group-addon" >
								<span class="fa fa-user" ></span>
							</span>
							<input type="text"
									class="form-control"
									id="email"
									name="email"
									placeholder=""
									/>
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="col-md-12">
						<div class="input-group">
							<span class="input-group-addon" >
								<span class="fa fa-key"></span>
							</span>
							<input type="password"
									class="form-control"
									id="password"
									name="password"
									placeholder="Password"
									/>
						</div>
					</div>
				</div>

				<div class="form-group" >
					<div class="col-md-6 pull-ri ght" >
						<button type="submit"
								class="btn btn-info btn-lg btn-block"
								id="btnLogin"
								name="btnLogin" >Log In
						</button>
					</div>
				</div>
			</form>
		</div>
		<div class="login-footer" >
			<div class="pull-left" >
				&copy; 2016 eKatoliko
			</div>
		</div>
	</div>

	</div>

	</body>
	</html>







