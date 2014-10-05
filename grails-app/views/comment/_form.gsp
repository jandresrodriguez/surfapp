<%@ page import="org.model.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="comment.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${org.model.User.list()}" optionKey="id" required="" value="${commentInstance?.author?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} required">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comment" required="" value="${commentInstance?.comment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'parent', 'error')} required">
	<label for="parent">
		<g:message code="comment.parent.label" default="Parent" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parent" name="parent.id" from="${org.model.Post.list()}" optionKey="id" required="" value="${commentInstance?.parent?.id}" class="many-to-one"/>

</div>

