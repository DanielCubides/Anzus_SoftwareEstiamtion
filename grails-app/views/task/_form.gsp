<%@ page import="softwareestimation.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="task.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${taskInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="task.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="description" required="" value="${taskInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'hours', 'error')} required">
    <label for="hours">
        <g:message code="task.hours.label" default="Hours"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="hours" from="${0..8}" class="range" required=""
              value="${fieldValue(bean: taskInstance, field: 'hours')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'costEstimated', 'error')} required">
    <label for="costEstimated">
        <g:message code="task.costEstimated.label" default="Cost Estimated"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="costEstimated" value="${fieldValue(bean: taskInstance, field: 'costEstimated')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'priority', 'error')} required">
    <label for="priority">
        <g:message code="task.priority.label" default="Priority"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="priority" type="number" min="0" max="10" value="${taskInstance.priority}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'project', 'error')} required">
    <label for="project">
        <g:message code="task.project.label" default="Project"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="project" name="project.id" from="${softwareestimation.Project.list()}" optionKey="id" required=""
              value="${taskInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'user', 'error')} required">
    <label for="user">
        <g:message code="task.user.label" default="User"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="user" name="user.id" from="${softwareestimation.User.list()}" optionKey="id" required=""
              value="${taskInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'userHistory', 'error')} required">
    <label for="userHistory">
        <g:message code="task.userHistory.label" default="User History"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="userHistory" name="userHistory.id" from="${softwareestimation.UserHistory.list()}" optionKey="id"
              required="" value="${taskInstance?.userHistory?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'userhistory', 'error')} required">
    <label for="userhistory">
        <g:message code="task.userhistory.label" default="Userhistory"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="userhistory" name="userhistory.id" from="${softwareestimation.UserHistory.list()}" optionKey="id"
              required="" value="${taskInstance?.userhistory?.id}" class="many-to-one"/>

</div>

