

jQuery(document).ready(function($) {

	// GET REQUEST
	$("#getAllCustomerId").click(function(event) {
		event.preventDefault();
		ajaxGet();
	});

	// DO GET
	function ajaxGet() {
		$.ajax({
			type : "GET",
			contentType : "application/json",
			url : "/tms/getCountry",
			success : function(countryList) {
				display(countryList);
				setSelectbox(countryList);
				console.log("SUCCESS: ", countryList);

			},
			error : function(e) {
				$("#getResultDiv").html("<strong>Error</strong>");
				console.log("ERROR: ", e);
			}
		});
	}
});

function display(countryList) {
	var json = "<h4>Ajax Response</h4><pre>"
			+ JSON.stringify(countryList, null, 1) + "</pre>";
	$('#feedback').html(countryList[0].countryId);
	// $('#feedback').html(json);
}

function setSateSelectbox(stateList) {

	var options = '<option value="-1">---Select---</option>';
	if (stateList != null) {
		$(stateList).each(
				function(index, value) {
					options = options + '<option value="' + value.stateId
							+ '">' + value.state_Name + '</option>';
				});
		$('#state').html(options);
	}
}

function setCitySelectbox(cityList) {

	var options = '<option value="-1">---Select---</option>';
	if (cityList != null) {
		$(cityList).each(
				function(index, value) {
					options = options + '<option value="' + value.cityId + '">'
							+ value.cityName + '</option>';
				});
		$('#city').html(options);
	}
}

function setSateSelectboxById(stateList) {

	var options = '<option value="-1">---Select---</option>';
	if (stateList != null) {
		$(stateList).each(
				function(index, value) {
					options = options + '<option value="' + value.stateId
							+ '">' + value.state_Name + '</option>';
				});
		$('#schoolAddressState').html(options);
	}
}

function setCitySelectboxById(cityList) {

	var options = '<option value="-1">---Select---</option>';
	if (cityList != null) {
		$(cityList).each(
				function(index, value) {
					options = options + '<option value="' + value.cityId
							+ '">' + value.cityName + '</option>';
				});
		$('#schoolAddressCity').html(options);
	}
}

function getAllState() {
	var state = $('#country').val();
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/tms/getState",
		data : {
			state : state
		},
		success : function(stateList) {
			setSateSelectbox(stateList);
			console.log("SUCCESS: ", stateList);

		},
		error : function(e) {
			$("#getResultDiv").html("<strong>Error</strong>");
			console.log("ERROR: ", e);
		}
	});

}

function getSchoolStateById() {
	var state = $('#schoolAddressCountry').val();
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/tms/getState",
		data : {
			state : state
		},
		success : function(stateList) {
			setSateSelectboxById(stateList);
			console.log("SUCCESS: ", stateList);

		},
		error : function(e) {
			$("#getResultDiv").html("<strong>Error</strong>");
			console.log("ERROR: ", e);
		}
	});

}

function getSchoolCityById() {
	var city = $('#schoolAddressState').val();
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/tms/getCity",
		data : {
			city : city
		},
		success : function(cityList) {
			setCitySelectboxById(cityList);
			console.log("SUCCESS: ", cityList);

		},
		error : function(e) {
			$("#getResultDiv").html("<strong>Error</strong>");
			console.log("ERROR: ", e);
		}
	});

}

function getAllCity() {
	var city = $('#state').val();
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "getCity",
		data : {
			
			city : city
		},
		success : function(cityList) {
			setCitySelectbox(cityList);
			console.log("SUCCESS: ", cityList);

		},
		error : function(e) {
			$("#getResultDiv").html("<strong>Error</strong>");
			console.log("ERROR: ", e);
		}
	});

}
//This is used for check all in address list table
$(document).ready(function() {
	$("#mytable #checkall").click(function() {
		if ($("#mytable #checkall").is(':checked')) {
			$("#mytable input[type=checkbox]").each(function() {
				$(this).prop("checked", true);
			});

		} else {
			$("#mytable input[type=checkbox]").each(function() {
				$(this).prop("checked", false);
			});
		}
	});
});

$(function() {
	$("[rel='tooltip']").tooltip();
});
//used to display the data in model popup when click on edit button.
$(document).ready(
		function() {
			$(document).on(
					'click',
					'.edit_data',
					function() {
						var schoolId = $(this).attr("id");
						$.ajax({
							url : "getSchoolAddrById",
							type : "GET",
							data : {
								schoolId : schoolId
							},
							dataType : "json",
							success : function(data) {
								console.log("SUCCESS: ", data);
								$('#schoolAddressId').val(data[0][0].addressId);
								$('#schoolId').val(data[0][0].schoolDetails.schoolId);
								$('#schoolAddress1').val(
										data[0][0].addressLane1);
								$('#schoolAddress2').val(
										data[0][0].addressLane2);
								$('#schoolAddressCountry').val(
										data[0][0].countryDetails.countryId);
								var stateoptions = '<option value="'
										+ data[0][0].stateDetails.stateId
										+ '">'
										+ data[0][0].stateDetails.state_Name
										+ '</option>';
								$('#schoolAddressState').html(stateoptions);
								var cityoptions = '<option value="'
									+ data[0][0].cityDetails.cityId
									+ '">'
									+ data[0][0].cityDetails.cityName
									+ '</option>';
							$('#schoolAddressCity').html(cityoptions);
							$('#schoolAddressEmail').val(data[0][0].addreesEmail);
						    $('#schoolAddressMobNo').val(data[0][0].addressMobNo);  
							$('#schoolAddressPhNo').val(data[0][0].addressPhoneNo);  
						    $('#schoolAddressZipNo').val(data[0][0].addressZip);  
							$('#edit').modal('show');
							}
						});
					});
		});

///used for edit the data by using model popup.......................
$(document).ready(
		function() {
			$('#update_form').on(
					"submit",
					function(event) {
						event.preventDefault();
						var display= $('#update_form').serialize();
						var formdata={
								addressId:$("#schoolAddressId").val(),
								schoolDetails:{
									           schoolId:$("#schoolId").val()	
								              },
						        addressLane1:$("#schoolAddress1").val(),
						        addressLane2:$("#schoolAddress2").val(),
						        countryDetails:{
						        	            countryId:$("#schoolAddressCountry").val()
						                       },
						        stateDetails:  {
						        	            stateId:$("#schoolAddressState").val()
							                    },
							    cityDetails:    {
							    	            cityId:$("#schoolAddressCity").val()
								                 },
							    addreesEmail:$("#schoolAddressEmail").val(),
							    addressMobNo:$("#schoolAddressMobNo").val(),
							    addressPhoneNo:$("#schoolAddressPhNo").val(),
							    addressZip:$("#schoolAddressZipNo").val(),
						}
						console.log("Update data",formdata);
						$.ajax({
							url : "/tms/updSchoolAddress",
							contentType : "application/json",
							type : "POST",
							data : 
							  
								JSON.stringify(formdata),
							
							dataType : "json",
							success : function(data1) {
								console.log("SUCCESS: ", data1);
							$('#edit').modal('hide');
							//$('#address_table_details').html(display);
							//location.reload(true);
							}
						});
					});
		});


//used for delete the addresss.....

$(document).ready(
		function() {
			var deleteSchoolId;
			$(document).on(
					'click',
					'.delete_data',
					function(event) {	
						 deleteSchoolId = $(this).attr("id");
						 $('#delete').modal('show');
					});
            $(document).on(
					'click',
					'.btn-success',
					function(event) {
						event.preventDefault();
						deleteSchoolById(deleteSchoolId);
					});					
		});
function deleteSchoolById(schoolId)
{
	$.ajax({
		url : "deleteSchoolAddrById",
		type : "POST",
		data : {
			schoolId : schoolId
		},
		dataType : "text",
		success : function(data) {
			console.log("SUCCESS: ", data);
		  $('#delete').modal('hide'); 
		}
	})
}