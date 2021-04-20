<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Zarejestruj ucznia</title>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
	
	<!-- Sidebar -->
	<%@include file="../dashboard/sidebar.jsp" %>
	
	<!-- top navbar -->
	<%@include file="../dashboard/top-nav.jsp" %>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		
		<!-- Main content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						
						<!-- column nr 1 -->
						<div class="card card-danger mt-2 shadow">
							<div class="card-header">
								<h3 class="card-title">Rejestracja nowego ucznia</h3>
							</div>
							
							<div class="card-body">
								<form id="addClassroom" action="${pageContext.request.contextPath}/registerStudent"
									  method="post">
									
									<!-- entering student name -->
									<div class="form-group pb-2">
										<label>Imię</label>
										<input type="text" name="firstName" class="form-control"
											   placeholder="Imię ucznia" required>
									</div>
									
									<div class="form-group pb-2">
										<label for="lastName">Nazwisko</label>
										<input type="text" id="lastName" name="lastName" class="form-control"
											   placeholder="Nazwisko ucznia" required>
									</div>
									
									<div class="form-group">
										<label>Hasło</label>
										<i id="tip1" class="nav-icon fas fa-lg fa-info-circle" data-toggle="tooltip"
										   data-placement="right"
										   title="Hasło generowane automatycznie. Przekaż je uczniowi, aby mógł zalogować się do systemu.">
										</i>
										<div class="input-group mb-3">
											<input type="text" class="form-control" value="${password}">
											<div id="tip2" class="input-group-append" data-toggle="tooltip"
												 data-placement="top" title="Skopiuj hasło do showka">
												<button type="button" class="btn btn-info">
													<i class="nav-icon fas fa-clipboard"></i>
												</button>
											</div>
											<!-- /btn-group -->
										</div>
									</div>
									<!-- /input-group -->
									
									<!-- choosing a teacher -->
									<div class="form-group pb-2">
										<label>Nauczyciel prowadzący</label>
										<input type="text" name="classroomTeacher" class="form-control"
											   disabled value="${teacher.firstName} ${teacher.lastName}">
										<%--									<select class="form-control select2bs4" style="width: 100%;">--%>
										<%--											<c:forEach items="${teacherList}" var="tl">--%>
										<%--												<c:choose>--%>
										<%--													<c:when test="${tl.firstName == teacher.firstName && tl.lastName == teacher.lastName}">--%>
										<%--														<option selected="selected">--%>
										<%--													</c:when>--%>
										<%--													<c:otherwise>--%>
										<%--														<option>--%>
										<%--													</c:otherwise>--%>
										<%--												</c:choose>--%>
										<%--												${tl.firstName} ${tl.lastName}--%>
										<%--												</option>--%>
										<%--											</c:forEach>--%>
										<%--									</select>--%>
									</div>
									<!-- /.form-group ## choosing a teacher-->
									
									<!-- selecting a class -->
									<div class="row">
										<div class="col-12">
											<%--											<div class="form-group">--%>
											<%--												<label class="mb-0">Uczniowie w klasie</label>--%>
											<%--												<select name="studentList" class="duallistbox" multiple="multiple">--%>
											<%--												</select>--%>
											<%--											</div>--%>
											<%--											<!-- /.form-group -->--%>
											
											<div class="card card-secondary">
												<div class="card-header my-0">
													<h3 class="card-title">
														Wybór klasy
													</h3>
													
													<div class="card-tools">
														<button type="button" class="btn btn-tool"
																data-card-widget="collapse"><i class="fas fa-plus"></i>
														</button>
													</div>
													<!-- /.card-tools -->
												</div>
												<!-- /.card-header -->
												<div class="card-body">
													<p>
														Wybierz klasę do której będzie uczęszczał uczeń.
													</p>
													<c:choose>
														<c:when test="${empty classroomList}">
															<p>
																W systemie nie zarejestrowano jeszcze żadnej klasy.
															</p>
															<p>
																Możesz utworzyć klasę w menu po lewej.</p>
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
												
												
												<!-- /.card-body -->
											</div>
											<!-- /.card -->
										</div>
										<!-- /.col -->
									</div>
									<!-- ## selecting students -->
									
									<%--									<button type="submit" class="btn btn-primary btn-block">Utwórz nową klasę</button>--%>
									<div class="modal-footer justify-content-between">
										<button type="submit" class="btn btn-primary" style="width: 300px">Zarejestruj
											klasę
										</button>
										<button type="button" class="btn btn-default"
												onclick="location.href='javascript:history.back()'">Anuluj
										</button>
									</div>
								</form>
							
							
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
    var tip1 = document.getElementById('tip1')
    var tooltip1 = new bootstrap.Tooltip(tip1, {
        animation: true
    })

    var tip2 = document.getElementById('tip2')
    var tooltip2 = new bootstrap.Tooltip(tip2, {
        animation: true
    })

</script>
</body>
</html>
