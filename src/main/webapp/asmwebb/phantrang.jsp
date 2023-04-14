<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="asmwebb/Websitebanhang/css/index.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
	integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<section class="container">

		<div class="row">
			
					<c:forEach var="item" items="${sanpham}">
						<div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
							<div class="card text-center item">
								<img src="asmwebb/Websitebanhang/images/${item.hinh}"
									class="card-img-top" alt="...">
								<div class="p-2">

									<a href="/asignment2/resultproduc?maSP=${item.masp}"
										class="text-dark text-decoration-none">
										<p class="card-text text-start text-decoration-none "
											style="font-style: 12px">${item.tensp}</p>
									</a>
									<div class="icon-rate text-start" style="font-size: 12px;">
										<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
									</div>
									<p class="text-start" style="color: red; font-weight: 500;">
										${item.giasp} <sub style="color: green; font-weight: 500;"></sub>
									</p>

								</div>


							</div>
							<%-- <c:set var="id" value="${id+1}"></c:set> --%>

						</div>

					</c:forEach>

			 
			 
				<div class="pagination pagination-small pagination-centered" >
				<form action="phantrangSP" method="post"> 
					<ul>
						<li><a href="#">Prev</a></li>
						<li class="active"><a href="/asignment2/trangposst?trang=1" name="page" value="1">1</a></li>
						<li><a href="/asignment2/trangposst?trang=2" name="page">2</a></li>
						<li><a href="/asignment2/trangposst?trang=3" name="page">3</a></li>
						<li><a href="/asignment2/trangposst?trang=4" name="page">4</a></li>
						<li><a href="">Next</a></li>
					</ul>
				</form>
				</div>
			</div>
			<div class="span3 col">
				<div class="block">
					<ul class="nav nav-list">
						<li class="nav-header">CATEGORIES</li>
						<c:forEach var="category" items="${listCategory}">
							<li><a
								href="<c:url value='/sanpham?maDM=${category.madm}'/>">${category.tendanhmuc}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		 
	</section>

</body>
</html>