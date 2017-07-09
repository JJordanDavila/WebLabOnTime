<%
response.setHeader("Cache-Control","no-store"); 
HttpSession sesion = request.getSession();
System.out.println("AppID: " + sesion.getAttribute("AppID"));
if( session.getAttribute("AppID") == null){
	//response.sendRedirect( "/app_antecedentes/index.html" );
%>
<jsp:forward page="/index.html">
	<jsp:param name="error" value="Usuario y/o clave incorrectos. <br>Vuelve a intentarlo."/>
</jsp:forward>
<% 
}
%>
	<meta charset="utf-8">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>SISTEMA LAB ON TIME</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

	<!-- Open Sans font from Google CDN -->
	
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300&subset=latin" rel="stylesheet" type="text/css">
	
	<!-- Pixel Admin's stylesheets -->
	<link href="${pageContext.request.contextPath}/pixel/stylesheets/bootstrap.min.css?v=2" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/pixel/stylesheets/pixel-admin.min.css?v=4" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/pixel/stylesheets/widgets.min.css?v=2" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/pixel/stylesheets/pages.min.css?v=2" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/pixel/stylesheets/rtl.min.css?v=2" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/pixel/stylesheets/themes.min.css?v=2" rel="stylesheet" type="text/css">
	
	<link href="${pageContext.request.contextPath}/pixel/stylesheets/styles.css?v=44" rel="stylesheet" type="text/css">
	
	<script src="${pageContext.request.contextPath}/pixel/javascripts/functionsw.js?v=2"></script>
		
	<!-- Get jQuery from Google CDN -->
	<jsp:include page="/includes/jquery.jsp"></jsp:include>

	<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/pixel/javascripts/ie.min.js"></script>
	<![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/sousa.png?v=123456">
    <!-- 
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/pixel/images/pixel-admin/apple-touch-icon-114x114.png">
	 -->

	<style type="text/css" title="currentStyle">
	   @import "${pageContext.request.contextPath}/pixel/libs/DataTables-1.10.2/extensions/TableTools/css/dataTables.tableTools.min.css?v=3";
	</style>

	<style>
		input:focus,textarea:focus,select:focus,input[type="radio"]:focus,input[type="checkbox"]:focus{
    		background-color: #FFFFCC;
		}
	</style>
	<script>
	
	$(function () {
		$('input[type="text"], textarea').keyup(function(){
			  $(this).val( $(this).val().toUpperCase() );
		});
	});
	
	/*
	$(document).ready(function () {
		    $('input[type="text"],textarea,select,input:radio,input:checkbox').each(function() {
		    	if ( this.value === '' ) {
			        this.focus();
			        $(this).css({ 'background': '#FFFFCC' });
			        return false;
		       	}
		     });
    });
	*/
	
	$("#tabIdMultiple" ).on( "click", function() {
		  //console.log( $( this ).text() );	
		  alert("Multiples");
		  //$('#txtDescripcionE').focus();
		  $("#txtDescripcionE").focus();
		/*
		$('#bs-tabdrop-pill2 input[type="text"],textarea,select,input:radio,input:checkbox').each(function() {
		    if ( this.value === '' ) {
		        this.focus();
		        return false;
		       }
		});
		*/
		  
	});
	</script>