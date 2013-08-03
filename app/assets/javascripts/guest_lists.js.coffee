# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	 	$('#comments_list').dataTable({
	        sPaginationType: "full_numbers"
	        iDisplayLength: 10
	        bLengthChange: false
	        bRetrieve: true 
	        bDestroy: true 
	        });