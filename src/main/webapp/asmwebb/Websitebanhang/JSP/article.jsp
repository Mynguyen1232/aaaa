<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<article ng-controller="controllerForImageBanner" class="mt-5">
	<div class="container pb-1 pt-1 ">
		<div class="row">
			<div class="col">
				<div class="image-banner">
					<a href="" class="img-link" ng-repeat="s in imageBanner"><img
						src="asmwebb/Websitebanhang/images/{{s.image}}" class="img-fluid" alt=""></a>
				</div>
			</div>
		</div>

	</div>
</article>

