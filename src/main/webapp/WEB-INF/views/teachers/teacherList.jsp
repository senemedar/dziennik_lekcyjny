<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>--%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Wybór nauczyciela</title>
</head>

<body class="hold-transition sidebar-mini layout-fixed" style="background-color: #fcf8e3">
<div class="lockscreen-wrapper bg-secondary p-2 rounded-lg" style="max-width: 1000px;">
	
	<!-- Content Wrapper. Contains page content -->
	<!--  <div class="content-wrapper">-->
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<h1 class="m-0 mb-2 text-center text-warning title">Interaktywny Dziennik Lekcyjny</h1>
			<h5 class="text-center">Wybierz swój profil lub utwórz nowy:</h5>
			<!--        <div class="row mb-2">-->
			<!--          <div class="col-sm-6">-->
			<!--          </div>&lt;!&ndash; /.col &ndash;&gt;-->
			<!--        </div>-->
		</div><!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->
	
	<!-- Main content -->
	<section class="content mb-5">
		<div class="row">
			<c:forEach items="${teacher}" var="t">
				<div class="col-md-4 col-12">
					<div class="info-box btn bg-info" data-toggle="modal" data-target="#user${t.id}">
<%--						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#user${t.id}">--%>
<%--							Launch Default Modal--%>
<%--						</button>--%>
						<span class="info-box-icon bg-white"><i class="fas fa-user-graduate text-secondary"></i></span>
						
						<div class="info-box-content text-light">
							<h4>${t.firstName} ${t.lastName}</h4>
							<span class="info-box-number">${t.email}</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				
				<!-- the log-in modal -->
				<div class="modal fade" id="user${t.id}">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title text-info">Zaloguj się jako użytkownik</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">X</span>
								</button>
							</div>
							<div class="modal-body">
								<h3 class="modal-title text-info text-center">${t.firstName} ${t.lastName}</h3>
								
								<div class="input-group mb-3 mt-2">
									<input type="password" name="password" class="form-control" placeholder="Podaj Hasło">
									<div class="input-group-append">
										<div class="input-group-text">
											<span class="fas fa-lock"></span>
										</div>
									</div>
								</div>
							
							</div>
							<div class="modal-footer justify-content-between">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary" style="width: 300px">Zaloguj</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			
			</c:forEach>

			<div class="col-md-4 col-12">
				<div class="info-box btn btn-light" onclick="location.href='teacherRegistration'">
					<span class="info-box-icon bg-secondary"><i class="fas fa-users"></i></span>
					
					<div class="info-box-content text-secondary">
						<h4>Utwórz nowy profil</h4>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->


		</div>
	</section>
	
	<%@include file="../dynamic/endOfBody.jspf" %>

</body>
</html>