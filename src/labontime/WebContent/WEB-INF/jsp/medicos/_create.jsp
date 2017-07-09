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
	<jsp:include page="../../../includes/head_layout.jsp"></jsp:include>

</head>

<body class="theme-adminflare main-menu-animated mmc animate-mm-sm animate-mm-md animate-mm-lg main-navbar-fixed animate-mm-sm animate-mm-md">

	<script>
		var init = [];
	</script>
	
	<!-- Demo script -->
	<script src="${pageContext.request.contextPath}/pixel/demo/demo.js"></script>
	<!-- / Demo script -->

	<div id="main-wrapper" style="margin-top:0px;">

		<jsp:include page="../../../includes/header.jsp"></jsp:include>
		<jsp:include page="../../../includes/menu.jsp"></jsp:include>
		
		<div id="content-wrapper">
			
			<div class="page-header padding-xs-vr">
				<div class="row">
					<h1 class="col-xs-12 col-sm-4 text-center text-left-sm text-primary"><i class="fa fa-home page-header-icon"></i>&nbsp;Médicos</h1>
					<div class="col-xs-12 col-sm-8">
						<div class="row">
							<hr class="visible-xs no-grid-gutter-h">
							<div class="pull-right col-xs-12 col-sm-auto"><a href="${pageContext.request.contextPath}/pacientes.html" class="btn btn-primary btn-labeled" id="${btnCreate}" style="width: 100%;"><span class="btn-label icon fa fa-plus"></span>Regresar</a></div>
							<div class="visible-xs clearfix form-group-margin"></div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-info" style="margin-bottom: 5px;">
						<div class="panel-heading">
							<span class="panel-title">Formulario de registro</span>
						</div>
						<!-- / .panel-heading -->
						<div class="panel-body padding-xs-vr no-margin ">
						
							<form action="#" method="post" id="find-interno-form">
								<div class="row" style="padding-top: 5px" >
			
									<div class="col-md-3">
										<label class="control-label no-margin-b">Nombres:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
									
									<div class="col-md-3">
										<label class="control-label no-margin-b">Apellido Paterno:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
									
									<div class="col-md-3">
										<label class="control-label no-margin-b">Apellido Materno:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
									
									<div class="col-md-3">
										<label class="control-label no-margin-b">Nro. documento:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
			
								</div>
								
								<div class="row" style="padding-top: 10px" >
								
									<div class="col-md-3">
										<label class="control-label no-margin-b">Ruc:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
									
									<div class="col-md-3">
										<label class="control-label no-margin-b">Dirección:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
									
									<div class="col-md-3">
										<label class="control-label no-margin-b">Teléfono:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
			
								</div>
								
								<div class="row" style="padding-top: 10px" >
								
									<div class="col-md-3">
										<label class="control-label no-margin-b">Usuario:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
									
									<div class="col-md-3">
										<label class="control-label no-margin-b">Clave:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="" class="form-control input-sm">
									</div>
			
									<div class="col-md-3">
										<label class="control-label no-margin-b">Estado</label>
										<select name="fFlag" id="fFlag" class="form-control input-sm">
											<option value="">[ Selecciona estado ]</option>
											<option value="1">ACTIVO</option>
											<option value="0">INACTIVO</option>
										</select>
									</div>
			
								</div>
								
								<div class="panel-footer text-right tab-content-padding">
									<button type="submit" class="btn btn-flat btn-labeled btn-primary" id="#" >
										<span class="btn-label icon fa fa-save"></span> Grabar
									</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
								</div>
							</form>
						</div>
					</div>
					<!-- / .panel -->
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="row" style="padding: 0px; margin: 0px;">
						
					</div>
				</div>
			</div>

		</div>
		
		<!-- AQUÍ CONTENIDO -->
		<div id="main-menu-bg"></div>
		
	</div>
	
	<jsp:include page="../../../includes/jquery_footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		init.push(function() {
			// Javascript code here
		})
		window.PixelAdmin.start(init);
	</script>
</body>
</html>