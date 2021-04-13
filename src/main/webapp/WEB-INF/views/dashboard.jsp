<%--
  Created by IntelliJ IDEA.
  User: senemedar
  Date: 13/04/2021
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
	<%@include file="dynamic/header.jspf" %>
	<title>Centrum dowodzenia</title>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
	
	<!-- Navbar at the top of the page and sidebar -->
	<%@include file="dynamic/nav&sidebar.jsp"%>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0 text-dark">Centrum dowodzenia</h1>
					</div><!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Centrum dowodzenia</a></li>
							<!--              <li class="breadcrumb-item active">Starter Page</li>-->
						</ol>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->
		
		<!-- Main content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						<!-- column nr 1 -->
						
						<!-- Ta karta mogłaby pojawiać się, jeżeli nie ma klas ani uczniów -->
						<div class="alert alert-info alert-dismissible p-0">
							<div class="card-header">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								<h4 class="m-0">
									<i class="nav-icon fas fa-info-circle"></i>
									Informacja
								</h4>
							</div>
							<div class="card-body">
								
								<p class="card-text">
									Z poziomu tej strony możesz zarządzać swoim profilem.<br>
									Nie masz jeszcze dodanych żadnych klas ani uczniów.
									Wybierz czynność z rozwijanego menu po lewej stronie, aby skonfigurować klasę lub uczniów.
								</p>
							</div>
						</div>
					
					</div>
					<!-- /.col-lg-6 -->
					
					<div class="col-lg-6">
						<!-- column nr 2 -->
					
					</div>
					<!-- /.col-lg-6 -->
				</div>
				<!-- /.row -->
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
		<div class="p-3">
			<h5>Title</h5>
			<p>Sidebar content</p>
		</div>
	</aside>
	<!-- /.control-sidebar -->
	
	<!-- Main Footer -->
	<footer class="main-footer">
		<!-- To the right -->
		<div class="float-right d-none d-sm-inline">
			Anything you want
		</div>
		<!-- Default to the left -->
		<strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
	</footer>

</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@include file="dynamic/endOfBody.jspf" %>

</body>
</html>
