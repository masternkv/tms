


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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Address</title>
<style type="text/css">
.error {
	color: red;
}
.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<link href="<c:url value='static/css/bootstrap.css'/>"rel="stylesheet"></link>
<link href="<c:url value='static/css/tms.css'/>"rel="stylesheet"></link>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
<script
	src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="/static/js/tms.js"/>" type="text/javascript"></script>

</head>
<c:url var="addAction" value="/saveSchAddr"></c:url>
<div class="container">
		<div class="row main">
			<div class="main-login main-center">
			    <div class="row">
				<h5 style="text-align: center">Address Registration Form</h5>
				<form:form class="form-horizontal" action="${addAction}" modelAttribute="address">
				<spring:hasBindErrors name="address">
				<div class="alert alert-danger alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				 <strong>Error!</strong> Please fill mandatory filed.
		         <form:errors path="*" cssClass="alert alert-danger alert-dismissible fade in" element="div" />
                </div>
                <c:if test="${success}">
                <div class="alert alert-danger alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				 <strong>Error!</strong> Please fill mandatory filed.
                </div>
                </c:if>
				</spring:hasBindErrors>
					<!--<div class="row">--->
						<!---sepration of colum 1 ---->
						<div class="col-sm-5">
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">School
									Id</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> 
										<form:select class="form-control" path="schoolDetails.schoolId" id="dropDownSchoolId">
										<form:option value="-1" label="---Select---"></form:option>
					                    <form:options items="${schoolList}" />
									</form:select>
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Country
									</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> 
										<form:select class="form-control" path="countryDetails.countryId" id="country" onblur="getAllState()">
										<option value="-1" label="---Select---"></option>
					                    <form:options items="${countryList}" itemValue="countryId" itemLabel="counrtyName" />
									</form:select>
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">State
									</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
										 <form:select class="form-control" path="stateDetails.stateId" id="state">
										 <option value="-1" label="---Select---"></option>
									</form:select>
								</div>


							</div>
							<div class="form-group">
								<form:label for="name" path="addressCity" class="control-label col-sm-5">City
									</form:label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <select class="form-control">
										<option value="-1" label="---Select---"></option>
										<option value="1" label="Dombivili"></option>
									</select>
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Zip
									</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
										<form:input type="text"
										class="form-control" name="name" id="addressZip"
										placeholder="Enter Zip number " path="addressZip"  />
								</div> 
								</div>


							</div>
							<!---sepration of colum 2 ---->
						<div class="col-sm-7">
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Address
									Lane 1</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> 
										<form:input type="text"
										class="form-control" name="name" id="name"
										placeholder="Enter Address Lane " path="addressLane1"/>
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Address
									Lane 2</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <form:input type="text"
										class="form-control" name="name" id="name"
										placeholder="Enter Address Lane" path="addressLane2" />
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Email ID
									</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <form:input type="text"
										class="form-control" name="name" id="name"
										placeholder="Enter Address Lane " path="addreesEmail"/>
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Mobile No
									</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> <form:input type="text"
										class="form-control" name="name" id="name"
										placeholder="Enter Address Lane " path="addressMobNo" />
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Phone No
									</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span> 
										<form:input type="text" class="form-control"  placeholder="Enter Address Lane" path="addressPhoneNo" />
								</div>


							</div>
							<div class="form-group ">
							<input type="submit" class="btn btn-primary btn-lg btn-block address-button" value="Save">
						</div>
						</div>

						</div>
						
					<!--</div>--->
					
				</form:form>
			</div>
		</div>
		</div>

</body>
</html>
