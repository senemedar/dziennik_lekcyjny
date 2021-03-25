<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Interaktywny dziennik lekcyjny</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- custom styles -->
  <link rel="stylesheet" href="dist/css/customStyles.css">
  <!-- Google Font: Source Sans Pro -->
<%--  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">--%>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Parisienne&family=Source+Sans+Pro:ital,wght@0,300;0,400;0,700;1,400&display=swap" rel="stylesheet">
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
      <div class="container-fluid col-xs-1">
<!--      <div class="col-12">-->
        <!-- Small boxes (Stat box) -->
        <div class="row justify-content-center">
          <div class="col-3">
            <!-- small box -->
            <div class="btn-info small-box">
              <div class="inner">
                <h5>Jestem</h5>
                <h3>Nauczycielem</h3>

                <p>&nbsp</p>
              </div>
              <div class="icon">
                <i class="fas fa-user-graduate"></i>
              </div>
              <a href="#" class="small-box-footer">Więcej informacji <i class="fas fa-arrow-circle-right"></i></a>
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
    <span>Stworzone przez senemedar, pabd9009, William Wright, na podstawie <a href="http://adminlte.io">AdminLTE.io</a>.</span>
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 0.0.1
    </div>
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<%--<!-- ChartJS -->--%>
<%--<script src="plugins/chart.js/Chart.min.js"></script>--%>
<%--<!-- Sparkline -->--%>
<%--<script src="plugins/sparklines/sparkline.js"></script>--%>
<%--<!-- JQVMap -->--%>
<%--<script src="plugins/jqvmap/jquery.vmap.min.js"></script>--%>
<%--<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>--%>
<%--<!-- jQuery Knob Chart -->--%>
<%--<script src="plugins/jquery-knob/jquery.knob.min.js"></script>--%>
<%--<!-- daterangepicker -->--%>
<%--<script src="plugins/moment/moment.min.js"></script>--%>
<%--<script src="plugins/daterangepicker/daterangepicker.js"></script>--%>
<%--<!-- Tempusdominus Bootstrap 4 -->--%>
<%--<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>--%>
<%--<!-- Summernote -->--%>
<%--<script src="plugins/summernote/summernote-bs4.min.js"></script>--%>
<%--<!-- overlayScrollbars -->--%>
<%--<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>--%>
<%--<!-- AdminLTE App -->--%>
<%--<script src="dist/js/adminlte.js"></script>--%>
<%--<!-- AdminLTE dashboard demo (This is only for demo purposes) -->--%>
<%--<script src="dist/js/pages/dashboard.js"></script>--%>
<%--<!-- AdminLTE for demo purposes -->--%>
<%--<script src="dist/js/demo.js"></script>--%>
</body>
</html>
