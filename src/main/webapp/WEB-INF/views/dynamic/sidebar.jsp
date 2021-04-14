<%--
  Created by IntelliJ IDEA.
  User: senemedar
  Date: 13/04/2021
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- top navbar -->
<%@include file="top-nav.jsp"%>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index3.html" class="brand-link bg-olive text-center">
		<span class="brand-text">Michał Pielacha</span>
	</a>
	
	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		
		<!-- Sidebar Menu (on the left) -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true">
				<!-- Add icons to the links using the .nav-icon class
					 with font-awesome or any other icon font library -->
				<li class="nav-item has-treeview mt-2">
					<a href="#" class="nav-link bg-secondary">
						<i class="nav-icon fas fa-user-graduate"></i>
						<p>
							Twoje klasy
							<i class="right fas fa-angle-left"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="#" class="nav-link">
								<i class="fas fa-plus-circle nav-icon"></i>
								<p>Dodaj klasę</p>
							</a>
						</li>
					</ul>
				</li>
				
				<li class="nav-item has-treeview mt-2">
					<a href="#" class="nav-link bg-danger">
						<i class="nav-icon fas fa-chalkboard-teacher"></i>
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
