<%--
  Created by IntelliJ IDEA.
  User: senemedar
  Date: 13/04/2021
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html lang="pl">
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Centrum dowodzenia</title>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
	<!-- top navbar -->
	<%@include file="top-nav.jspf" %>
	
	<!-- Navbar at the top of the page and sidebar -->
	<%@include file="sidebar.jspf" %>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		
		<!-- Main content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						
						<!-- column nr 1 -->
						<!-- list of classrooms card -->
						<%@include file="classroomList.jspf"%>

						<!-- list of subjects card -->
						<%@include file="subjectList.jspf"%>
					
					</div>
					<!-- /.col-lg-6 -->
					
					<div class="col-lg-6">
						
						<!-- column nr 2 -->
						<!-- list of students card -->
						<%@include file="studentList.jspf"%>
						
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
<%@include file="../dynamic/endOfBody.jspf" %>

</body>
</html>
