<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Student Registration</title>
<link href="<c:url value='/static/css/css_student_regis.css'/>" rel="stylesheet"></link>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/jquery.easing.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/js/js_student_regis.js"/>" type="text/javascript"></script>
</head>
<body>
<div class="Baburao">
<!-- multistep form -->
<form id="msform">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active">Student Details</li>
		<li>Parents Details</li>
		<li >Address Details</li>
		<li>Upload Document</li>
		
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">Create Student Account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		<input type="text" name="fname" placeholder="First Name" />
		<input type="text" name="midname" placeholder="Middle Name" />
		<input type="text" name="lnmae" placeholder="Last Name" />
		<select class="gender_select" >
		<option value="Male">Male</option>
		<option value="FeMale">FeMale</option>
		</select>
		<input type="text" name="fathername" placeholder="Father Name" />
		<input type="text" name="mothername" placeholder="Mother Name" />
		<input type="tel" name="mobno" placeholder="Mobile No" maxlength="10" />
		<input type="text" name="grno" placeholder="GR No" />
		<input type="text" name="adharno" placeholder="Adhar Number" />
		<input type="text" name="cast" placeholder="Cast" />

		<input type="text" name="class" placeholder="Class"  />
		<input type="text" name="dob" placeholder="Birth Date"/>
		
		
		<input type="button" name="next" class="next action-button" value="Next" ></input>
		
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Parent Information</h2>
		<h3 class="fs-subtitle">This is Step 2</h3>
		<input type="text" name="fathername" placeholder="Father Name" />
		<input type="text" name="mothername" placeholder="Mother Name" />
		<input type="text" name="fedu" placeholder="Education" />
		<input type="text" name="medu" placeholder="Education" />
		<input type="tel" name="fmob" placeholder="Mobile No" maxlength="10" />
		<input type="tel" name="mmob" placeholder="Mobile No" maxlength="10" />
		<input type="text" name="foccp" placeholder="Occupation" />
		<input type="text" name="moccp" placeholder="Occupation" />
		<input type="text" name="fadhar" placeholder="Adhar No" />
		<input type="text" name="madhar" placeholder="Adhar No" />
		<input type="text" name="fpan" placeholder="Pan No" />
		<input type="text" name="mpan" placeholder="Pan No" />
		<input type="email" name="femail" placeholder="Email" />
		<input type="email" name="memail" placeholder="Email" />
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Adress Details</h2>
		<h3 class="fs-subtitle">Step 3</h3>
		<input type="text" name="flat" placeholder="Flat No / House no" />
		<input type="text" name="Building" placeholder="Building / House Name" />
		<input type="text" name="Street" placeholder="Street Name" />
		<input type="text" name="Landmark" placeholder="Landmark" />
		<input type="text" name="city" placeholder="City" />
		<input type="text" name="State" placeholder="State" />
		<input type="text" name="contry" placeholder="Country" />
		<input type="tel" name="contry" placeholder="Pincode" maxlength="6"/>
		
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
		
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Douments Upload</h2>
		<h3 class="fs-subtitle">Step 4</h3>
		<select>
		<option>Birth Certificate</option>
		<option>Last Year Marksheet</option>
		<option>Leaving Certificate</option>
		<option>Transfer Certificate</option>
		</select>
		<input type="file" name="document" />
		
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	</fieldset>
</form>
</div>
</body>
</html>