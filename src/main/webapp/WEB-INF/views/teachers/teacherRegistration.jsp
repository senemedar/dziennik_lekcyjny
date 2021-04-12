<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <%@include file="../dynamic/header.jspf" %>
    <title>Rejestracja nauczyciela</title>
</head>

<body class="hold-transition register-page" style="background-color: #fcf8e3">
<div class="register-box">
	<div class="register-logo">
		<h1 class="text-secondary title">Interaktywny Dziennik Lekcyjny</h1>
	</div>
	
	<div class="card">
		<div class="card-body register-card-body">
			<p class="login-box-msg">Zarejestruj nowego nauczyciela</p>
			
			<form name="addTeacher" action="addTeacher" method="post">
				<div class="input-group mb-3">
					<input type="text" name="firstName" class="form-control" placeholder="Imię">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"></span>
						</div>
					</div>
				</div>

				<div class="input-group mb-3">
					<input type="text" name="lastName" class="form-control" placeholder="Nazwisko">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-users"></span>
						</div>
					</div>
				</div>
				
				<div class="input-group mb-3">
					<input type="email" name="email" class="form-control" placeholder="Email">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-envelope"></span>
						</div>
					</div>
				</div>
				
				<div class="input-group mb-3">
					<input type="password" name="password" class="form-control" placeholder="Podaj Hasło">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
				</div>
				
				<div class="input-group mb-3">
					<input type="password" class="form-control" placeholder="Powtórz hasło">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
				</div>
				
				<div class="row">
<%--					<div class="col-8">--%>
<%--						<div class="icheck-primary">--%>
<%--							<input type="checkbox" id="agreeTerms" name="terms" value="agree">--%>
<%--							<label for="agreeTerms">--%>
<%--								Zgadzam się na <a href="#">warunki</a>--%>
<%--							</label>--%>
<%--						</div>--%>
<%--					</div>--%>
					
					<!-- /.col -->
					<div class="col">
						<button type="submit" class="btn btn-primary btn-block">zarejestruj mnie</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			
			<a href="#" class="text-center text-sm">Mam już członkostwo</a>
		</div>
		
		<!-- /.form-box -->
	</div><!-- /.card -->
</div>
<!-- /.register-box -->

<%@include file="../dynamic/endOfBody.jspf" %>

</body>
</html>
