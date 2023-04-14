<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <header>
 	<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content pt-3 pb-3 pe-3">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-md-7 col-lg-7">
                            <img src="images/modal.jpg" class="img-fluid">
                        </div>
                        <div class="col-12 col-md-5 col-lg-5">
                            <div class="contaier-fuild"
                                style=" height: 100%;display: flex;flex-direction: column;justify-content: center;align-items: center;">
                                <p class="h1 fs-3 mt-4 mb-4 text-center">Newsletter</p>
                                <p class=" text-center" style="font-size: 13px;letter-spacing: 1px;">Subcribe and get
                                    10% off new collection</p>
                                <input class="form-control form-control-md" type="text" placeholder="Enter your email.."
                                    aria-label=".form-control-sm example">
                                <div class="button w-100 text-center">
                                    <button class="btn bg-dark m-4 text-light fw-bold rounded-pill"
                                        style="width: 120px;">Subcribe</button>
                                </div>
                                <div class="form-check" style="font-size: 14px;letter-spacing: 1px;">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Do not show this popup again
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top mb-1 p-3" style="background-color: #E5E5E5;">
        <div class="container-fluid" action="/asm2/giohang" method="post">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span><i class="fa-solid fa-bars"></i></span>
            </button>
            <a href="/asignment2/index"><img src="Websitebanhang/images/logo.jpg" alt="" class="img-fluid"></a>
            <div class="collapse navbar-collapse flex-grow-0" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown dropdown-mega position-static">
                        <a href="asmwebb/index.jsp" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown"aria-expanded="false"> 
                        <p> 
                                    Sofas</p>
                             </a>
                        <div class="dropdown-menu shadow">
                            <div class="mega-content px-md-4">
                                <div class="contaienr">
                                    <div class="row fw-bold">
                                        <div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
                                            <div class="list-group">
                                                <a href=" " class="list-group-item" style="font-weight: bold;">
                                                <p >Chairs</p>
                                                 </a>
                                                <a href="" class="list-group-item">Stonewave</a>
                                                <a href="" class="list-group-item">Stained glass</a>
                                                <a href="" class="list-group-item">Tatting</a>
                                                <a href="" class="list-group-item">Sewing</a>
                                                <a href="" class="list-group-item">Artisan</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
                                            <div class="list-group">
                                                <a href="" class="list-group-item" style="font-weight: bold;">Tables</a>
                                                <a href="" class="list-group-item">Basket weaving</a>
                                                <a href="" class="list-group-item">Crochet</a>
                                                <a href="" class="list-group-item">Papercutting</a>
                                                <a href="" class="list-group-item">Quiling</a>
                                                <a href="" class="list-group-item">Studio Craft</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
                                            <div class="list-group">
                                                <a href="" class="list-group-item" style="font-weight: bold;">Beds</a>
                                                <a href="" class="list-group-item">Paper model</a>
                                                <a href="" class="list-group-item">Calligraphy</a>
                                                <a href="" class="list-group-item">Marquetry</a>
                                                <a href="" class="list-group-item">Carpentry</a>
                                                <a href="" class="list-group-item">Stagecraft</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 py px-xl-5 px-4">
                                            <div class="list-group">
                                                <a href="" class="list-group-item"
                                                    style="font-weight: bold;">Cabinets</a>
                                                <a href="" class="list-group-item">Intarsia</a>
                                                <a href="" class="list-group-item">Stone carving</a>
                                                <a href="" class="list-group-item">Farrier</a>
                                                <a href="" class="list-group-item">Knife making</a>
                                                <a href="" class="list-group-item">Coppersmith</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Chairs</a>
                    </li>
                    <li class="nav-item dropdown">
                        <div class="dropdown-center">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                Cabinets</a>
                            <ul class="dropdown-menu">
                                <li><a href="#" class="dropdown-item">Action</a></li>
                                <li><a href="#" class="dropdown-item">Stone Carving</a></li>
                                <li><a href="#" class="dropdown-item">Farrier</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="listProduct.html">Chests</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Artian</a>
                    </li>
                    <li class="nav-item ">
                         
                          <a href="/asignment2/login" class="list-group-item mt-2" style="font-weight: bold;">
                                                <p >Login</p>
                                                 </a>
                    </li>
                </ul>
            </div>
           
            <ul>
            <a href="" class="text-dark text-decoration-none me-4" >
            <i class="bi bi-person-circle fs-4 " ></i>
            		${user}
            	</a>
            <a href="asmwebb/cart.jsp"type="button"class="position-relative link-dark text-decoration-none" >
              <span class="fs-2">
                <i class="bi bi-cart3 fs-3"></i>
              </span>
              <span
                class="position-relative top-1 start-80 translate-middle badge rounded-pill bg-dark"
              >
                <span
                        class="total-count" >0</span>
              </span>
            </a>
            <!-- <button class="clear-cart btn btn-danger">Clear
                    </button>
            
 				</ul> -->
        </div>
    </nav>
 </header>