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
<link rel="stylesheet" href="asmwebb/Websitebanhang/css/index.css">


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
	integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<meta charset="utf-8">


<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
	integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
	crossorigin="anonymous"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
	integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
	crossorigin="anonymous"></script>
<title>Insert title here</title>

</head>
<body>
	<%@include file="Websitebanhang/JSP/header.jsp"%>

	<div class="container p-5">
		<div class="row slickSliders">
			<c:forEach var="item" items="${sanpham}">
				<div class="col-md-5">
					<section class="page-content">
						<div class="mt-5"
							style="position: relative; text-align: center; width: 100%;"
							class="images-container">
							<img class="img-fluid"
								src="asmwebb/Websitebanhang/images/${item.hinh}" alt="">
							<div class="hidden-sm-down">
								<i class="bi bi-zoom-in"></i>
							</div>
						</div>
					</section>
				</div>

				<div class="col-md-7 pb-right-column">
					<a href="/asignment2/resultproduc?maSP=${item.masp}"
						class="text-dark text-decoration-none" data-name="${item.tensp}">
						<h3 style="font-weight: bold;">${item.tensp}</h3>
					</a>
					<div class="mb-3" id="product_comments_block_extra">
						<a style="text-decoration: none; color: rgb(79, 75, 75);" href="">
							<i class="bi bi-pencil-fill"></i> Write your review
						</a>
					</div>

					<p style="padding-top: 15px; color: rgb(79, 75, 75);">Donec
						porttitor lorem sit amet varius sagittis. Etiam auctor malesuada
						condimentum.</p>
					<div style="margin-bottom: 15px;">
						<span style="font-weight: bold;">Dimension</span>
					</div>
					<div style="margin-bottom: 15px;" class="size">
						<select
							style="padding: 9px 32px 9px 15px; font-size: 13px; background-color: #EBEBEB; border: #EBEBEB; color: #686464;"
							name="name">
							<option [selected] value="value">40x60cm</option>
							<option [selected] value="value">60-90cm</option>
							<option [selected] value="value">80-120cm</option>
						</select>
					</div>
					<div class="product-add-to-cart">
						<span class="control-label" style="font-weight: bold;">Quantity</span>
						<div class="product-quantity">
							<div class="qty">
								<div class="input-group bootstrap-touchspin">
									<span class="input-group-addon bootstrap-touchspin-prefix">
										<input style="border-radius: 0px;" id="quantity_wanted"
										type="number" value="1" class="input-group form-control">
									</span>
								</div>
							</div>
							<div class="add">

								<a href="#" data-name="${item.masp}" data-price="${item.giasp}"
									class="add-to-cart btn  mt-3 mb-2 text-dark"
									style="background-color: #E5E5E5;">Add to cart</a> </a>
							</div>
							<span id="product-availability"></span>
						</div>

						<div class="compare">
							<a style="text-decoration: none; color: #666666;" href=""> <i
								class="bi bi-repeat"></i> <span>Compare</span>
							</a>
						</div>
						<div class="wishlist">
							<a style="text-decoration: none; color: #666666;" href=""> <i
								class="bi bi-heart-fill"></i> Wishlist
							</a>
						</div>

					</div>
					<div class="product-additional-info">
						<div class="social-sharing">
							<span class="mt-1" style="float: left; margin-right: 10px;">Share</span>
							<ul style="float: left;">
								<li class="facebook "><a class="bi bi-facebook"></i></a></li>
								<li class="twitter "><a class="bi bi-twitter"></i></a></li>
								<li class="pinterest "><a class="bi bi-pinterest"></i></a></li>
							</ul>
						</div>
					</div>
					<div style="float: left; padding-left: 50px;"
						class="blockreassurance_product">
						<div>
							<span class="item-desc"> <span class="block-title">Security
									policy</span>
								<p>(edit with the Customer Reassurance module)</p>
							</span> <span class="item-desc"> <span class="block-title">Delivery
									policy</span>
								<p>(edit with the Customer Reassurance module)</p>
							</span> <span class="item-desc"> <span class="block-title">Return
									policy</span>
								<p>(edit with the Customer Reassurance module)</p>
							</span>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@include file="Websitebanhang/JSP/booter.jsp"%>
	<!-- This is container for footer -->
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
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<script src="asmwebb/Websitebanhang/js/web.js"></script>


</body>
</html>