
<%@ page import="org.model.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-post" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list post">
			
				<g:if test="${postInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="post.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="user" action="show" id="${postInstance?.author?.id}">${postInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.beach}">
				<li class="fieldcontain">
					<span id="beach-label" class="property-label"><g:message code="post.beach.label" default="Beach" /></span>
					
						<span class="property-value" aria-labelledby="beach-label"><g:link controller="beach" action="show" id="${postInstance?.beach?.id}">${postInstance?.beach?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="post.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${postInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="post.comments.label" default="Comments" /></span>
					
						<g:each in="${postInstance.comments}" var="c">
						<span class="property-value" aria-labelledby="comments-label"><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="post.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${postInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="post.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="post.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${postInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="post.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${postInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="post.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${postInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="post.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${postInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="post.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${postInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="post.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${postInstance}" field="title"/></span>
					
				</li>
				</g:if>

				<g:if test="${postInstance?.photo_url}">
				<li class="fieldcontain">
					<img src="/surfapp/static/${postInstance.photo_url}">
					
				</li>
				</g:if>

			
			</ol>
			<g:form url="[resource:postInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${postInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
