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
				$('#getResultDiv').html(countryList);
				display(countryList);
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
	$('#feedback').text(countryList[1].countryId);
	//$('#feedback').html(json);
}