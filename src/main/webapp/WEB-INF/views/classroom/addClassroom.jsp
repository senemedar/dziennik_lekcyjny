<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page contentType="text/html; charset=UTF-8" %>--%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Dodaj klasę</title>
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
	
	<!-- Sidebar -->
	<%@include file="../dynamic/sidebar.jsp" %>
	
	<!-- top navbar -->
	<%@include file="../dynamic/top-nav.jsp"%>
	
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
								<h3 class="card-title">Tworzenie nowej klasy</h3>
							</div>
							
							<div class="card-body">
								<form id="addClassroom" action="${pageContext.request.contextPath}/addClassroom" method="post">
									
									<!-- entering class name -->
									<div class="form-group pb-2">
										<label>Nazwa klasy</label>
										<input type="text" name="classroomName" class="form-control"
											   placeholder="Wpisz nazwę dla klasy" required>
									</div>
									
									<!-- choosing a teacher -->
									<div class="form-group pb-2">
										<label>Nauczyciel przypisany do klasy</label>
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
									
									<!-- selecting students -->
									<div class="row">
										<div class="col-12">
											<div class="form-group">
												<label class="mb-0">Uczniowie w klasie</label>
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
											<!-- /.form-group -->
										</div>
										<!-- /.col -->
									</div>
									<!-- ## selecting students -->
									
<%--									<button type="submit" class="btn btn-primary btn-block">Utwórz nową klasę</button>--%>
									<div class="modal-footer justify-content-between">
										<button type="submit" class="btn btn-primary" style="width: 300px">Zarejestruj klasę</button>
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
