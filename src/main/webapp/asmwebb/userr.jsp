<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="Websitebanhang/css/index.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
        integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<header>
	<div class="modal fade" id="myModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content pt-3 pb-3 pe-3">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
				<div class="container-fluid">
					<div class="row">
						<div class="col-12 col-md-7 col-lg-7">
							<img src="images/modal.jpg" class="img-fluid">
						</div>
						<div class="col-12 col-md-5 col-lg-5">
							<div class="contaier-fuild"
								style="height: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
								<p class="h1 fs-3 mt-4 mb-4 text-center">Newsletter</p>
								<p class=" text-center"
									style="font-size: 13px; letter-spacing: 1px;">Subcribe and
									get 10% off new collection</p>
								<input class="form-control form-control-md" type="text"
									placeholder="Enter your email.."
									aria-label=".form-control-sm example">
								<div class="button w-100 text-center">
									<button class="btn bg-dark m-4 text-light fw-bold rounded-pill"
										style="width: 120px;">Subcribe</button>
								</div>
								<div class="form-check"
									style="font-size: 14px; letter-spacing: 1px;">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> Do not show this popup again </label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar navbar-expand-lg bg-body-tertiary sticky-top mb-1 p-3"
		style="background-color: #E5E5E5;">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span><i class="fa-solid fa-bars"></i></span>
			</button>
			<a href="/asignment2/user"><img
				src="asmwebb/Websitebanhang/images/logo.jpg" alt=""
				class="img-fluid"></a>
			<div class="collapse navbar-collapse flex-grow-0" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item dropdown dropdown-mega position-static"><a
						href="asmwebb/index.jsp" class="nav-link dropdown-toggle"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<p>Sofas</p>
					</a>
						<div class="dropdown-menu shadow">
							<div class="mega-content px-md-4">
								<div class="contaienr">
									<div class="row fw-bold">
										<div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
											<div class="list-group">
												<a href=" " class="list-group-item"
													style="font-weight: bold;">
													<p>Chairs</p>
												</a> <a href="" class="list-group-item">Stonewave</a> <a href=""
													class="list-group-item">Stained glass</a> <a href=""
													class="list-group-item">Tatting</a> <a href=""
													class="list-group-item">Sewing</a> <a href=""
													class="list-group-item">Artisan</a>
											</div>
										</div>
										<div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
											<div class="list-group">
												<a href="" class="list-group-item"
													style="font-weight: bold;">Tables</a> <a href=""
													class="list-group-item">Basket weaving</a> <a href=""
													class="list-group-item">Crochet</a> <a href=""
													class="list-group-item">Papercutting</a> <a href=""
													class="list-group-item">Quiling</a> <a href=""
													class="list-group-item">Studio Craft</a>
											</div>
										</div>
										<div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
											<div class="list-group">
												<a href="" class="list-group-item"
													style="font-weight: bold;">Beds</a> <a href=""
													class="list-group-item">Paper model</a> <a href=""
													class="list-group-item">Calligraphy</a> <a href=""
													class="list-group-item">Marquetry</a> <a href=""
													class="list-group-item">Carpentry</a> <a href=""
													class="list-group-item">Stagecraft</a>
											</div>
										</div>
										<div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
											<div class="list-group">
												<a href="" class="list-group-item"
													style="font-weight: bold;">Cabinets</a> <a href=""
													class="list-group-item">Intarsia</a> <a href=""
													class="list-group-item">Stone carving</a> <a href=""
													class="list-group-item">Farrier</a> <a href=""
													class="list-group-item">Knife making</a> <a href=""
													class="list-group-item">Coppersmith</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#">Chairs</a></li>
					<li class="nav-item dropdown">
						<div class="dropdown-center">
							<a href="#" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown" aria-expanded="false"> Cabinets</a>
							<ul class="dropdown-menu">
								<li><a href="#" class="dropdown-item">Action</a></li>
								<li><a href="#" class="dropdown-item">Stone Carving</a></li>
								<li><a href="#" class="dropdown-item">Farrier</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
					<a class="nav-link"
						href="listProduct.html">Chests</a>
						</li>
					<li class="nav-item">
					<a class="nav-link" href="">
					 Acount
					 </a>
					</li>
					<li class="nav-item "><a href="asmwebb/userr.jsp"
						class="list-group-item mt-2" style="font-weight: bold;">
							<p>Login</p>
					</a></li>
				</ul>
			</div>
		 
				<ul>
					<a href="" class="text-dark text-decoration-none me-4" name="id">
						<i class="bi bi-person-circle fs-4 "></i> ${user}
					</a>
					<a href="asmwebb/cart.jsp" type="button"
						class="position-relative link-dark text-decoration-none"> <span
						class="fs-2"> <i class="bi bi-cart3 fs-3"></i>
					</span> <span
						class="position-relative top-1 start-80 translate-middle badge rounded-pill bg-dark">
							<span class="total-count">0</span>
					</span>
					</a>


				</ul>
		 
		</div>
	</nav>
</header>
	<div class="container col-8 mt-5">
		<div class="border rounded bg-light pl-4 pr-4 p-5">
			<div class="row p-2 pl-3 pt-3  text-dark rounded" style="background-color: #E5E5E5;">
				<h2>LIST USERS</h2>
				
			</div>
			<div class="row mt-3">
				<div class="col">
					<c:if test="${not empty message}">
						<div class="alert alert-success">${message}</div>
					</c:if>
					<c:if test="${not empty error}">
						<div class="alert alert-danger">${error}</div>
					</c:if>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<form action="/asignment2/user" method="post">
						<div class="form-group mb-2">
							<label>User ID:</label> <input type="text" class="form-control" name="id" value="${id}" />
						</div>
						<div class="form-group mb-2">
							<label>Password:</label> <input type="password" class="form-control" name="password" value="${password}" />
						</div>
						<div class="form-group mb-2">
							<label>Fullname:</label> <input type="text" class="form-control" name="fullname" value="${fullname}" />
						</div>
						<div class="form-group mb-2">
							<label>Email Address:</label> <input type="text" class="form-control" name="email" value="${email}" />
						</div>
						<div class="form-check form-check-inline">
							<label>Role:&nbsp;&nbsp;&nbsp;</label> 
                            <label class="ms-4 me-4">
                                <input type="radio" class="form-check-input"
								name="admin" value="true" ${admin ? 'checked' : ''} />Admin </label> 
                            <label class="ml-2"><input
								type="radio" class="form-check-input" name="admin" value="false" ${!admin ? 'checked' : ''} />User </label>
						</div>
						<div class="form-group pt-2">
							<button class="btn bg-dark text-white " formaction="user/create" disabled="disabled">Create</button>
							<button class="btn  bg-dark text-white" formaction="user/update" disabled="disabled">Update</button>
							<button class="btn bg-dark text-white " formaction="user/delete" disabled="disabled" style="background-color: #E5E5E5;">Delete</button>
							<button class="btn bg-dark text-white" formaction="user/reset" disabled="disabled">Reset</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row mt-3">
				<table class="table border">
					<thead class="thead-dark font-weight-bold  text-dark" style="background-color: #E5E5E5;">
						<tr>
							<td>User ID</td>
							<td>Password</td>
							<td>Fullname</td>
							<td>Email</td>
							<td>Role</td>
							<td>&nbsp;</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${userr}">
							<tr class="text-dark">
								<td>${item.id}</td>
								<td>${item.password}</td>
								<td>${item.fullname}</td>
								<td>${item.email}</td>
								<td>${item.admin ? 'Admin' : 'User'}</td>
								<td><a href="user/edit?id=${item.id}" class="text-dark">Edit</a> | <a href="user/delete?id=${item.id}" class="text-dark">Delete</a></td>
							</tr>
						</c:forEach>
					<tbody>
				</table>
			</div>
		</div>
    </div>
    <%@include file="/asmwebb/Websitebanhang/JSP/booter.jsp"%> 
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>