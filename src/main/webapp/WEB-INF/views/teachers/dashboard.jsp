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
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Centrum dowodzenia</title>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
	<!-- top navbar -->
	<%@include file="../dynamic/top-nav.jsp"%>
	<!-- /.navbar -->
	
	<!-- Navbar at the top of the page and sidebar -->
<%--	<%@include file="../dynamic/sidebar.jsp"%>--%>
	
	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="index3.html" class="brand-link bg-olive text-center">
			<i class="nav-icon fas fa-chalkboard-teacher"></i>
			<span class="brand-text ml-1">${teacher.firstName} ${teacher.lastName}</span>
		</a>
		
		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			
			<!-- Sidebar Menu (on the left) -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true">
					
					<!-- List of classrooms -->
					<li class="nav-item has-treeview mt-2">
						<a href="#" class="nav-link bg-secondary">
							<i class="nav-icon fas fa-chalkboard"></i>
							<p>
								Twoje klasy
								<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<c:forEach items="${classroomList}" var="classRoom">
								<li class="nav-item">
									<a href="#" class="nav-link">
										<i class="fas fa-minus nav-icon"></i>
										<p>${classRoom.classroomName}</p>
									</a>
								</li>
							</c:forEach>
							
							<li class="nav-item">
								<a href="/addClassroom/${teacher.id}" class="nav-link">
									<i class="fas fa-plus-circle nav-icon"></i>
									<p>Dodaj klasę</p>
								</a>
							</li>
						</ul>
					</li>
					
					<li class="nav-item has-treeview mt-2">
						<a href="#" class="nav-link bg-danger">
							<i class="nav-icon fas fa-user-graduate"></i>
							<p>
								Twoi uczniowie
								<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="#" class="nav-link">
									<i class="fas fa-plus-circle nav-icon"></i>
									<p>Dodaj ucznia</p>
								</a>
							</li>
						</ul>
					</li>
					
					<li class="nav-item has-treeview mt-2">
						<a href="#" class="nav-link bg-warning">
							<i class="nav-icon fas fa-list text-white"></i>
							<p>
								Twoje przedmioty
								<i class="right fas fa-angle-left"></i>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="#" class="nav-link">
									<i class="fas fa-plus-circle nav-icon"></i>
									<p>Dodaj przedmiot</p>
								</a>
							</li>
						</ul>
					</li>
					
					<li class="nav-item bg-success rounded mt-2">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-star-half-alt"></i>
							<p>Oceny</p>
						</a>
					</li>
					
					<li class="nav-item bg-indigo rounded mt-2">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-calendar-alt"></i>
							<p>Kalendarz</p>
						</a>
					</li>
					
					<!--
							  <li class="nav-item">
								<a href="#" class="nav-link">
								  <i class="nav-icon fas fa-th"></i>
								  <p>
									Simple Link
									<span class="right badge badge-danger">New</span>
								  </p>
								</a>
							  </li>
					-->
				
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		
		<!-- Main content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						
						<!-- column nr 1 -->
						<h4 class="my-3">
							<i class="nav-icon fas fa-chalkboard"></i>
							Twoje klasy
						</h4>

						<c:choose>
							<c:when test="${empty classroomList}">
								<!-- Ta karta mogłaby pojawiać się, jeżeli nie ma klas ani uczniów -->
								<div class="alert alert-info alert-dismissible p-0 shadow">
									<div class="card-header">
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
										<h4 class="m-0">
											<i class="nav-icon fas fa-info-circle"></i>
											Informacja
										</h4>
									</div>
									<div class="card-body">
										<p class="card-text">
											Nie masz jeszcze dodanych żadnych klas.<br>
											Wybierz czynność z rozwijanego menu po lewej stronie, aby dodać i skonfigurować klasę.
										</p>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<c:forEach items="${classroomList}" var="classRoom">
									<div class="card card-secondary collapsed-card shadow">
										<div class="card-header">
											<h3 class="card-title">
												
												Klasa ${classRoom.classroomName}
											</h3>
											
											<div class="card-tools">
												<button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-plus"></i>
												</button>
											</div>
											<!-- /.card-tools -->
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											Tutaj będzie reszta
										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</c:forEach>
							</c:otherwise>
						</c:choose>
					
					</div>
					<!-- /.col-lg-6 -->
					
					<div class="col-lg-6">
						
						<!-- column nr 2 -->
						<h4 class="my-3">
							<i class="nav-icon fas fa-user-graduate"></i>
							Twoi uczniowie
						</h4>
						
						<c:choose>
							<c:when test="${empty studentList}">
								<!-- Ta karta mogłaby pojawiać się, jeżeli nie ma klas ani uczniów -->
								<div class="alert alert-info alert-dismissible p-0 shadow">
									<div class="card-header">
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
										<h4 class="m-0">
											<i class="nav-icon fas fa-info-circle"></i>
											Informacja
										</h4>
									</div>
									<div class="card-body">
										<p class="card-text">
											Nie masz jeszcze dodanych żadnych uczniów.<br>
											Wybierz czynność z rozwijanego menu po lewej stronie, aby dodać i skonfigurować uczniów.
										</p>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<c:forEach items="${studentList}" var="student">
									<div class="card card-secondary collapsed-card shadow">
										<div class="card-header">
											<h3 class="card-title">
												
												${student.firstName} ${student.lastName}
											</h3>
											
											<div class="card-tools">
												<button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-plus"></i>
												</button>
											</div>
											<!-- /.card-tools -->
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											Tutaj będzie reszta
										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</c:forEach>
							</c:otherwise>
						</c:choose>
					
					
					
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
