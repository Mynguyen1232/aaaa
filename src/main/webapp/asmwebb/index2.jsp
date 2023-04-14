<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<link rel="stylesheet" href="asmwebb/Websitebanhang/css/index.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
        integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
     
<body ng-app="myApp">
	<%@include file="Websitebanhang/JSP/header2.jsp"%> 
	<%@include file="Websitebanhang/JSP/article.jsp" %> 
	<%@include file="Websitebanhang/JSP/body.jsp" %> 
	<%@include file="Websitebanhang/JSP/danhmuc_sp.jsp" %> 
	 <div class="container p-5"> 
	 	<div class="row slickSliders">
            <div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3"  ">
                  
				<jsp:include page="Websitebanhang/JSP/sanpham.jsp">
					<jsp:param name="image" value="item_1.jpg"/>
					<jsp:param name="sanpham" value="Beds"/>
					<jsp:param name="item1" value="Callipgraphy"/>
					<jsp:param name="item2" value="Marquetry"/>
					<jsp:param name="item3" value="Carpentry"/>
					<jsp:param name="button" value="View"/>
				</jsp:include>
				 
			 
            </div>
            <div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3" >
                  
				<jsp:include page="Websitebanhang/JSP/sanpham.jsp">
					<jsp:param name="image" value="item_2.jpg"/>
					<jsp:param name="sanpham" value="Tables"/>
					<jsp:param name="item1" value="Besket weaving"/>
					<jsp:param name="item2" value="Crochet"/>
					<jsp:param name="item3" value="Papercutting"/>
					<jsp:param name="button" value="View"/>
				</jsp:include>

            </div>
            <div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3"  >
                  
				<jsp:include page="Websitebanhang/JSP/sanpham.jsp">
					<jsp:param name="image" value="item_3.jpg"/>
					<jsp:param name="sanpham" value="Chairs"/>
					<jsp:param name="item1" value="Stonewave"/>
					<jsp:param name="item2" value="Stained glass"/>
					<jsp:param name="item3" value="Tatting"/>
					<jsp:param name="button" value="View"/>
				</jsp:include>			 
            </div>
            <div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3" >
                  
				<jsp:include page="Websitebanhang/JSP/sanpham.jsp">
					<jsp:param name="image" value="item_4.jpg"/>
					<jsp:param name="sanpham" value="Cabinets"/>
					<jsp:param name="item1" value="Intarsia"/>
					<jsp:param name="item2" value="Stone carving"/>
					<jsp:param name="item3" value="Coppersmith"/>
					<jsp:param name="button" value="View"/>
				</jsp:include> 
			 
            </div>
            
        </div>
			 
	</div>
	<%@include file="Websitebanhang/JSP/danhmuc_sp2.jsp" %> 
	 <div class="container p-5"> 
	 	<div class="row slickSliders">
	 	<c:forEach var="item" items="${sanpham}">
            <div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
					 <div class="card text-center item">
					 <img src="asmwebb/Websitebanhang/images/${item.hinh}" class="card-img-top" alt="...">
                                <div class="p-2">
                               
                                <a href= "/asignment2/resultproduc?maSP=${item.masp}"class="text-dark text-decoration-none">
                                    <p class="card-text text-start text-decoration-none " style="font-style: 12px" >
                                         ${item.tensp}
                                    </p>
                                    </a>
                                    <div class="icon-rate text-start" style="font-size: 12px;">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
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
         </div>  
			 
	</div>
	<%@include file="Websitebanhang/JSP/danhmuc_sp2.jsp" %> 
	
	<%@include file="Websitebanhang/JSP/body2.jsp"%> 
	<%@include file="Websitebanhang/JSP/booter.jsp"%> 
	
	
	
	 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>

    <!-- Slick Sliders Evondev -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"> </script>
    
    <script src="asmwebb/Websitebanhang/js/index.js"></script>
</body>
</html>