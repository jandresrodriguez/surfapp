<%@ page import="org.model.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="post.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${org.model.User.list()}" optionKey="id" required="" value="${postInstance?.author?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'beach', 'error')} required">
	<label for="beach">
		<g:message code="post.beach.label" default="Beach" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="beach" name="beach.id" from="${org.model.Beach.list()}" optionKey="id" required="" value="${postInstance?.beach?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="post.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${postInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="post.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${postInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['post.id': postInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="post.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${postInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="post.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${postInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="post.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: postInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="post.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: postInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="post.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rating" type="number" value="${postInstance.rating}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${postInstance?.title}"/>

</div>

<label for='fileName'>File:</label>	                
<input id="file" type="file" name="file" />


