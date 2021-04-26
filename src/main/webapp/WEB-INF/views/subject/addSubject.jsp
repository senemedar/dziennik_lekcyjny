<%--
  Created by IntelliJ IDEA.
  User: senemedar
  Date: 24/04/2021
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Dodawanie przedmiotu</title>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
	
	<!-- Sidebar -->
	<%@include file="../dashboard/sidebar.jspf" %>
	
	<!-- top navbar -->
	<%@include file="../dashboard/top-nav.jspf"%>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		
		<!-- Main content -->
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6">
						
						<!-- column nr 1 -->
						<div class="card card-secondary mt-2 shadow">
							<div class="card-header">
								<h3 class="card-title">Dodaj przedmiot, którego będziesz uczyć</h3>
							</div>
							
							<div class="card-body">
								<form id="addSubject" action="${pageContext.request.contextPath}/addSubject/${teacher.id}" method="post">
									
									<div class="form-group pb-2">
										<label>Dodajesz klasy dla nauczyciela</label>
										<input type="text" name="teacher" class="form-control"
											   disabled value="${teacher.firstName} ${teacher.lastName}">
									</div>
									<!-- /.form-group ## choosing a teacher-->
									
									<!-- selecting students -->
									<div class="row">
										<div class="col-12">
											<div class="form-group">
												<label class="mb-0">Dostępne przedmioty</label>
												<select name="subjectList" class="duallistbox" multiple="multiple">
<%--													<c:choose>--%>
<%--														<c:when test="${empty studentList}">--%>
<%--															<option disabled>W systemie nie ma jeszcze żadnych.--%>
<%--															</option>--%>
<%--															<option disabled>Proszę dodać uczniów z menu po lewej.--%>
<%--															</option>--%>
<%--														</c:when>--%>
<%--														<c:otherwise>--%>
															<c:forEach items="${subjectList}" var="subject">
																<option>${subject}</option>
															</c:forEach>
<%--														</c:otherwise>--%>
<%--													</c:choose>--%>
												</select>
											</div>
											<!-- /.form-group -->
										</div>
										<!-- /.col -->
									</div>
									<!-- ## selecting subject -->
									
									<%--									<button type="submit" class="btn btn-primary btn-block">Utwórz nową klasę</button>--%>
									<div class="modal-footer justify-content-between">
										<button type="submit" class="btn btn-primary" style="width: 300px">Zarejestruj przedmiot</button>
										<button type="button" class="btn btn-default" onclick="location.href='javascript:history.back()'">Anuluj</button>
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

</body>
</html>
