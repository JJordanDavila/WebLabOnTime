		<!-- 2. $MAIN_NAVIGATION ===========================================================================
		Main navigation
		-->

		<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<div id="main-navbar" class="navbar navbar-inverse" role="navigation" style="margin-top:90px;">
			<!-- Main menu toggle -->
			<button type="button" id="main-menu-toggle">
				<i class="navbar-icon fa fa-bars icon"></i>
				<span class="hide-menu-text">HIDE MENU</span>
			</button>

			<div class="navbar-inner">
				<!-- Main navbar header -->
				<div class="navbar-header" style="text-align: right;">
				
					<!-- Logo -->
					<a href="${pageContext.request.contextPath}/home.html" class="navbar-brand">
						<div>
							<img alt="SISTEMA LAB ON TIME" src="${pageContext.request.contextPath}/pixel/demo/sousa.png?v=123456">
						</div>
					</a>

					<!-- Main navbar toggle -->
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar-collapse">
						<i class="navbar-icon fa fa-bars"></i>
					</button>

				</div>
				<!-- / .navbar-header -->

				<div id="main-navbar-collapse" class="collapse navbar-collapse main-navbar-collapse">
					<div>
						
						<ul class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath}/home.html">SISTEMA LAB ON TIME</a></li>
						</ul>
						
						<!-- / .navbar-nav -->
						
						<%
						SimpleDateFormat formato = new SimpleDateFormat("dd 'DE' MMMM 'DEL' yyyy", new Locale("ES"));
						SimpleDateFormat formato_short = new SimpleDateFormat("dd/MM/yyyy");
						Date diaActual = new Date();
						String fechaServidor = formato.format(diaActual);
						String fechaServidor_short = formato_short.format(diaActual);
						%>
		
						<div class="right clearfix">
							<ul class="nav navbar-nav pull-right right-navbar-nav">
								
								<li class="dropdown">
								<a href="#" class="dropdown-toggle user-menu" data-toggle="dropdown">
									<span><%="LIMA, "+fechaServidor.toUpperCase()%>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									 
									<%=session.getAttribute("AppUsuario") %></span>
								</a>

									<ul class="dropdown-menu">
											<li class="divider"></li>
											<li>
												<a href="${pageContext.request.contextPath}/logout.html">
												<i class="dropdown-icon fa fa-power-off"></i>&nbsp;&nbsp;CERRAR SESIÓN</a>
											</li>
									</ul>
								</li>
							</ul>
							<!-- / .navbar-nav -->
						</div>
						<!-- / .right -->
					</div>
				</div>
				<!-- / #main-navbar-collapse -->
			</div>
			<!-- / .navbar-inner -->
		</div>
		<!-- / #main-navbar -->
		<!-- /2. $END_MAIN_NAVIGATION -->
