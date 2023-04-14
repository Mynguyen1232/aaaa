<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shopping Cart</title>

<!-- Required meta tags -->
<meta charset="utf-8" />


<!-- Bootstrap CSS v5.2.1 -->


<!-- Link icon of fontawesome -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<!-- Link icon of Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />

<!-- Slick slider source CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

<!-- Angular JS  -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
	integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<link rel="stylesheet" href="asmwebb/Websitebanhang/css/index.css">
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
	integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
	crossorigin="anonymous"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
	integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
	crossorigin="anonymous"></script>

</head>

<body>
	<%@include file="Websitebanhang/JSP/header.jsp"%> 
<div class="container-fluid p-3 mt-4 mb-4"
		style="background-color: #f5f5f5">
		<h6 class="text-center" style="color: #616060; font-size: 12px">Home</h6>
	</div>

	<!-- Container của table sản phẩm -->
	<div class="container">
		<div class="row">
			<div class="col-12 col-sm-8 col-md-8">
				<table class="table table-bordered">
					<thead class="text-center">
						<tr>
							<th>Mã SP</th>
							<th>Price</th>
							<th>Quantity</th>
							<th></th>
						</tr>
					</thead>
					<tbody class="show-cart tsext-center">
					</tbody>
				</table>
				<button class="clear-cart btn btn-danger">Clear Cart</button>
			</div>
			<div class="col-12 col-sm-4 col-md-4">
				<div class="container-fluid border rounded"
					style="font-size: 12px; border-color: dark">
					<div class="row pt-2 me-2 ms-2 mt-3">
						<div>
							Total price: $<span class="total-cart"></span>
						</div>
						<div class="col-3">$0.00</div>
					</div>
					<hr />
					<div class="row pt-2 me-2 ms-2">
						<div class="col-9">Total (tax excl.)</div>
						<div class="col-3">$0.00</div>
					</div>
					<div class="row pt-2 me-2 ms-2">
						<div class="col-9">Total (tax incl.)</div>
						<div class="col-3">$0.00</div>
					</div>
					<div class="row pt-2 me-2 ms-2">
						<div class="col-9">Taxes</div>
						<div class="col-3">$0.00</div>
					</div>
					<div class="container text-center">
						<buton
							class="btn rounded-pill border pe-3 ps-3 m-5 text-light fw-bold"
							style="font-size: 12px; background-color: #a3a2a2">Checkout</buton>
					</div>
				</div>
				<div class="container mt-5">
					<div style="font-size: 12px">Security policy</div>
					<p style="font-size: 12px; color: #a3a2a2">(edit with the
						Customer Reassurance module)</p>
				</div>
				<div class="container mt-2">
					<div style="font-size: 12px">Delivery policy</div>
					<p style="font-size: 12px; color: #a3a2a2">(edit with the
						Customer Reassurance module)</p>
				</div>
				<div class="container mt-2">
					<div style="font-size: 12px">Return policy</div>
					<p style="font-size: 12px; color: #a3a2a2">(edit with the
						Customer Reassurance module)</p>
				</div>
			</div>
		</div>
		<div class="container-fluid text-center">
			<p class="text-uppercase"
				style="font-size: 12px; color: darkgray; margin-bottom: 2px">Our
				Products</p>
			<p class="h1" style="font-weight: 600; margin-bottom: 2px">Popular
				Products</p>
			<p class="mt-3"
				style="font-size: 14px; letter-spacing: 0.5px; color: rgb(87, 86, 86)">Discover
				our Best of Categories with Special Discount</p>
		</div>
	</div>

	<div class="container p-5">
		<div class="row slickSliders">
			<c:forEach var="item" items="${item}">
				<div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
					<div class="card text-center item">
						<img src="asmweb/Websitebanhang/images/${item.hinh}"
							class="card-img-top" alt="...">
						<div class="p-2">
							<a href="/asignment2/resultproduc?maSP=${item.masp}"
								class="text-dark"> ${item.masp} </a> <a href=""
								class="text-dark">
								<p class="card-text text-start text-decoration: none"
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
				</div>
			</c:forEach>
		</div>
	</div>


	<!-- Container của table sản phẩm -->
	<!-- <div class="container">
		<div class="row">
			<div class="col-12 col-sm-8 col-md-8">
				
				<table class="show-cart table">
					 
				</table>
				<div class="mb-5 mt-4">
					Total price: $<span class="total-cart"></span>
				</div>
			</div>
			<div class="col-12 col-sm-4 col-md-4">
				<div class="container-fluid border rounded"
					style="font-size: 12px; border-color: dark">
					<div class="row pt-2 me-2 ms-2 mt-3">
						<div>
							Total price: $<span class="total-cart"></span>
						</div>
						<div class="col-3">$0.00</div>
					</div>
					<hr />
					<div class="row pt-2 me-2 ms-2">
						<div class="col-9">Total (tax excl.)</div>
						<div class="col-3">$0.00</div>
					</div>
					<div class="row pt-2 me-2 ms-2">
						<div class="col-9">Total (tax incl.)</div>
						<div class="col-3">$0.00</div>
					</div>
					<div class="row pt-2 me-2 ms-2">
						<div class="col-9">Taxes</div>
						<div class="col-3">$0.00</div>
					</div>
					<div class="container text-center">
						<buton
							class="btn rounded-pill border pe-3 ps-3 m-5 text-light fw-bold"
							style="font-size: 12px; background-color: #a3a2a2">Checkout</buton>
					</div>
				</div>
				<div class="container mt-5">
					<div style="font-size: 12px">Security policy</div>
					<p style="font-size: 12px; color: #a3a2a2">(edit with the
						Customer Reassurance module)</p>
				</div>
				<div class="container mt-2">
					<div style="font-size: 12px">Delivery policy</div>
					<p style="font-size: 12px; color: #a3a2a2">(edit with the
						Customer Reassurance module)</p>
				</div>
				<div class="container mt-2">
					<div style="font-size: 12px">Return policy</div>
					<p style="font-size: 12px; color: #a3a2a2">(edit with the
						Customer Reassurance module)</p>
				</div>
			</div>
		
		</div>
		<div class="container-fluid text-center">
			<p class="text-uppercase"
				style="font-size: 12px; color: darkgray; margin-bottom: 2px">Our
				Products</p>
			<p class="h1" style="font-weight: 600; margin-bottom: 2px">Popular
				Products</p>
			<p class="mt-3"
				style="font-size: 14px; letter-spacing: 0.5px; color: rgb(87, 86, 86)">Discover
				our Best of Categories with Special Discount</p>
		</div>
	</div>
 -->
	<%-- <div class="container p-5">
		<div class="row slickSliders">
			<c:forEach var="item" items="${item}">
				<div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
					<div class="card text-center item">
						<img src="asmweb/Websitebanhang/images/${item.hinh}"
							class="card-img-top" alt="...">
						<div class="p-2">
							<a href="/asignment2/resultproduc?maSP=${item.masp}"
								class="text-dark"> ${item.masp} </a> <a href=""
								class="text-dark">
								<p class="card-text text-start text-decoration: none"
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
				</div>
			</c:forEach>
		</div>
	</div> --%>

	<!-- This is container for footer -->
	<%@include file="Websitebanhang/JSP/booter.jsp"%>
	
		 

	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous"></script>

	<!-- Slick Sliders Evondev -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!-- This source file JavaScript for this site -->
	<script src="asmwebb/Websitebanhang/js/index.js"></script>
	<script src="asmwebb/Websitebanhang/js/web.js"></script>
</body>
</html>
