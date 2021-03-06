<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<c:choose>
		<c:when test="${empty personList}">
			<p>There aren't any people.</p>
		</c:when>
		<c:otherwise>
			<table class="bordered-table zebra-striped">
				<thead>
					<tr>
						<th>Person</th>
						<th>Username</th>
						<th>Title</th>
						<th>Work phone</th>
						<th>Mobile phone</th>
						<th>E-mail</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="person" items="${personList}">
						<c:url var="personUrl" value="/people/${person.username}" />
						<tr>
							<td>
								<a href="${personUrl}"><c:out value="${person.firstNameLastName}" /></a>
							</td>
							<td><c:out value="${person.username}" /></td>
							<td><c:out value="${person.title}" /></td>
							<td>
								<c:if test="${not empty person.workPhone}">
									<span class="telephone icon"><c:out value="${person.workPhone}" /></span>
								</c:if>
							</td>
							<td>
								<c:if test="${not empty person.mobilePhone}">
									<span class="mobilePhone icon"><c:out value="${person.mobilePhone}" /></span>
								</c:if>
							</td>
							<td>
								<c:if test="${not empty person.email}">
									<span class="email icon"><a href="mailto:<c:out value="${person.email}" />"><c:out value="${person.email}" /></a></span>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:otherwise>
	</c:choose>
</div>
