
<%@ page import="org.model.Beach" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'beach.label', default: 'Beach')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-beach" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-beach" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list beach">
			
				<g:if test="${beachInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="beach.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${beachInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${beachInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="beach.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${beachInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${beachInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="beach.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${beachInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${beachInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="beach.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${beachInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${beachInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="beach.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${beachInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${beachInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="beach.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${beachInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${beachInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="beach.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${beachInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${beachInstance?.shortDescription}">
				<li class="fieldcontain">
					<span id="shortDescription-label" class="property-label"><g:message code="beach.shortDescription.label" default="Short Description" /></span>
					
						<span class="property-value" aria-labelledby="shortDescription-label"><g:fieldValue bean="${beachInstance}" field="shortDescription"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:beachInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${beachInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
