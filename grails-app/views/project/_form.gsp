<%@ page import="softwareestimation.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${projectInstance?.name}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'memberships', 'error')} ">
	<label for="memberships">
		<g:message code="project.memberships.label" default="Memberships" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.memberships?}" var="m">
    <li><g:link controller="membership" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="membership" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'membership.label', default: 'Membership')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="project.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'userhistories', 'error')} ">
	<label for="userhistories">
		<g:message code="project.userhistories.label" default="Userhistories" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.userhistories?}" var="u">
    <li><g:link controller="userHistory" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="userHistory" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'userHistory.label', default: 'UserHistory')])}</g:link>
</li>
</ul>


</div>

