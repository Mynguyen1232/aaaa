<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
			<c:forEach var="item" items="${sanpham}">
            <div class="mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
					 <div class="card text-center item">
					 <img src="asmweb/Websitebanhang/images/${item.hinh}" class="card-img-top" alt="...">
                                <div class="p-2">
                                <a href= class="text-dark">
                                    <p class="card-text text-start text-decoration: none " style="font-style: 12px" >
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
 
