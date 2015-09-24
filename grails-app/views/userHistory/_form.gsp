<%@ page import="softwareestimation.UserHistory" %>



<div class="fieldcontain ${hasErrors(bean: userHistoryInstance, field: 'collector', 'error')} ">
	<label for="collector">
		<g:message code="userHistory.collector.label" default="Collector" />
		
	</label>
	<g:select id="collector" name="collector.id" from="${softwareestimation.User.list()}" optionKey="id" value="${userHistoryInstance?.collector?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userHistoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="userHistory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userHistoryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userHistoryInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="userHistory.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${userHistoryInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userHistoryInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="userHistory.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${softwareestimation.Project.list()}" optionKey="id" required="" value="${userHistoryInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userHistoryInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="userHistory.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userHistoryInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['userHistory.id': userHistoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

