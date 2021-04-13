<%--
  Created by IntelliJ IDEA.
  User: senemedar
  Date: 13/04/2021
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="main-header navbar navbar-expand navbar-olive navbar-dark">
	<!-- Left navbar links -->
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="index3.html" class="nav-link">Home</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link">Nauczyciele</a>
		</li>
	</ul>
	
	<!--    &lt;!&ndash; SEARCH FORM &ndash;&gt;-->
	<!--    <form class="form-inline ml-3">-->
	<!--      <div class="input-group input-group-sm">-->
	<!--        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">-->
	<!--        <div class="input-group-append">-->
	<!--          <button class="btn btn-navbar" type="submit">-->
	<!--            <i class="fas fa-search"></i>-->
	<!--          </button>-->
	<!--        </div>-->
	<!--      </div>-->
	<!--    </form>-->

</nav>
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
				<li class="nav-item has-treeview menu"> <!-- potem samo 'menu' -->
					<a href="#" class="nav-link bg-secondary">
						<i class="nav-icon fas fa-user-graduate"></i>
						<p>
							Twoje klasy
							<i class="right fas fa-angle-left"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<!--              <li class="nav-item">-->
						<!--                <a href="#" class="nav-link active">-->
						<!--                  <i class="far fa-circle nav-icon"></i>-->
						<!--                  <p>Active Page</p>-->
						<!--                </a>-->
						<!--              </li>-->
						<li class="nav-item">
							<a href="#" class="nav-link">
								<i class="fas fa-plus-circle nav-icon"></i>
								<p>Dodaj klasę</p>
							</a>
						</li>
					</ul>
				</li>
				
				<li class="nav-item has-treeview mt-2"> <!-- potem samo 'menu' -->
					<a href="#" class="nav-link bg-danger">
						<i class="nav-icon fas fa-chalkboard-teacher"></i>
						<p>
							Twoi uczniowie
							<i class="right fas fa-angle-left"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<!--              <li class="nav-item">-->
						<!--                <a href="#" class="nav-link active">-->
						<!--                  <i class="far fa-circle nav-icon"></i>-->
						<!--                  <p>Active Page</p>-->
						<!--                </a>-->
						<!--              </li>-->
						<li class="nav-item">
							<a href="#" class="nav-link">
								<i class="fas fa-plus-circle nav-icon"></i>
								<p>Dodaj ucznia</p>
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
