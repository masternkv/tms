

<%-- 
    Document   : addCompany
    Created on : Feb 16, 2017, 7:55:36 AM
    Author     : NVerma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style type="text/css">
.error {
	color: red;
}
</style>
<link
	href="<c:url value='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'/>"
	rel="stylesheet"></link>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="/static/js/test.js"/>" type="text/javascript"></script>

</head>
<c:url var="addAction" value="/saveSchAddr"></c:url>
<form:form method="POST" action="${addAction}" modelAttribute="address">
	<table>
		<tr>
			<td>School Id:</td>
			<td><form:select path="schoolDetails.schoolId" id="dropDownSchoolId">
					<form:option value="-1" label="---Select---"></form:option>
					<form:options items="${schoolList}" />
				</form:select></td>
			<td><form:errors path="schoolDetails.schoolId" cssClass="error" /></td>
		</tr>
		<%--  <tr>
          <td><form:label path="">company_Id:</form:label></td>
          <td><form:input path="" value="${schoolList[1].schoolName}" readonly="true"/></td>
       </tr> --%>
		<tr>
			<td><form:label path="addressLane1">Address Lane1:</form:label></td>
			<td><form:input path="addressLane1" /></td>
			<td><form:errors path="addressLane1" cssClass="error" /></td>
		</tr>
		<tr>
			<td><form:label path="addressLane2">Address Lane2:</form:label></td>
			<td><form:input path="addressLane2" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><form:select path="countryDetails.countryId" id="country">
					<option value="-1" label="---Select---"></option>
					<option value="1" label="India"></option>
					<%-- <form:options items="${countryList}" itemValue="countryId"
						itemLabel="counrtyName" /> --%>
				</form:select></td>
			<td><form:errors path="countryDetails" cssClass="error" /></td>
		</tr>
		<tr>
			<td><form:label path="addressCity">City:</form:label></td>
			<td><form:input path="addressCity" /></td>
		</tr>
		<tr>
			<td><form:label path="addressState">State:</form:label></td>
			<td><form:input path="addressState" /></td>
		</tr>
		<tr>
			<td><form:label path="addressZip">Zip:</form:label></td>
			<td><form:input path="addressZip" /></td>
		</tr>
		<tr>
			<td><form:label path="addressPhoneNo">Phone Number:</form:label></td>
			<td><form:input path="addressPhoneNo" /></td>
		</tr>
		<tr>
			<td><form:label path="addressMobNo">Mobile Number:</form:label></td>
			<td><form:input path="addressMobNo" /></td>
		</tr>
		<tr>
			<td><form:label path="addreesEmail">Email:</form:label></td>
			<td><form:input path="addreesEmail" /></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input type="submit" value="SAVE" /></td>
		</tr>
	</table>
	<div class="col-sm-7" style="margin: 20px 0px 20px 0px">
		<button id="getAllCustomerId" type="button" class="btn btn-primary">Get
			All Customers</button>
		<div id="feedback" style="padding: 20px 10px 20px 50px"></div>
	</div>
</form:form>


</body>
</html>
