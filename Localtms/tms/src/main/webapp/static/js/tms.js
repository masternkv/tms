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

function getAllState() {
	var state=$('#country').val();
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : "/tms/getState",
		data:{
			state:state
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
//This is used for check all in address list table
$(document).ready(function(){
	$("#mytable #checkall").click(function () {
	        if ($("#mytable #checkall").is(':checked')) {
	            $("#mytable input[type=checkbox]").each(function () {
	                $(this).prop("checked", true);
	            });

	        } else {
	            $("#mytable input[type=checkbox]").each(function () {
	                $(this).prop("checked", false);
	            });
	        }
	    });
	});

	 $(function () {
	            $("[rel='tooltip']").tooltip();
	        });
	 
	 
 $(document).ready(function(){
	 $(document).on('click', '.edit_data', function(){  
		 $('#edit').modal('show'); 
         var employee_id = $(this).attr("id");  
         $.ajax({  
              url:"/tms/getSchoolAddrById",  
              method:"GET",  
              data:{employee_id:employee_id},  
              dataType:"json",  
              success:function(data){  
                   $('#schoolAddress1').val(data.addressLane1);  
                   $('#schoolAddress2').val(data.addressLane2);  
                   /*$('#gender').val(data.gender);  
                   $('#designation').val(data.designation);  
                   $('#age').val(data.age);  
                   $('#employee_id').val(data.id);  
                   $('#insert').val("Update");  
                   $('#edit').modal('show'); */ 
              }  
         });  
    });
 });
	 
	 
	 
