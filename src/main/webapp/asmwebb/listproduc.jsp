<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<c:set var="id" value="0"></c:set>
		<c:forEach var="item" items="${listItem}">
			<div class="row">
				<div class="col-sm-3">
					<div class="card text-center product">
						<img src="asmweb/Websitebanhang/images/${item.image}"
							class="card-img-top" alt="...">
						<div class="p-2">
							<a href="/asm1/resultproduc?id=${item.id}">
								<p class="card-text text-start " style="font-style: 12px">${item.name}</p>
							</a>

							<div class="icon-rate text-start" style="font-size: 12px;">
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
							<p class="text-start" style="color: red; font-weight: 500;">
								${item.price} <sub style="color: green; font-weight: 500;"></sub>
							</p>
						</div>
					</div>
				</div>
			</div>
			<%-- <c:set var="id" value="${id+1}"></c:set> --%>
		</c:forEach>

	</div>

</body>
</html>