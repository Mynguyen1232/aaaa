<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
					<div class="mb-3 text-end">
						<mark>${message}</mark>
					</div>
					<div class="text-end">
						<button type="submit"
							class="btn btn-success ps-5 pe-5 text-dark border"
							style="background-color: bisque">login</button>
					</div>
				</form>