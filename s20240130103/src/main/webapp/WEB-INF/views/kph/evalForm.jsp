<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Blueberry</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/blueberry-logo.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">
  <link href="/assets/css/kph/evalform.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/0b22ed6a9d.js" crossorigin="anonymous"></script>
  
  <script defer src="./assets/js/kph/evalForm.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Jan 29 2024 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<%@ include file="../header.jsp"%>

	<!-- ======= Sidebar ======= -->
	<%@ include file="../asidebar.jsp"%>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>워크 스페이스</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="main">워크스페이스</a></li>
					<li class="breadcrumb-item active">팀원 평가</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="card">
				<div class="card-body">
					<div>
						<p class="card-title">팀원 평가</p>
						<div class="eval-group">
							<form action="eval" method="post">
								<input type="hidden" name="userListSize" value="${userListSize }">
								<input type="hidden" name="project_no" value="${project_no }">
								<div class="eval-group-box">
									<c:forEach var="user" items="${userList }" varStatus="loop">
										<div class="eval-box">
											<div class="user-img-name">
												<input type="hidden" name="user${loop.index }" value="${user.user_no }" /> 
												<img src="${pageContext.request.contextPath}/upload/userImg/${user.user_profile}" alt="Profile" class="rounded-circle">
												<p class="user-name">${user.user_name }</p>
											</div>
											<select name="user${loop.index }_score" class="form-select">
												<option value="5">⭐⭐⭐⭐⭐</option>
												<option value="4">⭐⭐⭐⭐</option>
												<option value="3">⭐⭐⭐</option>
												<option value="2">⭐⭐</option>
												<option value="1">⭐</option>
											</select>
										</div>
									</c:forEach>
								</div>
								<div class="submit-cancle-btn">
									<button type="submit" class="btn btn-primary">저장</button>
									<button type="button" class="btn btn-secondary">취소</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<%@ include file="../footer.jsp"%>
	<!-- End Footer -->

	<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
		<i	class="bi bi-arrow-up-short"></i>
	</a>

	<!-- Vendor JS Files -->
	<!-- <script src="assets/vendor/apexcharts/apexcharts.min.js"></script> -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- <script src="assets/vendor/chart.js/chart.umd.js"></script> -->
	<!-- <script src="assets/vendor/echarts/echarts.min.js"></script> -->
	<!-- <script src="assets/vendor/quill/quill.min.js"></script> -->
	<!-- <script src="assets/vendor/simple-datatables/simple-datatables.js"></script> -->
	<!-- <script src="assets/vendor/tinymce/tinymce.min.js"></script> -->
	<!-- <script src="assets/vendor/php-email-form/validate.js"></script> -->

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>