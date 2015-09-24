<%@ page import="softwareestimation.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" maxlength="20" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'roll', 'error')} required">
	<label for="roll">
		<g:message code="user.roll.label" default="Roll" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="roll" from="${userInstance.constraints.roll.inList}" required="" value="${userInstance?.roll}" valueMessagePrefix="user.roll"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'memberships', 'error')} ">
	<label for="memberships">
		<g:message code="user.memberships.label" default="Memberships" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.memberships?}" var="m">
    <li><g:link controller="membership" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="membership" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'membership.label', default: 'Membership')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="user.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

