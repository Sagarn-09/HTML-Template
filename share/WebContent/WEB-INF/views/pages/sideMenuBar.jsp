<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<div class="sidebar" id="sidebar">
		<div class="sidebar-inner slimscroll">
			<div id="sidebar-menu" class="sidebar-menu">
				<ul>
					<li class="${sessionScope.mm== 'Home' ? 'active' : ' '}"><a
						href="${pageContext.request.contextPath}/homePage.do?mm=Home"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/dashboard.svg"
							alt="img"><span> Dashboard</span> </a></li>

					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/users1.svg"
							alt="img"><span> Users Management</span> <span
							class="menu-arrow"></span></a>
						<ul>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('User') && sessionScope.menuMasteUser['User'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addLogin.do?mm=addUser"
									class="${sessionScope.mm== 'addUser' ? 'active' : ' '}">New
										User </a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('User') && sessionScope.menuMasteUser['User'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayLogin.do?mm=displayUser"
									class="${sessionScope.mm== 'displayUser' ? 'active' : ' '}">Users
										List</a></li>
							</c:if>
						</ul></li>
					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/role-user.svg"
							alt="img"><span> Role Access</span> <span
							class="menu-arrow"></span></a>
						<ul>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Role Type') && sessionScope.menuMasteUser['Role Type'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addRoleType.do?mm=addRole"
									class="${sessionScope.mm== 'addRole' ? 'active' : ' '}">Add
										Role</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Role Type') && sessionScope.menuMasteUser['Role Type'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayRoleType.do?mm=displayRole"
									class="${sessionScope.mm== 'displayRole' ? 'active' : ' '}">Role
										List</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Role Assign Type') && sessionScope.menuMasteUser['Role Assign Type'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addRoleMenu.do?mm=addRoleMenu"
									class="${sessionScope.mm== 'addRoleMenu' ? 'active' : ' '}">Role
										Menu Access</a></li>
							</c:if>
							<%-- <c:if
									test="${sessionScope.menuMasteUser.containsKey('Role Menu Type') && sessionScope.menuMasteUser['Role Menu Type'].insertRecord=='true'}">
									<li><a
										href="${pageContext.request.contextPath}/addRoleMenuType.do">Add
											Menu</a></li>
								</c:if>
								<c:if
									test="${sessionScope.menuMasteUser.containsKey('Role Menu Type') && sessionScope.menuMasteUser['Role Menu Type'].displayRecord=='true'}">
									<li><a
										href="${pageContext.request.contextPath}/displayRoleMenuType.do">Menu
											List</a></li>
								</c:if> --%>
						</ul></li>
					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/location.svg"
							alt="img"><span> Location</span> <span class="menu-arrow"></span></a>
						<ul>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Item Location') && sessionScope.menuMasteUser['Item Location'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addItemLocationType.do?mm=addItemLocationType"
									class="${sessionScope.mm== 'addItemLocationType' ? 'active' : ' '}">Add
										Division</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Item Location') && sessionScope.menuMasteUser['Item Location'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayItemLocationType.do?mm=displayIteamLocationType"
									class="${sessionScope.mm== 'displayIteamLocationType' ? 'active' : ' '}">Division
										List</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Item Location') && sessionScope.menuMasteUser['Item Location'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addItemLocation.do?mm=addItemLocation"
									class="${sessionScope.mm== 'addItemLocation' ? 'active' : ' '}">Add
										Location</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Item Location') && sessionScope.menuMasteUser['Item Location'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayItemLocation.do?mm=displayItemLocation"
									class="${sessionScope.mm== 'displayItemLocation' ? 'active' : ' '}">Location
										List</a></li>
							</c:if>

							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Item Location') && sessionScope.menuMasteUser['Item Location'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/uploadLocation.do?mm=uploadLocation"
									class="${sessionScope.mm== 'uploadLocation' ? 'active' : ' '}">Location
										Excel Upload</a></li>
							</c:if>

						</ul></li>
					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/category.svg"
							alt="img"><span>Asset Type</span> <span class="menu-arrow"></span></a>
						<ul>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Asset Category') && sessionScope.menuMasteUser['Asset Category'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addAssetCategory.do?mm=addAssetCategory"
									class="${sessionScope.mm== 'addAssetCategory' ? 'active' : ' '}">Add
										Asset Type</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Asset Category') && sessionScope.menuMasteUser['Asset Category'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayAssetCategory.do?mm=displayAssetCategory"
									class="${sessionScope.mm== 'displayAssetCategory' ? 'active' : ' '}">Asset
										Type List</a></li>
							</c:if>
						</ul></li>
					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/material.svg"
							alt="img"><span> Asset</span> <span class="menu-arrow"></span></a>
						<ul>

							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Raw Material') && sessionScope.menuMasteUser['Raw Material'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addRawMaterialInward.do?mm=addRawMaterialInward"
									class="${sessionScope.mm== 'addRawMaterialInward' ? 'active' : ' '}">Add
										Asset</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Raw Material') && sessionScope.menuMasteUser['Raw Material'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayRawMaterialInward.do?mm=displayRawMaterialInward"
									class="${sessionScope.mm== 'displayRawMaterialInward' ? 'active' : ' '}">Asset
										List</a></li>
							</c:if>

							<c:if test="${sessionScope.mm == 'editAsset'}">
								<li><a
									class="${sessionScope.mm=='editAsset' ? 'active' : ' '}">
										Edit Asset</a></li>
							</c:if>

							<c:if test="${sessionScope.mm == 'assetDetails'}">
								<li><a
									class="${sessionScope.mm=='assetDetails' ? 'active' : ' '}">
										Asset Details</a></li>
							</c:if>

							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Raw Material') && sessionScope.menuMasteUser['Raw Material'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/uploadMaterial.do?mm=uploadMaterial"
									class="${sessionScope.mm== 'uploadMaterial' ? 'active' : ' '}">Asset
										Excel Upload</a></li>
							</c:if>
						</ul></li>

					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/material.svg"
							alt="img"><span> SRV Module</span> <span class="menu-arrow"></span></a>
						<ul>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('SRV Material') && sessionScope.menuMasteUser['SRV Material'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addSrvMaterial.do?mm=addSrvMaterial"
									class="${sessionScope.mm== 'addSrvMaterial' ? 'active' : ' '}">Add
										SRV Asset</a></li>
							</c:if>
							
							<c:if test="${sessionScope.mm == 'editSrvMaterial'}">
								<li><a
									class="${sessionScope.mm=='editSrvMaterial' ? 'active' : ' '}">
										Edit SRV Asset</a></li>
							</c:if>
							
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('SRV Material') && sessionScope.menuMasteUser['SRV Material'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displaySrvAsset.do?mm=displaySrvAsset"
									class="${sessionScope.mm== 'displaySrvAsset' ? 'active' : ' '}">
										SRV Asset List</a></li>
							</c:if>

							<c:if test="${sessionScope.mm == 'eyeSrvMaterial'}">
								<li><a
									class="${sessionScope.mm=='eyeSrvMaterial' ? 'active' : ' '}">
										SRV Asset Details</a></li>
							</c:if>

						</ul></li>

					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/inventory.svg"
							alt="img"><span> Inventory Session</span> <span
							class="menu-arrow"></span></a>
						<ul>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Tracking Session') && sessionScope.menuMasteUser['Tracking Session'].insertRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/addTrackingSession.do?mm=addTrackingSession"
									class="${sessionScope.mm== 'addTrackingSession' ? 'active' : ' '}">Add
										Tracking Session</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Tracking Session') && sessionScope.menuMasteUser['Tracking Session'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayTrackingSession.do?mm=displayTrackingSession"
									class="${sessionScope.mm== 'displayTrackingSession' ? 'active' : ' '}">Tracking
										Session List</a></li>
							</c:if>
						</ul></li>
					<li class="submenu"><a href="javascript:void(0);"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/report.svg"
							alt="img"><span> Report </span> <span class="menu-arrow"></span></a>
						<ul>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Display Inventory') && sessionScope.menuMasteUser['Display Inventory'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayInventory.do?mm=displayInventory"
									class="${sessionScope.mm== 'displayInventory' ? 'active' : ' '}">Inventory
										Scanned Asset</a></li>
								<li><a
									href="${pageContext.request.contextPath}/displayNotInventory.do?mm=displayNotInventory"
									class="${sessionScope.mm== 'displayNotInventory' ? 'active' : ' '}">Inventory
										Unscanned Asset</a></li>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Report') && sessionScope.menuMasteUser['Report'].displayRecord=='true'}">

								<li><a
									href="${pageContext.request.contextPath}/displayMaterialAllMaterial.do?mm=displayMaterialAllMaterial"
									class="${sessionScope.mm== 'displayMaterialAllMaterial' ? 'active' : ' '}">Asset
										Master</a></li>
								<li><a
									href="${pageContext.request.contextPath}/displayMaterialAllRegisterTagMaterial.do?mm=displayMaterialAllRegisterTagMaterial"
									class="${sessionScope.mm== 'displayMaterialAllRegisterTagMaterial' ? 'active' : ' '}">Registered
										Assets </a></li>
								<li><a
									href="${pageContext.request.contextPath}/displayMaterialAllNotRegisterTagMaterial.do?mm=displayMaterialAllNotRegisterTagMaterial"
									class="${sessionScope.mm== 'displayMaterialAllNotRegisterTagMaterial' ? 'active' : ' '}">Unregistered
										Assets </a></li>

								<%-- <li><a
									href="${pageContext.request.contextPath}/displayMaterialAllTagMaterial.do?mm=displayMaterialAllTagMaterial"
									class="${sessionScope.mm== 'displayMaterialAllTagMaterial' ? 'active' : ' '}">Tagged
										Assets </a></li> --%>



								<li><a
									href="${pageContext.request.contextPath}/displayMaterialAllUntagMaterial.do?mm=displayMaterialAllUntagMaterial"
									class="${sessionScope.mm== 'displayMaterialAllUntagMaterial' ? 'active' : ' '}">Untagged
										Assets </a></li>


								<%-- <li><a
									href="${pageContext.request.contextPath}/displayDailyRegistredMaterial.do?mm=displayDailyRegistredMaterial"
									class="${sessionScope.mm== 'displayDailyRegistredMaterial' ? 'active' : ' '}">Daily
										Asset Registration Report</a></li> --%>
							</c:if>
							<c:if
								test="${sessionScope.menuMasteUser.containsKey('Item Location') && sessionScope.menuMasteUser['Item Location'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/displayRegisteredLocation.do?mm=displayRegisteredLocation"
									class="${sessionScope.mm== 'displayRegisteredLocation' ? 'active' : ' '}">Registered
										Locations List</a></li>
							</c:if>

							<c:if
								test="${sessionScope.menuMasteUser.containsKey('History') && sessionScope.menuMasteUser['History'].displayRecord=='true'}">
								<li><a
									href="${pageContext.request.contextPath}/rawMaterialHistory.do?mm=rawMaterialHistory"
									class="${sessionScope.mm== 'rawMaterialHistory' ? 'active' : ' '}">Asset
										History</a></li>
							</c:if>

						</ul></li>
					<li><a href="${pageContext.request.contextPath}/logout.do"><img
							src="<%=request.getContextPath()%>/resource/assets/img/icons/log-out.svg"
							alt="img"><span>Logout</span> </a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>
