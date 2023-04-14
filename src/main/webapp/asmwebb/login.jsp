<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


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
<link rel="stylesheet" href="asmwebb/Websitebanhang/css/index.css">

     
</head>
<body>
<%@include file="Websitebanhang/JSP/header.jsp"%>

<div class="container">
            <h1 class="inner fs-4 ms-5 mt-4">
                Log in to your account
            </h1>
            <div class="card rounded-0  mt-3 mb-5 ms-5 me-5">
                <div class="container ">
                    <form action="/asignment2/login" method="post" class="mt-3">
					<div class=" border  rounded   text-dark p-1 mb-3"
						style="background-color: #E5E5E5;">
						<h4 class=" text-center ">LOGIN</h4>
					</div>

					<div class="mb-3">
						<label for="disabledTextInput" class="form-label">Username:</label>
						<input type="text" name="username" class="form-control"
							value="${username}">
					</div>
					<div class="mb-3">
						<label for="disabledTextInput" class="form-label">Password:</label>
						<input type="password" name="password" class="form-control"
							value="${password}">
					</div>
					<div class="mb-2">
						<input type="checkbox" name="remember">Remember me ?
					</div>
					<hr>
					<div class="mb-3  ">
						<mark>${message}</mark>
					</div>
					<div class=" ">
						<button type="submit"
							class="btn btn-success ps-5 pe-5 text-dark border"
							style="background-color: bisque">login</button>
					</div>
				</form>

                    <hr>
                    <div class="no-account text-center m-3">
                        <a href="#" class="text-decoration-none text-secondary">
                            No account? Create one here
                        </a>
                    </div>
                </div>
            </div>
            
        </div>
        
	<%-- <div class="container d-flex justify-content-center align-items-center mt-5 ">
				 
					<form action="/asm1/loginservlet" method="post">
					<div class=" border  rounded   text-dark p-1 mb-3"
						style="background-color: #E5E5E5;">
						<h4 class=" text-center ">LOGIN</h4>
					</div>

					<div class="mb-3">
						<label for="disabledTextInput" class="form-label">Username:</label>
						<input type="text" name="username" class="form-control"
							value="${username}">
					</div>
					<div class="mb-3">
						<label for="disabledTextInput" class="form-label">Password:</label>
						<input type="password" name="password" class="form-control"
							value="${password}">
					</div>
					<div class="mb-2">
						<input type="checkbox" name="remember">Remember me ?
					</div>
					<hr>
					<div class="mb-3  ">
						<mark>${message}</mark>
					</div>
					<div class=" ">
						<button type="submit"
							class="btn btn-success ps-5 pe-5 text-dark border"
							style="background-color: bisque">login</button>
					</div>
				</form>
	</div>
	 --%>

</body>
</html>