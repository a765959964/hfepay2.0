<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="page" uri="page" %> 
<%
   String path =  request.getContextPath();
   request.setAttribute("path", path);
%>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>账号更新</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN PAGE LEVEL STYLES -->
<jsp:include page="../../include/commoncss.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="${path}/resources/styles/bootstrap-select.css"/>
<link rel="shortcut icon" href="${currentChannelInfo.icon }"/>
<style type="text/css">
.hiddenRow{
	display: none;
}
</style>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content">
<%-- <jsp:include page="../../include/head.jsp"></jsp:include> --%>
<!-- BEGIN CONTAINER -->
<div class="page-container">
<%-- <jsp:include page="../../include/menu.jsp"></jsp:include> --%>
	<!-- BEGIN CONTENT -->
	<section id="ucenterSection">
			<%-- <div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="${path }/adminManage/index">首页</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="#" onclick="javascript:history.go(-1);">代理商账号管理</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<c:if test="${Obj == null}"><a href="#">账号新增 </a></c:if>
						<c:if test="${Obj != null}"><a href="#">账号更新</a></c:if>
					</li>
				</ul>
			</div> --%>
			<!-- END PAGE HEADER-->
			
			<!-- BEGIN SEARCH CONDITION -->
			<div class="portlet box ">
				<div class="portlet-body form">
					<!-- BEGIN FORM-->
					<form action="" class="form-horizontal" id="form" method="post">
						<div class="form-body">
							<input type="hidden" id="id"  name = "id" value="${Obj.id}">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">渠道名称</label>
										<div class="col-md-4">
											<%-- <input type="hidden" class="form-control channelNo" value="${Obj.channelNo}"> --%>
												<c:if test="${Obj == null}">
												<select  id="channelCode" class="form-control" name="channelCode">
													<option value="" selected = "selected">----请选择----</option>
														<c:forEach var="channel" items="${channelBaseList}">
															<option value = "${channel.channelNo}" >${channel.channelName} </option>
														</c:forEach>
												</select>
												</c:if>
												<c:if test="${Obj != null}">
												<select  id=""channelCode"" class="form-control" name=""channelCode"" disabled="disabled">
													<option value="" selected = "selected">----请选择----</option>
														<c:forEach var="channel" items="${channelBaseList}">
															<option value = "${channel.channelNo}" <c:if test="${Obj.channelCode==channel.channelNo}">selected="selected"</c:if>>${channel.channelName}</option>
														</c:forEach>
												</select>
												</c:if>
												<input type="hidden" id="channelNo"  name = "channelNo">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">代理商名称</label>
										<div class="col-md-4">
											<select id="agentNo" name="agentNo" class="form-control selectpicker show-tick" data-live-search="true">
												<option value=''>  --  请选择  --  </option>
												<c:forEach var="item" items="${agentBaseList}">
													<option value = "${item.agentNo}">${item.agentName}</option>
												</c:forEach>	
									        </select>
											<input type="hidden" class="form-control agentNo" value="${Obj.agentNo}">
										</div>
										<label style="color:red;display:none;" id="agentError">该渠道没有代理商，无法新增代理商用户！</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">账号</label>
										<c:if test="${Obj == null}">
											<div class="col-md-4">
												<input type="text" class="form-control ajaxCheck" id="userName"  name = "userName" value="${Obj.userName}" placeholder="账号">
											</div>
										</c:if>
										<c:if test="${Obj != null}">
											<div class="col-md-4" style="margin-top: 7px;">
												${Obj.userName}
												<input type="hidden" class="form-control" id="userName" name = "userName" value="${Obj.userName}">
											</div>
										</c:if>										
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">姓名</label>
										<div class="col-md-4">
											<input type="text" class="form-control" id="shortName" name="shortName" value="${Obj.shortName}"  placeholder="姓名">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">密码</label>
										<div class="col-md-4">
											<input type="password" class="form-control" id="password"  name = "password">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">重复密码</label>
										<div class="col-md-4">
											<input type="password" class="form-control" id="passwordstr" name="passwordstr">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">邮箱</label>
										<div class="col-md-4">
											<input type="text" class="form-control" id="email"  name = "email" value="${Obj.email}"   placeholder="邮箱">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="control-label col-md-2">联系电话</label>
										<div class="col-md-4">
											<input type="text" class="form-control" id="phone" name="phone" value="${Obj.phone}"   placeholder="手机号码或者座机号">
										</div>
									</div>
								</div>
							</div>
							
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label class="control-label col-md-2">账户角色</label>
											<div class="col-md-4">
												<input type="hidden" class="form-control roleId" value="${role.roleId}">
												<select id = "roleId" class="form-control" name="roleId">
													<c:forEach var="obj" items="${roles}">
														<option value = "${obj.id}" <c:if test="${role.roleId==obj.id}">selected="selected"</c:if> >${obj.description}--${obj.roleName}</option>
													</c:forEach>
												</select>
											</div>
											<label style="color:red;display:none;" id="roleError">该渠道没有设置角色，无法新增渠道用户！</label>
										</div>
									</div>
								</div>
							<div class="row">
								<div class="col-md-12">
									<div class="portlet box green-haze"></div>
									<div class="form-group">
										<label class="control-label col-md-2"></label>
										<div class="col-md-10">
											<button type="submit" class="btn green" id="save">保存</button>
											<button type="button" class="btn default" id="cancle">取消</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- END FORM-->
				</div>
			</div>
			<!-- END SEARCH CONDITION -->
	</section>
</div>
<!-- END CONTENT -->
<jsp:include page="../../include/footerjs.jsp"></jsp:include>
<!-- BEGIN PAGE LEVEL PLUGINS -->
<!-- 四级菜单不提供选中和三级菜单紧密绑定，在获取三级ID的时候相应的四级资源必须获取 -->
<div class="fade hide">
<c:forEach var="forth" items="${forthMap}" varStatus="statusforth">
	<div id="forth${forth.key}">
	<c:forEach var="forthMenu" items="${forth.value}" varStatus="statusFF"> 
		<input type="hidden" id="text${forthMenu.id}" value="${forthMenu.id}"/>
	</c:forEach>
	</div>
</c:forEach>
</div>

<script src="${path}/resources/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="${path}/resources/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="${path}/resources/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="${path}/resources/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="${path}/resources/scripts/bootstrap-select.js" type="text/javascript"></script>
<script src="${path}/resources/scripts/admin/commons/selectUtil.js?rnd=${version}" type="text/javascript"></script>

<script src="${path}/resources/scripts/admin/agentadmin/sysadmin/edit.js?rnd=${version}" type="text/javascript"></script>
<script src="${path}/resources/scripts/jquery.validate.js" type="text/javascript"></script>
<div style="display: none;" id="baseUrl">${path}</div>
</body>
<!-- END BODY -->
</html>