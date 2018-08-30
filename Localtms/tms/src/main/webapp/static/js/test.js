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
				console.log("SUCCESS: ", countryList);
				
			},
			error : function(e) {
				$("#getResultDiv").html("<strong>Error</strong>");
				console.log("ERROR: ", e);
			}
		});	
	}
})