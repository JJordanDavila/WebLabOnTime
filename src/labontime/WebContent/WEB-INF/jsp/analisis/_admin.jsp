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
					<h1 class="col-xs-12 col-sm-4 text-center text-left-sm text-primary"><i class="fa fa-home page-header-icon"></i>&nbsp;Análisis</h1>
					<div class="col-xs-12 col-sm-8">
						<div class="row">
							<hr class="visible-xs no-grid-gutter-h">
							<div class="pull-right col-xs-12 col-sm-auto"><a href="${pageContext.request.contextPath}/analisis/create.html" class="btn btn-primary btn-labeled" id="${btnCreate}" style="width: 100%;"><span class="btn-label icon fa fa-plus"></span>Nuevo registro</a></div>
							<div class="visible-xs clearfix form-group-margin"></div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-info" style="margin-bottom: 5px;">
						<div class="panel-heading">
							<span class="panel-title">B&uacute;squeda de Análisis</span>
						</div>
						<!-- / .panel-heading -->
						<div class="panel-body padding-xs-vr no-margin ">
							<form action="" id="find-interno-form">
								<div class="row" style="padding-bottom: 5px" >
			
									<!-- form-group -->
			
									<div class="col-md-4">
										<label class="control-label no-margin-b">Nombre análisis:</label>
										<input type="text" name="fNombre" id="fNombre" placeholder="Nombre" class="form-control input-sm">
									</div>
			
									<div class="col-md-2">
										<label class="control-label no-margin-b">Estado</label>
										<select name="fFlag" id="fFlag" class="form-control input-sm">
											<option value="">[ Selecciona estado ]</option>
											<option value="1">ACTIVO</option>
											<option value="0">INACTIVO</option>
										</select>
									</div>
			
									<div class="col-md-1">
										<label class="control-label no-margin-b"> &nbsp; </label>
										<button type="submit" class="btn btn-success form-control input-sm" name="buscar" id="buscar">
											<span class="fa fa-search"></span>
										</button>
									</div>
									<div class="col-md-1">
										<label class="control-label no-margin-b lsearch"> &nbsp; </label>
										<button type="submit" class="btn btn-info form-control input-sm" name="refresh" id="refreshDT">
											<span class="fa fa-refresh"></span>
										</button>
									</div>
			
								</div>
							</form>
						</div>
					</div>
					<!-- / .panel -->
				</div>
			</div>
			
			
			<div class="table-light table-responsive" style="margin:0px; padding:0px;">

				<table class="table table-bordered table-striped table-hover table-condensed dataTable no-footer tbl-enero" id="jq-datatables-${nameModule}" width="100%">

					<thead style="display:table-header-group;">
						<tr>
							<th>#</th>
							<th>Análisis</th>
							<th>Descripción</th>
							<th>Fec. creación</th>
							<th>Estado</th>
							<th>Acciones</th>
						</tr>
					</thead>
					
						<tr>
							<td>1</td>
							<td>Análisis 1</td>
							<td>Descripción Análisis 1</td>
							<td>30/06/2017</td>
							<td>Activo</td>
							<td></td>
						</tr>
						<tr>
							<td>2</td>
							<td>Análisis 2</td>
							<td>Descripción Análisis 2</td>
							<td>30/06/2017</td>
							<td>Activo</td>
							<td></td>
						</tr>
						<tr>
							<td>3</td>
							<td>Análisis 3</td>
							<td>Descripción Análisis 3</td>
							<td>30/06/2017</td>
							<td>Activo</td>
							<td></td>
						</tr>
						<tr>
							<td>4</td>
							<td>Análisis 4</td>
							<td>Descripción Análisis 4</td>
							<td>30/06/2017</td>
							<td>Activo</td>
							<td></td>
						</tr>
						<tr>
							<td>5</td>
							<td>Análisis 5</td>
							<td>Descripción Análisis 5</td>
							<td>30/06/2017</td>
							<td>Activo</td>
							<td></td>
						</tr>
									
				</table>

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