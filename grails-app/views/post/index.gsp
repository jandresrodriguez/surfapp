
<%@ page import="org.model.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-post" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
				<g:each in="${postInstanceList}" status="i" var="postInstance">
					<g:if test="${postInstance?.photo_url}">
						<li class="fieldcontain">
							<img src="/surfapp/static/${postInstance.photo_url}">
							<br>
							<strong>Descripcion: </strong> ${fieldValue(bean: postInstance, field: "description")}
							<br>
							<strong>Ciudad: </strong> ${fieldValue(bean: postInstance, field: "city")}
							<br>
							<g:if test="${postInstance?.beach}">
								<strong>Playa: </strong> ${fieldValue(bean: postInstance, field: "beach")}
							</g:if>
							<br>
							<strong>Fecha: </strong><g:formatDate date="${postInstance.dateCreated}" />
						</li>
					</g:if>
				</g:each>
			<div class="pagination">
				<g:paginate total="${postInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
