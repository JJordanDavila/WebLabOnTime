<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>

<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie9 gt-ie8"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="gt-ie8 gt-ie9 not-ie">
<!--<![endif]-->
<head>
	<jsp:include page="../../includes/head_layout.jsp"></jsp:include>

</head>

<body class="theme-adminflare main-menu-animated mmc animate-mm-sm animate-mm-md animate-mm-lg main-navbar-fixed animate-mm-sm animate-mm-md">

	<script>
		var init = [];
	</script>
	
	<!-- Demo script -->
	<script src="${pageContext.request.contextPath}/pixel/demo/demo.js"></script>
	<!-- / Demo script -->

	<div id="main-wrapper" style="margin-top:0px;">

		<jsp:include page="../../includes/header.jsp"></jsp:include>
		<jsp:include page="../../includes/menu.jsp"></jsp:include>
		
		<div id="content-wrapper">
			
			<div class="page-header padding-xs-vr">
				<div class="row">
					<h1 class="col-xs-12 col-sm-4 text-center text-left-sm text-primary"><i class="fa fa-home page-header-icon"></i>&nbsp;Principal</h1>
					<div class="col-xs-12 col-sm-8">
						<div class="row">
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="row" style="padding: 0px; margin: 0px;">

						<div class="col-md-2 marginRight">
							<div class="iconPanel"><i class="fa fa-wheelchair">&nbsp;</i></div>
							<h4 class="padding-sm no-padding-t padding-xs-hr"><a href="${pageContext.request.contextPath}/pacientes.html"><b>Pacientes</b></a></h4>
						</div>
						<div class="col-md-2 marginRight">
							<div class="iconPanel"><i class="fa fa-user-md">&nbsp;</i></div>
							<h4 class="padding-sm no-padding-t padding-xs-hr"><a href="${pageContext.request.contextPath}/medicos.html"><b>Médicos</a></b></h4>
						</div>
						<div class="col-md-2 marginRight">
							<div class="iconPanel"><i class="fa fa-list-ol">&nbsp;</i></div>
							<h4 class="padding-sm no-padding-t padding-xs-hr"><a href="${pageContext.request.contextPath}/solicitudes.html"><b>Solicitudes</b></a></h4>
						</div>						
					</div>
				</div>
			</div>

		</div>
		
		<!-- AQUÍ CONTENIDO -->
		<div id="main-menu-bg"></div>
		
	</div>
	
	<jsp:include page="../../includes/jquery_footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		init.push(function() {
			// Javascript code here
		})
		window.PixelAdmin.start(init);
	</script>
</body>
</html>