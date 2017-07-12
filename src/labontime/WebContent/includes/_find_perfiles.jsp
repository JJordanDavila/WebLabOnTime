<%@page import="org.springframework.web.context.request.RequestAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-info panel-dark" style="margin-bottom: 0px;">
			<div class="panel-heading"><span class="panel-title lbp">BÚSQUEDA DE PERFILES</span></div>
			<div class="panel-body padding-xs-vr no-margin ">
				<form action="" id="find-${nameModule}">
					<div class="row" style="padding-bottom: 5px">
						<div class="col-md-3">
							<label class="control-label no-margin-b lb">NOMBRE</label>
							<input type="text" name="fNombre" id="fNombre" placeholder="Nombre" class="form-control input-sm iForm">
						</div>
						<div class="col-md-3">
							<label class="control-label no-margin-b lb">ESTADO</label>
							<select name="fEstado" id="fEstado" class="form-control iForm">
								<option value="">[ Seleccione un estado ]</option>
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
							<button type="submit" class="btn btn-info form-control input-sm" name="refresh" id="refreshSearch">
								<span class="fa fa-refresh"></span>
							</button>
						</div>
						<div class="col-md-4">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
function limpiarInputsRefresh() {
	$('input[type=text], textarea, select, input:radio, input:checkbox').val('');
	$('#jq-datatables-${nameModule}').dataTable().fnClearTable();
}

init.push(function(){
	$('#refreshSearch').click(limpiarInputsRefresh);
	$("#find-${nameModule}").validate({
		focusInvalid: true,
		submitHandler: function(form) {
			var query_string = $.param({"fNombre" : $("#fNombre").val(),"fEstado": $("#fEstado").val(),"buscar": ""});
			var ajax_source = "${pageContext.request.contextPath}/${linkBaseModule}/showAll.html?" + query_string;
			oTable<c:out value="${nameModule}" />.ajax.url(ajax_source).load();
		} 
	});
	$('#jq-datatables-${nameModule}_wrapper .dataTables_filter input').attr('placeholder', 'Buscar...');		
	$('.add-tooltip').tooltip();
	$("input[type=text]").keyup(function(){
		  $(this).val( $(this).val().toUpperCase() );
	});
});
</script>