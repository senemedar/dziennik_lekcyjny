<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Zarejestruj ucznia</title>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
	
	<!-- Sidebar -->
	<%@include file="../dashboard/sidebar.jspf" %>
	
	<!-- top navbar -->
	<%@include file="../dashboard/top-nav.jspf" %>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		
		<!-- Main content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						
						<!-- column nr 1 -->
						<div class="card card-danger mt-2 shadow">
							<form id="addClassroom" action="${pageContext.request.contextPath}/registerStudent"
								  method="post">
								<div class="card-header">
									<h3 class="card-title">Rejestracja nowego ucznia</h3>
								</div>
								
								<div class="card-body">
									
									<!-- choosing a teacher -->
									<div class="form-group pb-2">
										<label>Nauczyciel prowadzący</label>
										<input type="text" name="classroomTeacher" class="form-control"
											   disabled value="${teacher.firstName} ${teacher.lastName}">
									</div>
									
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">
												<label>Imię</label>
												<input type="text" name="firstName" class="form-control"
													   placeholder="Imię ucznia" required>
											</div>
											
											<div class="form-group">
												<label for="lastName">Nazwisko</label>
												<input type="text" id="lastName" name="lastName" class="form-control"
													   placeholder="Nazwisko ucznia" required>
											</div>
										
										</div>
										<div class="col-lg-6">
											<div class="form-group">
												<label for="lastName">Adres e-mail</label>
												<div class="input-group mb-3">
													<input type="email" name="email" class="form-control"
														   placeholder="Email">
													<div class="input-group-append">
														<div class="input-group-text">
															<span class="fas fa-envelope"></span>
														</div>
													</div>
												</div>
											</div>
											
											
											<div class="form-group">
												<label>Hasło</label>
												<i id="tip1" class="nav-icon fas fa-lg fa-info-circle"
												   data-toggle="tooltip"
												   data-placement="top"
												   title="Hasło generowane automatycznie, ale może być dowolnie zmienione. Przekaż je uczniowi, aby mógł zalogować się do systemu.">
												</i>
												<div class="input-group mb-3">
													<input type="text" class="form-control" value="${password}">
													<div id="tip2" class="input-group-append" data-toggle="tooltip"
														 data-placement="top"
														 title="Wyślij do ucznia e-mail z powiadomieniem o  rejestracji.">
														<button type="button" class="btn btn-danger">
															<i class="nav-icon fas fa-envelope"></i>
														</button>
													</div>
													<div id="tip3" class="input-group-append" data-toggle="tooltip"
														 data-placement="top" title="Skopiuj hasło do schowka">
														<button type="button" class="btn btn-info">
															<i class="nav-icon fas fa-clipboard"></i>
														</button>
													</div>
													<!-- /btn-group -->
												</div>
											</div>
											<!-- /input-group -->
										</div>
									</div>
									
									<div class="form-group">
										<label>Wybierz klasę do której uczęszcza uczeń</label>
										<c:choose>
											<c:when test="${empty classroomList}">
												<div class="alert alert-info">
													<h5>
														<i class="icon fas fa-info"></i>
														Brak klas w systemie
													</h5>
													W systemie nie zarejestrowano jeszcze żadnej klasy.<br>
													Możesz utworzyć klasę w menu po lewej.
												</div>
											</c:when>
											<c:otherwise>
												<div class="form-group">
													<select class="custom-select"
															data-placeholder="Wybierz klasę z listy"
															style="width: 100%;">
														<c:forEach items="${classroomList}" var="classroom">
															<option>${classroom.classroomName}</option>
														</c:forEach>
													</select>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
									
									<!-- subject choice -->
									<div class="form-group">
										<label class="mb-0">Wybierz zajęcia na które uczęszcza uczeń</label>
										<select name="studentList" class="duallistbox" multiple="multiple">
											<c:choose>
												<c:when test="${empty studentList}">
													<option disabled>W systemie nie jest zapisany żaden uczeń.
													</option>
													<option disabled>Proszę dodać uczniów z menu po lewej.
													</option>
												</c:when>
												<c:otherwise>
													<c:forEach items="${studentList}" var="student">
														<option>${student.firstName} ${student.lastName}</option>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</select>
									</div>
								
								</div>
								<!-- /card body -->
								
								<!-- card footer -->
								<div class="modal-footer justify-content-between">
									<button type="submit" class="btn btn-primary" style="width: 300px">
										Zarejestruj ucznia
									</button>
									<button type="button" class="btn btn-default"
											onclick="location.href='javascript:history.back()'">Anuluj
									</button>
								</div>
							
							</form>
						</div>
						<!-- /.card /.column 1 -->
					
					
					</div>
				</div>
			
			</div>
			<!-- /.col-lg-6 -->
		</div>
		<!-- /.row -->
	</div><!-- /.container-fluid -->
</div>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- Main Footer -->
<footer class="main-footer">
	<!-- To the right -->
	<div class="float-right d-none d-sm-inline">
		Anything you want
	</div>
	<!-- Default to the left -->
	<strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All
	rights reserved.
</footer>

</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@include file="../dynamic/endOfBody.jspf" %>
<script>

    for (let i = 1; i < 4; i++) {
        tooltip = new bootstrap.Tooltip(document.getElementById('tip' + i, {
            animation: true
        }))
    }

    // var tip1 = document.getElementById('tip1')
    // var tooltip1 = new bootstrap.Tooltip(tip1, {
    //     animation: true
    // })
    //
    // var tip2 = document.getElementById('tip2')
    // var tooltip2 = new bootstrap.Tooltip(tip2, {
    //     animation: true
    // })

</script>
</body>
</html>
