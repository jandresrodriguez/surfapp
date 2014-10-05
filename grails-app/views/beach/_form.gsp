<%@ page import="org.model.Beach" %>



<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="beach.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${beachInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="beach.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${beachInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="beach.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${beachInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="beach.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: beachInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="beach.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${beachInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="beach.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: beachInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="beach.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${beachInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: beachInstance, field: 'shortDescription', 'error')} required">
	<label for="shortDescription">
		<g:message code="beach.shortDescription.label" default="Short Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortDescription" required="" value="${beachInstance?.shortDescription}"/>

</div>

