<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
<link rel="stylesheet" href="asmweb/Websitebanhang/css/index.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
	integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="asmweb/Websitebanhang/css/listPro.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="Websitebanhang/JSP/header.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 home1 text-center mt-1 pt-3"
				style="background-color: rgb(232, 232, 232)">
				<ol>
					<li class="list-inline-item"><a
						class="text-decoration-none text-dark" href="#"><span>Home</span></a>
					</li>
					<li class="list-inline-item"><span class="text-secondary">/</span>
					</li>
					<li class="list-inline-item"><span class="text-secondary">Chests</span>
					</li>
				</ol>
			</div>
		</div>
		<div class="container pt-4">
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-3">
					<div class="container" id="filter">
						<div class="mt-2">
							<h5>Chests</h5>
							<hr />
							<li style="list-style: none;" class="mb-2"><a
								class="text-decoration-none text-secondary" href="#">Artisan</a>
							</li>
							<li style="list-style: none;" class="mb-2"><a
								class="text-decoration-none text-secondary" href="#">Studio
									Craft</a><br /></li>
							<li style="list-style: none;" class="mb-2"><a
								class="text-decoration-none text-secondary" href="#">Stagecraft</a><br />
							</li>
							<li style="list-style: none;" class="mb-2"><a
								class="text-decoration-none text-secondary" href="#">Coppersmith</a>
							</li>
						</div>
						<div class="pt-5">
							<h5>Filter By</h5>
							<hr />
							<div class="">
								<h6>Size</h6>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault" /> <label class="form-check-label"
										for="flexCheckDefault"> S (2)</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault" /> <label class="form-check-label"
										for="flexCheckDefault"> M (2)</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault" /> <label class="form-check-label"
										for="flexCheckDefault"> L (2)</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault" /> <label class="form-check-label"
										for="flexCheckDefault"> XL (2)</label>
								</div>
							</div>
							<div class="pt-3">
								<h6>Color</h6>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1" /> <label
										class="form-check-label" for="flexRadioDefault1">
										White (2) </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault2"
										style="background-color: #151515; color: #151515;" /> <label
										class="form-check-label" for="flexRadioDefault2">
										Black (2) </label>
								</div>
							</div>
							<div class="pt-3">
								<img src="img/advertising-s1.jpg" class="img-fluid" alt="" />
							</div>
						</div>
					</div>
				</div>
				<!-- ================Right================================================================================================ -->
				<div class="col-xs-12 col-sm-8 col-md-9 pt-1">
					<div class="container-fulid">
						<div class="row">
							<div class="col-md-5">
								<img class="img-fluid"
									src="asmwebb/Websitebanhang/images/list.jpg" alt="" />
							</div>
							<div class="col-md-7">
								<h6 style="font-size: 14px; font-weight: bold;" class="mb-3">Chests</h6>
								<p class="text-secondary"
									style="font-size: 14px; letter-spacing: .8px; line-height: 23px;">
									Sed blandit vehicula justo, ac feugiat turpis iaculis vitae.
									Mauris sit amet mauris tempus, facilisis nunc in, posuere
									lacus. Duis fermentum neque eu sem scelerisque, sed vestibulum
									est malesuada. Quisque feugiat pretium ultrices. Donec ac ipsum
									posuere, interdum nisi vestibulum, viverra dui.</p>
								<h6 style="font-size: 14px; font-weight: bold;" class="mt-5">Subcategories</h6>
								<div class="row">
									<div class="text-secondary col-md-6">
										<img src="asmwebb/Websitebanhang/images/item_1.jpg" alt=""
											class="img-fluid" style="width: 80px;" /> <span
											style="font-size: 14px; font-weight: 500; letter-spacing: .8px;">Stagecraft</span>
									</div>
									<div class="text-secondary col-md-6">
										<img src="asmwebb/Websitebanhang/images/item_2.jpg" alt=""
											class="img-fluid" style="width: 80px;" /> <span
											style="font-size: 14px; font-weight: 500; letter-spacing: .8px;">Coppersmith</span>
									</div>
								</div>
							</div>
						</div>
						<!-- For item  -->
						<div class="container" ng-controller="controllerForCard">
							<div class="row mt-5 p-2 mb-5"
								style="background-color: rgb(232, 232, 232)">
								<div class="col-12 col-sm-2 col-md-2  d-flex align-items-center">
									<label for="">Sort by: </label>
								</div>
								<div class="col-12 col-sm-10 col-md-10  ">
									<form action="/asignment2/danhmuc_servlet" method="post">
										<select name="filter" class="form-select">
											<option value="priceDesc">Price low to high</option>
											<option value="priceASC	">Price high to low</option>
											<option value="name">Name A to Z</option>
											<option value="-name">Name Z to A</option>
										</select>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<c:forEach var="product" items="${listProduct}">
							<div class="col-3">
								<img src="asmwebb/Websitebanhang/images/${product.hinh}"
									class="img-fluid" alt="..." /> <a
									href="/asignment2/resultproduc?maSP=${product.masp}"
									class="text-dark text-decoration-none">
									<p class="card-text text-start text-decoration-none "
										style="font-style: 12px">${product.tensp}</p>
								</a>
								<div class="start-test">
									<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
									<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
									<i class="fa-solid fa-star"></i>
								</div>
								<p class="mt-3">${product.mota}</p>
								<div class="text-danger" style="font-weight: 600">
									${product.giasp}</div>
								<div class="card-sub-title mb-3">

									<a href="#" data-name="${product.masp}"
										data-price="${product.giasp}"
										class="add-to-cart btn  mt-3 mb-2 text-dark"
										style="background-color: #E5E5E5;">Add to cart</a>
								</div>
							</div>
						</c:forEach>
					</div>

				</div>
			</div>

			<ul>
				<li><a href="#">Prev</a></li>
				<li class="active"><a href="/asignment2/trangposst?trang=1"
					name="page" value="1">1</a></li>
				<li><a href="/asignment2/trangposst?trang=2" name="page">2</a></li>
				<li><a href="/asignment2/trangposst?trang=3" name="page">3</a></li>
				<li><a href="/asignment2/trangposst?trang=4" name="page">4</a></li>
				<li><a href="">Next</a></li>
			</ul>
		</div>
	</div>


	<%@include file="Websitebanhang/JSP/booter.jsp"%>








	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>

	<!-- Slick Sliders Evondev -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js">
		
	</script>

	<script src="asmweb/Websitebanhang/js/index.js"></script>
</body>
</html>