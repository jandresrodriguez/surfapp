<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Surfapp</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

		<link href='http://fonts.googleapis.com/css?family=Roboto:300,100,400' rel='stylesheet' type='text/css'>
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
		<style type="text/css">
			body{
				font-family: 'Roboto', sans-serif;
			}
			.navbar{
				background-color:#00004c; 
				background-image: none; 
				color: #fff;
			}
			.logo{
				margin-top: 5px;
			}
			.wrapper{
				text-align: center;
			}

		</style>
	</head>
	<body>
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
		  <div class="container">
		    <img src="/surfapp/static/images/logo.png" height=40 class="logo">
		    surfapp
		  </div>
		</nav>
		<div class="wrapper">
			<g:layoutBody/>
			<r:layoutResources />
		</div>
		
	</body>
</html>
