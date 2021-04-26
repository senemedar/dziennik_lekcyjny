<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="../dynamic/header.jspf" %>
	<title>Zarejestruj nowego nauczyciela</title>
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
						<div class="card card-primary mt-2 shadow">
							<form name="addTeacher" action="addTeacher" method="post">
								<div class="card-header bg-success">
									<h3 class="card-title">Rejestracja nowego nauczyciela</h3>
								</div>
								
								<div class="card-body">
									
									<!-- choosing a teacher -->
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">
												<label>Imię</label>
												<input type="text" name="firstName" class="form-control"
													   placeholder="Twoje imię" required>
											</div>
											
											<div class="form-group">
												<label for="lastName">Nazwisko</label>
												<input type="text" id="lastName" name="lastName" class="form-control"
													   placeholder="Twoje nazwisko" required>
											</div>
										
										</div>
										<div class="col-lg-6">
											<div class="form-group">
												<label for="lastName">Adres e-mail</label>
												<div class="input-group mb-3">
													<input type="email" name="email" class="form-control"
														   placeholder="Twój adres e-mail">
													<div class="input-group-append">
														<div class="input-group-text">
															<span class="fas fa-envelope"></span>
														</div>
													</div>
												</div>
											</div>
											
											
											<div class="form-group">
												<label>Hasło</label>
<%--												<i id="tip1" class="nav-icon fas fa-lg fa-info-circle"--%>
<%--												   data-toggle="tooltip"--%>
<%--												   data-placement="top"--%>
<%--												   title="Hasło generowane automatycznie, ale może być dowolnie zmienione. Przekaż je uczniowi, aby mógł zalogować się do systemu.">--%>
<%--												</i>--%>
												<div class="input-group mb-3">
													<input id="password" name="password" type="password" class="form-control">
													<input id="hiddenPassword" type="text" hidden>
													<div id="tip1" class="input-group-append" data-toggle="tooltip"
														 data-placement="top"
														 title="Wygeneruj hasło">
														<button type="button" class="btn btn-danger" onclick="getGeneratedPassword()">
															<i class="nav-icon fas fa-asterisk"></i>
														</button>
													</div>
													<div id="tip2" class="input-group-append" data-toggle="tooltip"
														 data-placement="top" title="Skopiuj hasło do schowka">
														<button type="button" class="btn btn-info" onclick="copyToClipboard()">
															<i class="nav-icon fas fa-clipboard"></i>
														</button>
													</div>
													<!-- /btn-group -->
												</div>
											</div>
											<!-- /input-group -->
										</div>
									</div>
									
									
									<!-- subject choice -->
									<div class="form-group">
										<label class="mb-0">Wybierz przedmioty których uczysz</label>
										<select name="stringSubjectList" class="duallistbox" multiple="multiple">
											<c:forEach items="${subjectNamesList}" var="subject">
												<option>${subject}</option>
											</c:forEach>
										</select>
									</div>
								
								</div>
								<!-- /card body -->
								
								<!-- card footer -->
								<div class="card-footer">
									<button type="submit" class="btn btn-danger" style="width: 100%">
										Zarejestruj się
									</button>
<%--									<button type="button" class="btn btn-default"--%>
<%--											onclick="location.href='javascript:history.back()'">Anuluj--%>
<%--									</button>--%>
								</div>
							
							</form>
						</div>
						<!-- /.card /.column 1 -->
					
					
					</div>
				</div>
			
			</div>
		</div>
	</div>
</div>

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

<!-- REQUIRED SCRIPTS -->
<%@include file="../dynamic/endOfBody.jspf" %>

<script>

	// tooltip initialisation
    for (let i = 1; i < 3; i++) {
        new bootstrap.Tooltip(document.getElementById('tip' + i, {
            animation: true
        }))
    }

    // helper functions for putting password in the clipboard
    function getGeneratedPassword() {
        alert("Twoje wygenerowane hasło to:\n${password}");
        $('#password').val("${password}");
        copyToClipboard();
	}
    
    function copyToClipboard() {
        let pass1 = $('#password');
        pass1.focus();
        navigator.clipboard.writeText(pass1.val());
        alert("Copied the text: " + pass1.val());
	}

</script>
</body>
</html>
