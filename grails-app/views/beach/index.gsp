
<%@ page import="org.model.Beach" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'beach.label', default: 'Beach')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-beach" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-beach" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="city" title="${message(code: 'beach.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'beach.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'beach.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="latitude" title="${message(code: 'beach.latitude.label', default: 'Latitude')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'beach.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="longitude" title="${message(code: 'beach.longitude.label', default: 'Longitude')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${beachInstanceList}" status="i" var="beachInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${beachInstance.id}">${fieldValue(bean: beachInstance, field: "city")}</g:link></td>
					
						<td>${fieldValue(bean: beachInstance, field: "country")}</td>
					
						<td><g:formatDate date="${beachInstance.date}" /></td>
					
						<td>${fieldValue(bean: beachInstance, field: "latitude")}</td>
					
						<td>${fieldValue(bean: beachInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: beachInstance, field: "longitude")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${beachInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
