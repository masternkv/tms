jQuery(document).ready(function($) {
	
	// GET REQUEST
	$("#getAllCustomerId").click(function(event){
		event.preventDefault();
		ajaxGet();
	});
	
	// DO GET
	function ajaxGet(){
		$.ajax({
			type : "GET",
			contentType : "application/json",
			url : "/tms/getCountry",
			success: function(countryList){
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
	//$('#feedback').html(json);
}

function setSelectbox(countryList)
{

	var options = '<option value="-1">---Select---</option>';
	if (countryList != null) {
		$(countryList).each(function(index, value) {
			options = options + '<option value="'+value.countryId+'">' + value.counrtyName + '</option>';
		});
		$('#country').html(options);
	}
}