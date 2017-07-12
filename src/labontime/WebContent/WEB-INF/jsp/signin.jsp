<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
/*
HttpSession sessionnn = request.getSession();
if(sessionnn.getAttribute("AppID")=="" || sessionnn.getAttribute("AppID")==null){
	String redirectURL2 = "http://10.4.2.45:8050/sistema_aj/index.html";
	response.sendRedirect(redirectURL2);
}else{
	String redirectURL = "http://10.4.2.45:8050/sistema_aj/home.html";
	response.sendRedirect(redirectURL);
}*/
%>
<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="gt-ie8 gt-ie9 not-ie">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>SISTEMA APP</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<!-- Open Sans font from Google CDN -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin"
	rel="stylesheet" type="text/css">

<!-- Pixel Admin's stylesheets -->
<link href="${pageContext.request.contextPath}/pixel/stylesheets/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/pixel/stylesheets/pixel-admin.min.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/pixel/stylesheets/pages.min.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/pixel/stylesheets/rtl.min.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/pixel/stylesheets/themes.min.css" rel="stylesheet"
	type="text/css">

<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/pixel/javascripts/ie.min.js"></script>
	<![endif]-->
<style>
#signin-demo {
	position: fixed;
	right: 0;
	bottom: 0;
	z-index: 10000;
	background: rgba(0, 0, 0, .6);
	padding: 6px;
	border-radius: 3px;
}

#signin-demo img {
	cursor: pointer;
	height: 40px;
}

#signin-demo img:hover {
	opacity: .5;
}

#signin-demo div {
	color: #fff;
	font-size: 10px;
	font-weight: 600;
	padding-bottom: 6px;
}
</style>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/sousa.png">
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/apple-touch-icon-114x114.png">
</head>

<body class="theme-adminflare page-signin">
	<script>
		var init = [];
	</script>
	<script src="${pageContext.request.contextPath}/pixel/demo/demo.js"></script>
	<div id="page-signin-bg">
		<div class="overlay"></div>
		<img src="${pageContext.request.contextPath}/pixel/demo/signin-bg-1.jpg" alt="">
	</div>
	
	<div class="signin-container">
	
		<div class="signin-info" style="margin: 0 auto; text-align: center;">
			<a href="index.html" class="logo text-center" style="margin: 0 auto; text-align: center;"><img src="${pageContext.request.contextPath}/pixel/demo/sousa.png?v=123456" alt="" style="margin-top: -5px; margin: 0 auto; text-align: center;"> </a>
			<div class="logo" style="margin: 0 auto; text-align: center; font-size: 17px; margin-top: 10px;">LAB ON TIME</div>
			<div class="slogan text-center" style="font-size: 18px; font-weight: 500; margin-top: 10px;">Sistema Lab</div>
		</div>
		<!--
		<div class="signin-info">
			<a href="index.html" class="logo text-center"><img src="${pageContext.request.contextPath}/pixel/demo/inpe.png" alt="" style="margin-top: -5px;">&nbsp; :: INPE :: </a>
			<div class="slogan text-center">Sistema de Antecedentes Judiciales</div>
		</div>
		-->
		<div class="signin-form">
		
			<form action="${pageContext.request.contextPath}/logeo.html" id="signin-form_id" method="post">
			
				<div class="signin-text"><span>Acceso al sistema</span></div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="row no-padding-t no-border-t">
							<div class="col-xs-12">
								<div class="form-group no-padding-t no-border w-icon">
									<label class="control-label no-margin-b">Usuario:</label>
									<input type="text" name="txtLogin" id="txtLogin" class="form-control input-lg" autocomplete="off" placeholder="Ingrese su usuario">
									<span class="fa fa-user signin-form-icon"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-top: 10px;">
					<div class="col-md-12">
						<div class="row no-padding-t no-border-t">
							<div class="col-xs-12">
								<div class="form-group no-padding-t no-border w-icon">
									<label class="control-label no-margin-b">Contraseña:</label>
									<input type="password" name="txtClave" id="txtClave" class="form-control input-lg" autocomplete="off" placeholder="Ingrese su clave">
									<span class="fa fa-lock signin-form-icon"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="form-actions">
					<button class="btn btn-lg btn-labeled btn-danger">Ingresar al sistema</button>
					<!-- <a href="#" class="forgot-password" id="forgot-password-link" style="text-align: right; float: right; margin-top: 10px;">¿Olvidó su contraseña?</a> -->
				</div>
				
				<div class="msg-error" style="color: red; margin-top: 10px;">
					${errorg}
				</div>
			</form>
			
			<div class="password-reset-form" id="password-reset-form">
				<div class="header">
					<div class="signin-text">
						<span>Password reset</span>
						<div class="close">&times;</div>
					</div>
				</div>
				
				<form action="index.html" id="password-reset-form_id">
					<div class="form-group w-icon">
						<input type="text" name="password_reset_email" id="p_email_id"
							class="form-control input-lg" placeholder="Ingresa tu email">
						<span class="fa fa-envelope signin-form-icon"></span>
					</div>
					<div class="form-actions">
						<input type="submit" value="Enviar link de RESET PASSWORD"
							class="signin-btn bg-primary">
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Get jQuery from Google CDN -->
	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery
				|| document
						.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js">'
								+ "<"+"/script>");
	</script>
	<!-- <![endif]-->
	<!--[if lte IE 9]>
	<script type="text/javascript"> window.jQuery || document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">'+"<"+"/script>"); </script>
	<![endif]-->

	<!-- Pixel Admin's javascripts -->
	<script src="${pageContext.request.contextPath}/pixel/javascripts/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/pixel/javascripts/pixel-admin.min.js"></script>

	<script type="text/javascript">
		// Resize BG
		init.push(function() {
			var $ph = $('#page-signin-bg'), $img = $ph.find('> img');

			$(window).on('resize', function() {
				$img.attr('style', '');
				if ($img.height() < $ph.height()) {
					$img.css({
						height : '100%',
						width : 'auto'
					});
				}
			});
		});

		// Show/Hide password reset form on click
		init.push(function() {
			$('#forgot-password-link').click(function() {
				$('#password-reset-form').fadeIn(400);
				return false;
			});
			$('#password-reset-form .close').click(function() {
				$('#password-reset-form').fadeOut(400);
				return false;
			});
		});

		// Setup Sign In form validation
		init.push(function() {
			$("#signin-form_id").validate({
				focusInvalid : true,
				errorPlacement : function() {
				}
			});

			// Validate materno
			$("#txtLogin").rules("add", {
				required : true,
				minlength : 6
			});
			
			// Validate username
			/*$("#username_id").rules("add", {
				required : true,
				minlength : 3
			});*/

			// Validate password
			$("#txtClave").rules("add", {
				required : true,
				minlength : 6
			});
		});

		// Setup Password Reset form validation
		init.push(function() {
			$("#password-reset-form_id").validate({
				focusInvalid : true,
				errorPlacement : function() {
				}
			});

			// Validate email
			$("#p_email_id").rules("add", {
				required : true,
				email : true
			});
		});

		window.PixelAdmin.start(init);
	</script>

</body>
</html>
