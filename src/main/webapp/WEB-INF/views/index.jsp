<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<%@include file="dynamic/header.jspf" %>
	<title>Interaktywny dziennik lekcyjny</title>
</head>

<body class="hold-transition sidebar-mini layout-fixed" style="background-color: #fcf8e3">
<div class="lockscreen-wrapper bg-secondary rounded-pill" style="max-width: 1000px;">
	
	<!-- Content Wrapper. Contains page content -->
	<!--  <div class="content-wrapper">-->
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<h1 class="m-0 mb-2 text-center text-warning title">Interaktywny Dziennik Lekcyjny</h1>
			<h5 class="text-center">Wybierz, aby rozpocząć:</h5>
			<!--        <div class="row mb-2">-->
			<!--          <div class="col-sm-6">-->
			<!--          </div>&lt;!&ndash; /.col &ndash;&gt;-->
			<!--        </div>-->
		</div><!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->
	
	<!-- Main content -->
	<section class="content mb-5">
		<div class="container-fluid col-xs-1" onclick="location.href='teachers'">
			<!--      <div class="col-12">-->
			<!-- Small boxes (Stat box) -->
			<div class="row justify-content-center">
				<div class="col-3">
					<!-- small box -->
					<div class="btn-info small-box">
<%--					<a href="teachers">--%>
						<div class="inner cursor-pointer">
							<h5>Jestem</h5>
							<h3>Nauczycielem</h3>
							
							<p>&nbsp</p>
						</div>
						<div class="icon">
							<i class="fas fa-user-graduate"></i>
						</div>
<%--					</a>--%>
						<a href="teacherRegistration" class="small-box-footer">
							Zarejestruj nowego nauczyciela <i class="fas fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-3">
					<!-- small box -->
					<div class="small-box btn-danger">
						<div class="inner">
							<h5>Jestem</h5>
							<h3>Uczniem</h3>
							
							<p>&nbsp</p>
						</div>
						<div class="icon">
							<i class="fas fa-chalkboard-teacher"></i>
						</div>
						<a href="#" class="small-box-footer">Więcej informacji <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-3">
					<!-- small box -->
					<div class="small-box btn-success">
						<div class="inner">
							<h5>Jestem</h5>
							<h3>Rodzicem</h3>
							
							<p>&nbsp</p>
						</div>
						<div class="icon">
							<i class="fas fa-restroom"></i>
						</div>
						<a href="#" class="small-box-footer">Więcej informacji <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<!-- ./col -->
			</div>
			<!-- /.row -->
			
			<!-- Main row -->
			
			
			<!-- /.row (main row) -->
		</div><!-- /.container-fluid -->
	</section>
	<!-- /.content -->
	<!--  </div>-->
	<!-- /.content-wrapper -->
	<footer class="main-footer ml-0" style="background-color: #fcf8e3">
        <span>Stworzone przez <strong>senemedar</strong>, <strong>pabd9009</strong>, <strong>William Wright</strong>, na podstawie
			<a href="http://adminlte.io"> AdminLTE.io</a>.</span>
		<div class="float-right d-none d-sm-inline-block">
			<b>Version</b> 0.0.1
		</div>
	</footer>
	
</div>
<!-- ./wrapper -->

<%@include file="dynamic/endOfBody.jspf" %>

</body>
</html>
