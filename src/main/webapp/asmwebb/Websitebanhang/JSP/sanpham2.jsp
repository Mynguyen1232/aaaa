<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
					<div class="card text-center product">
						<img src="images/${param.image}" class="card-img-top" alt="...">
						<div class="p-2">
							<p class="card-text text-start " style="font-style: 12px">${param.tensp}
								</p>
							<div class="icon-rate text-start text-warning" style="font-size: 12px;">
								<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
								<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
								<i class="bi bi-star-fill"></i>
							</div>
							<p class="text-start" style="color: red; font-weight: 500;">${param.gia}
								 <sub style="color: green;"> ${param.giagiam}</sub>
							</p>
						</div>
					</div>