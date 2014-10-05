<%@ page import="org.model.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="30" pattern="${userInstance.constraints.username.matches}" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="user.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${userInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="user.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${userInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'date_of_birth', 'error')} required">
	<label for="date_of_birth">
		<g:message code="user.date_of_birth.label" default="Dateofbirth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date_of_birth" precision="day"  value="${userInstance?.date_of_birth}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'first_name', 'error')} required">
	<label for="first_name">
		<g:message code="user.first_name.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="first_name" required="" value="${userInstance?.first_name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'last_name', 'error')} required">
	<label for="last_name">
		<g:message code="user.last_name.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="last_name" required="" value="${userInstance?.last_name}"/>

</div>

