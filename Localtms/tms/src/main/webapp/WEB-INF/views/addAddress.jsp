


<%-- 
    Document   : addCompany
    Created on : Feb 16, 2017, 7:55:36 AM
    Author     : NVerma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link href="<c:url value='static/css/bootstrap.css'/>" rel="stylesheet"></link>
<link href="<c:url value='static/css/tms.css'/>" rel="stylesheet"></link>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"type="text/javascript"></script>
<script src="<c:url value="/static/js/bootstrap.js"/>"type="text/javascript"></script>
<%-- <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"type="text/javascript"></script> --%>
	
<script src="<c:url value="/static/js/tms.js"/>" type="text/javascript"></script>

</head>
<body class="img-responsive">
<c:url var="addAction" value="/saveSchAddr"></c:url>
<div class="container">
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#home">Add
				School Address</a></li>
		<li><a data-toggle="tab" href="#menu1">Address List</a></li>
	</ul>
	<div class="tab-content">
		<div id="home" class="row main tab-pane fade in active">
			<div class="main-login main-center">
				<div class="row">
					<h5 style="text-align: center">Address Registration Form</h5>
					<form:form class="form-horizontal" action="${addAction}"
						modelAttribute="address">
						<spring:hasBindErrors name="address">
							<div class="alert alert-danger alert-dismissible fade in">
								<a href="#" class="close" data-dismiss="alert"
									aria-label="close">&times;</a> <strong>Error!</strong> Please
								fill mandatory filed.
								<form:errors path="*"
									cssClass="alert alert-danger alert-dismissible fade in"
									element="div" />
							</div>
						</spring:hasBindErrors>
						<c:if test="${message !=null}">
							<div class="alert alert-danger alert-dismissible fade in"
								style="text-align: center">
								<a href="#" class="close" data-dismiss="alert"
									aria-label="close">&times;</a> <strong>${message}</strong>
							</div>
						</c:if>
						<!--<div class="row">--->
						<!---sepration of colum 1 ---->
						<div class="col-sm-5">
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">School
									Id</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:select class="form-control" path="schoolDetails.schoolId"
										id="dropDownSchoolId">
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
									<form:select class="form-control"
										path="countryDetails.countryId" id="country"
										onblur="getAllState()">
										<option value="-1" label="---Select---"></option>
										<form:options items="${countryList}" itemValue="countryId"
											itemLabel="counrtyName" />
									</form:select>
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">State </label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:select class="form-control" path="stateDetails.stateId"
										id="state" onblur="getAllCity()">
										<option value="-1" label="---Select---"></option>
									</form:select>
								</div>


							</div>
							<div class="form-group">
								<form:label for="name" path="cityDetails.cityId"
									class="control-label col-sm-5">City
									</form:label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:select class="form-control" path="cityDetails.cityId"
										id="city">
									</form:select>
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Zip </label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" name="name"
										id="addressZip" placeholder="Enter Zip number "
										path="addressZip" />
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
									<form:input type="text" class="form-control" name="name"
										id="name" placeholder="Enter Address Lane "
										path="addressLane1" />
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Address
									Lane 2</label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" name="name"
										id="name" placeholder="Enter Address Lane" path="addressLane2" />
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Email
									ID </label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" name="name"
										id="name" placeholder="Enter Address Lane "
										path="addreesEmail" />
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Mobile
									No </label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" name="name"
										id="name" placeholder="Enter Address Lane "
										path="addressMobNo" />
								</div>


							</div>
							<div class="form-group">
								<label for="name" class="control-label col-sm-5">Phone
									No </label>
								<div class="input-group col-sm-7">
									<span class="input-group-addon"><i class="fa fa-user fa"
										aria-hidden="true"></i></span>
									<form:input type="text" class="form-control"
										placeholder="Enter Address Lane" path="addressPhoneNo" />
								</div>


							</div>
							<div class="form-group ">
								<input type="submit"
									class="btn btn-primary btn-lg btn-block address-button"
									value="Save">
							</div>


						</div>
				</div>

				<!--</div>--->

				</form:form>
			</div>
		</div>
		<!-- Menu2 start herer.......- -->
		<div id="menu1" class="tab-pane fade">
			<div class="row">


				<div class="col-md-12">
					<h4>Bootstrap Snipp for Datatable</h4>
					<div class="table-responsive" >
						<table id="mytable" class="table table-bordred table-striped">
						
							<thead>
								<th><input type="checkbox" id="checkall" /></th>
								<th>Address Id</th>
								<th>School Id</th>
								<th>Address</th>
								<th>Email</th>
								<th>Mobile Number</th>
								<th>Phone Number</th>
								<th>Edit</th>
								<th>Delete</th>
							</thead>
							
							<tbody>
								<c:forEach var="schoolAddress" items="${allSchoolAddr}">
									<tr>
										<td><input type="checkbox" class="checkthis" /></td>
										<td>${schoolAddress[0].addressId}</td>
										<td>${schoolAddress[0].schoolDetails.schoolId}</td>
										<td>${schoolAddress[0].addressLane1},${schoolAddress[0].addressLane2},${schoolAddress[0].cityDetails.cityName}
											${schoolAddress[0].stateDetails.state_Name},${schoolAddress[0].countryDetails.counrtyName},${schoolAddress[0].addressZip}
										</td>
										<td>${schoolAddress[0].addreesEmail}</td>
										<td>${schoolAddress[0].addressMobNo}</td>
										<td>${schoolAddress[0].addressPhoneNo}</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button id="${schoolAddress[0].addressId}"
													class="btn btn-primary btn-xs edit_data" data-title="Edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete" >
												<button class="btn btn-danger btn-xs delete_data"
													data-title="Delete" id="${schoolAddress[0].addressId}">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
								</c:forEach>
							</tbody>

						</table>
						

						<div class="clearfix"></div>
						<ul class="pagination pull-right">
							<li class="disabled"><a href="#"><span
									class="glyphicon glyphicon-chevron-left"></span></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-chevron-right"></span></a></li>
						</ul>

					</div>

				</div>
			</div>
		</div>
		<!-- Menu2 ends here -->
	</div>


</div>
<!-- Model POPUP -->
<c:forEach var="schoolAddress" items="${allSchoolAddr}">
	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Edit Your
						Detail</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="update_form">
					   <div  class="form-group">
							<input class="form-control" type="text" name="addressId" id="schoolAddressId" readonly="readonly">
						</div>
						<div  class="form-group">
							<input class="form-control" type="text" name="schoolDetails.schoolId" id="schoolId" readonly="readonly">
						</div>
						<div class="form-group">
							<input class="form-control" type="text"  name="addressLane1" id="schoolAddress1"
								placeholder="Address Lane 2">
						</div>
						<div class="form-group">
							<input class="form-control " type="text"  name="addressLane2" id="schoolAddress2"
								placeholder="Address Lane 2">
						</div>
						<div class="form-group">
							<select class="form-control" name="countryDetails.countryId"
								id="schoolAddressCountry" onblur="getSchoolStateById()">
								<c:forEach var="setCountry" items="${countryList}">
									<option value="${setCountry.countryId}">${setCountry.counrtyName}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<select class="form-control" name="stateDetails.stateId"
								id="schoolAddressState" onblur="getSchoolCityById()">
							</select>
						</div>
						<div class="form-group">
							<select class="form-control" name="cityDetails.cityId"
								id="schoolAddressCity">
							</select>
						</div>
						<div class="form-group">
							<input class="form-control " type="text" name="addreesEmail"  id="schoolAddressEmail"
								placeholder="Email Id">
						</div>
						<div class="form-group">
							<input class="form-control " type="number" name="addressMobNo" id="schoolAddressMobNo"
								placeholder="Mobile Number">
						</div>
						<div class="form-group">
							<input class="form-control " type="number" name="addressPhoneNo" id="schoolAddressPhNo"
								placeholder="Phone Number">
						</div>
						<div class="form-group">
							<input class="form-control " type="number" name="addressZip" id="schoolAddressZipNo"
								placeholder="Zip Number">
						</div>
						
						<div class="form-group model-footer">
						<input type="submit" name="insert" id="insert" value="Update" class="btn btn-warning btn-lg"
						style="width: 100%;">
						</div>
						
						 
						<!-- <div class="modal-footer ">
					     <button type="button" class="btn btn-warning btn-lg"
						style="width: 100%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Update
					    </button>
				        </div> -->
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>



	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Delete this
						entry</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> Are you
						sure you want to delete this Record?
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" id="delete_yes" class="btn btn-success" data-dismiss="modal">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" id="delete_no" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
</c:forEach>
<!-- End of Model Popup -->
</body>
</html>
