<%@ page import="softwareestimation.Membership" %>



<div class="fieldcontain ${hasErrors(bean: membershipInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="membership.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${softwareestimation.Project.list()}" optionKey="id" required="" value="${membershipInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: membershipInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="membership.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${softwareestimation.User.list()}" optionKey="id" required="" value="${membershipInstance?.user?.id}" class="many-to-one"/>

</div>

