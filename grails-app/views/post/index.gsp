
<%@ page import="org.model.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-post" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="post.author.label" default="Author" /></th>
					
						<th><g:message code="post.beach.label" default="Beach" /></th>
					
						<g:sortableColumn property="city" title="${message(code: 'post.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'post.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'post.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'post.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${postInstanceList}" status="i" var="postInstance">
					<g:if test="${postInstance?.photo_url}">
						<li class="fieldcontain">
							<img src="/surfapp/static/${postInstance.photo_url}">
						</li>
					</g:if>

					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						
					
						<td><g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "author")}</g:link></td>
					
						<td>${fieldValue(bean: postInstance, field: "beach")}</td>
					
						<td>${fieldValue(bean: postInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: postInstance, field: "country")}</td>
					
						<td><g:formatDate date="${postInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: postInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${postInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
