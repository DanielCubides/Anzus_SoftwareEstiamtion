
<%@ page import="softwareestimation.Task" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-task" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list task">
			
				<g:if test="${taskInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="task.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${taskInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="task.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${taskInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.hours}">
				<li class="fieldcontain">
					<span id="hours-label" class="property-label"><g:message code="task.hours.label" default="Hours" /></span>
					
						<span class="property-value" aria-labelledby="hours-label"><g:fieldValue bean="${taskInstance}" field="hours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.costEstimated}">
				<li class="fieldcontain">
					<span id="costEstimated-label" class="property-label"><g:message code="task.costEstimated.label" default="Cost Estimated" /></span>
					
						<span class="property-value" aria-labelledby="costEstimated-label"><g:fieldValue bean="${taskInstance}" field="costEstimated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.priority}">
				<li class="fieldcontain">
					<span id="priority-label" class="property-label"><g:message code="task.priority.label" default="Priority" /></span>
					
						<span class="property-value" aria-labelledby="priority-label"><g:fieldValue bean="${taskInstance}" field="priority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="task.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${taskInstance?.project?.id}">${taskInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="task.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${taskInstance?.user?.id}">${taskInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.userHistory}">
				<li class="fieldcontain">
					<span id="userHistory-label" class="property-label"><g:message code="task.userHistory.label" default="User History" /></span>
					
						<span class="property-value" aria-labelledby="userHistory-label"><g:link controller="userHistory" action="show" id="${taskInstance?.userHistory?.id}">${taskInstance?.userHistory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${taskInstance?.userhistory}">
				<li class="fieldcontain">
					<span id="userhistory-label" class="property-label"><g:message code="task.userhistory.label" default="Userhistory" /></span>
					
						<span class="property-value" aria-labelledby="userhistory-label"><g:link controller="userHistory" action="show" id="${taskInstance?.userhistory?.id}">${taskInstance?.userhistory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:taskInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${taskInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
