<!DOCTYPE html>
<html lang="en">
<head>


</head>
<body>
	<div class="header">
		<div class="header-left active">
			<a href="${pageContext.request.contextPath}/homePage.do?mm=Home" class="logo">
				<img
				src="<%=request.getContextPath()%>/resource/assets/img/logo.png"
				alt="">
			</a> <a href="${pageContext.request.contextPath}/homePage.do"
				class="logo-small"> <img
				src="<%=request.getContextPath()%>/resource/assets/img/logo-small.png"
				alt="">
			</a> <a id="toggle_btn" href="javascript:void(0);"> </a>
		</div>

		<a id="mobile_btn" class="mobile_btn" href="#sidebar"> <span
			class="bar-icon"> <span></span> <span></span> <span></span>
		</span>
		</a>

		<ul class="nav user-menu">

			<li class="nav-item dropdown has-arrow main-drop"><a
				href="javascript:void(0);" class="dropdown-toggle nav-link userset"
				data-bs-toggle="dropdown"> <span class="user-img"><img
						src="<%=request.getContextPath()%>/resource/assets/img/profiles/avator1.jpg"
						alt=""> <span class="status online"></span></span>
			</a>
				<div class="dropdown-menu menu-drop-user">
					<div class="profilename">
						<div class="profileset">
							<span class="user-img"><img
								src="<%=request.getContextPath()%>/resource/assets/img/profiles/avator1.jpg"
								alt=""> <span class="status online"></span></span>
							<div class="profilesets">
								<h6>${sessionScope.LOGGEDIN_USER.userName}</h6>
							</div>
						</div>
						<hr class="m-0">
						<a class="dropdown-item"
							href="${pageContext.request.contextPath}/editLogin.do?mm=addUser&loginId=${sessionScope.LOGGEDIN_USER.loginId}">
							<i class="me-2" data-feather="user"></i> My Profile
						</a>
						<hr class="m-0">
						<a class="dropdown-item logout pb-0"
							href="${pageContext.request.contextPath}/logout.do"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/log-out.svg"
							class="me-2" alt="img">Logout</a>
					</div>
				</div></li>
		</ul>
	</div>


</body>
</html>
