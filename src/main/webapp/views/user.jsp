<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin</title>

<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous" />

<!-- Link icon of fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

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

<link rel="stylesheet" href="index.css" />
</head>

<body ng-app="myApp">
	<nav
		class="navbar navbar-expand-lg bg-body-tertiary sticky-top mb-1 p-3"
		style="background-color: #e5e5e5">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span><i class="fa-solid fa-bars"></i></span>
			</button>
			<a href="index.html"><img
				src="/Websitebanhang/images/logo.jpg" alt=""
				class="img-fluid"/></a>
			<div class="dropdown me-5 pe-5">
				<button class="btn fs-4 dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">
					<i class="fa-regular fa-user"></i>
				</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">Log In</a></li>
					<li><a class="dropdown-item" href="#">Log Out</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid mt-5">
		<div class="row pt-4 pb-4">
			<div class="col-12 col-sm-2 col-md-2 col-lg-2">
				<ul class="list-group list-group-flush">
					<li class="list-group-item mt-3 fs-6 active" aria-current="true">Management
						Users</li>
					<li class="list-group-item mt-3 fs-6">Management Product</li>
					<li class="list-group-item mt-3 fs-6">Staticties Product</li>
					<li class="list-group-item mt-3 fs-6">Page</li>
					<li class="list-group-item mt-3 fs-6">Setting</li>
				</ul>
			</div>
			<div class="col-12 col-sm-10 col-md-10 col-lg-10">
				<div class="container-fluid col-8 pt-2">
					<div class="row">
						<div class="col">
							<form action="user" method="post">
								<div class="form-group">
									<label class="pb-2">User ID:</label> <input type="text"
										class="form-control" name="id" value="${id}" />
								</div>
								<div class="form-group">
									<label class="pt-4 pb-2">Password:</label> <input
										type="password" class="form-control" name="password"
										value="${password}" />
								</div>
								<div class="form-group">
									<label class="pt-4 pb-2">Fullname:</label> <input type="text"
										class="form-control" name="fullname" value="${fullname}" />
								</div>
								<div class="form-group">
									<label class="pt-4 pb-2">Email Address:</label> <input
										type="text" class="form-control" name="email" value="${email}" />
								</div>
								<div class="form-check form-check-inline pt-4 pb-2">
									<label>Role:&nbsp;&nbsp;&nbsp;</label> <label class="ms-4 me-4"><input
										type="radio" class="form-check-input" name="admin"
										value="true" ${admin ? 'checked' : ''} />Admin </label> <label
										class="ms-2"> <input type="radio"
										class="form-check-input" name="admin" value="false"
										${!admin ? 'checked' : ''} />User
									</label>
								</div>
								<div class="row pt-2">
									<div class="col">
										<c:if test="${not empty message}">
											<div class="alert alert-success bg-info">${message}</div>
										</c:if>
										<c:if test="${not empty error}">
											<div class="alert alert-danger">${error}</div>
										</c:if>
									</div>
								</div>
								
								<div class="form-group text-center pt-2 pb-3">
									<button class="btn btn-primary btn-Create"
										formaction="/asignment2/user/create">Create</button>
									<button class="btn btn-warning btn-Update"
										formaction="/asignment2/user/update">Update</button>
									<button class="btn btn-danger btn-Delete"
										formaction="/asignment2/user/delete" disabled="disabled">Delete</button>
									<button class="btn btn-info btn-Reset" formaction="user/reset">Reset</button>
									<button class="btn btn-info btn-Find"
										formaction="/asignment2/user/FindbyID">Find</button>
								</div>
							</form>
						</div>
					</div>
					<div class="row pt-0 pl-3 pr-3">
						<table class="table text-center border">
							<thead class="font-weight-bold text-dark">
								<tr class="">
									<td>User ID</td>
									<td>Password</td>
									<td>Fullname</td>
									<td>Email</td>
									<td>Role</td>
									<td>&nbsp;</td>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach var="item" items="${users}">
									<tr class="thead-dark text-black border-none">
										<td>${item.id}</td>
										<td>${item.password}</td>
										<td>${item.fullname}</td>
										<td>${item.email}</td>
										<td>${item.admin ? 'Admin' : 'User'}</td>
										<td><a href="/asignment2/user/edit?id=${item.id}" class="btn-Edit">Edit</a>
											| <a href="/asignment2/user/delete?id=${item.id}">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>

							<tbody></tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


    <footer class="text-white pt-5 pb-4" style="background: #151515">
      <div class="container text-center text-md-left">
        <div class="row text-center md-left" style="font-size: 14px">
          <div class="col-md-auto col-lg-auto col-xl-auto mx-auto mt-auto text-start">
            <div id="footerBar">
              <p><a href="" class="text-decoration-none fs-4 fw-500" style="color: white">Store Information</a></p>
              <p><a href="" class="text-decoration-none" style="color: gray">Help Line No</a></p>
              <p><a href="" class="text-decoration-none" style="color: gray">Demo Store</a></p>
              <p><a href="" class="text-decoration-none" style="color: gray">demo@example.com</a></p>
              <p><a href="" class="text-decoration-none" style="color: gray">+84 383674567</a></p>
            </div>
          </div>
          
          <div class="col-md-auto col-lg-auto col-xl-auto mx-auto mt-auto text-start">
            <p><a href="" class="text-decoration-none fs-4 fw-500" style="color: white">Your Account</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Personal info</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Orders</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Credit slips</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Addresses</a></p>
          </div>
          <div class="col-md-auto col-lg-auto col-xl-auto mx-auto mt-auto text-start">
            <p><a href="" class="text-decoration-none fs-4 fw-500" style="color: white">Product</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Prices drop</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Best sales</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Contact us</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Sitemap</a></p>
          </div>
          <div class="col-md-auto col-lg-auto col-xl-auto mx-auto mt-auto text-start">
            <p><a href="" class="text-decoration-none fs-4 fw-500" style="color: white">Our Company</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Delivery</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Legal Notice</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Terms and conditions of use</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">About us</a></p>
          </div>
          <div class="col-md-auto col-lg-auto col-xl-auto mx-auto mt-auto text-start">
            <p><a href="" class="text-decoration-none fs-4 fw-500" style="color: white">Extra Links</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Mobile</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Smart TV</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Computers</a></p>
            <p><a href="" class="text-decoration-none" style="color: gray">Electronices</a></p>
          </div>
        </div>
      </div>
    </footer>
    
    <div class="container-fluid p-3" style="background: black">
      <div class="row text-center">
        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
          <p class="text-secondary">@ 2023 - Ecommerce software by PrestaShop</p>
        </div>
        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
          <img src="images/visa.jpg" alt="" class="img-fluid" />
          <img src="images/visa2.jpg" alt="" class="img-fluid" />
          <img src="images/visa3.jpg" alt="" class="img-fluid" />
          <img src="images/visa4.jpg" alt="" class="img-fluid" />
        </div>
      </div>
    </div>

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
	<script src="index.js"></script>
</body>
</html>
