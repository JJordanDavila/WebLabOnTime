<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>

<%
String menu0 = new String("");
String menu1 = new String("");
String menu2 = new String("");
String classMenuSub1 = new String("");
%>

<!-- 4. $MAIN_MENU =================================================================================
Main menu
-->
<c:set var="loadImg" value="&nbsp; &nbsp;<img src='${pageContext.request.contextPath}/pixel/images/plugins/bootstrap-editable/preloader.gif'>" />

<div id="main-menu" role="navigation" style="margin-top:90px;">
	<div id="main-menu-inner">
		<div class="menu-content top" id="menu-content-demo">
			<div style="display: block;">
				<div class="text-bg">
					<span class="">&nbsp;&nbsp;</span>
				</div>
				<div style="margin: 0 auto; text-align: center; color: #fff;display: block">
					<img src="${pageContext.request.contextPath}/pixel/demo/avatars/1.jpg" alt="" class="" id="imgUsuarios"><br/>
					<!-- <img src="${pageContext.request.contextPath}/pixel/images/weq.jpg" alt=""> -->
				</div>
				<!--  <a href="#" class="close">&times;</a> -->
			</div>
			<div class="row" style="text-align: center; color: #fff; display: block; margin-left: -36px;">
				<p><b><%=session.getAttribute("AppUsuario") %></b></p>
				<p>Perfil: <%=session.getAttribute("AppPerfil") %></p>
			</div>
		</div>
		
		<ul class="navigation">
			<!-- 
			<c:forEach items="${listmenu}" var="menu" varStatus="weq">
				<li><a href="${pageContext.request.contextPath}/${menu.nombreUrl}"><i class="menu-icon fa ${menu.nombreIcon}"></i><span class="mm-text">${menu.nombreModulo}</span></a></li>
			</c:forEach>
			-->
			
			<% if(session.getAttribute("AppPerfilId").equals("1")){ %>
				<li><a href="${pageContext.request.contextPath}/principalAdmin.html"><i class="menu-icon fa fa-desktop"></i><span class="mm-text">PRINCIPAL</span></a></li>
				<li><a href="${pageContext.request.contextPath}/laboratorios.html"><i class="menu-icon fa fa-hospital-o"></i><span class="mm-text">LABORATORIOS</span></a></li>
				<li><a href="${pageContext.request.contextPath}/analisis.html"><i class="menu-icon fa fa-gears"></i><span class="mm-text">ANÁLISIS</span></a></li>
			<%}else if(session.getAttribute("AppPerfilId").equals("2")){ %>
				<li><a href="${pageContext.request.contextPath}/principal.html"><i class="menu-icon fa fa-desktop"></i><span class="mm-text">PRINCIPAL</span></a></li>
				<li><a href="${pageContext.request.contextPath}/pacientes.html"><i class="menu-icon fa fa-wheelchair"></i><span class="mm-text">PACIENTES</span></a></li>
				<li><a href="${pageContext.request.contextPath}/medicos.html"><i class="menu-icon fa fa-user-md"></i><span class="mm-text">MEDICOS</span></a></li>
				<li><a href="${pageContext.request.contextPath}/solicitudes.html"><i class="menu-icon fa fa-list-ol"></i><span class="mm-text">SOLICITUDES</span></a></li>
			<% } %>
			<li><a href="${pageContext.request.contextPath}/logout.html" title="CERRAR SESIÓN"><i class="menu-icon fa fa-power-off"></i><span class="mm-text">CERRAR SESIÓN</span></a></li>
		</ul>
		<!-- / .navigation -->
			
	</div>
	<!-- / #main-menu-inner -->
</div>
<!-- / #main-menu -->
<!-- /4. $MAIN_MENU -->