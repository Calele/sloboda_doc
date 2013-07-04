// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
// = require jquery.ui.datepicker
//= require twitter/bootstrap
//= require_tree .
//= require jquery.validate
//= require jquery.validate.additional-methods


$(document).ready(function() 
{

	$(".project_id").dblclick(function()
  {
    var project_id = $(this).attr('project-id');
    console.log(project_id);

  });
  $("#a_Add").click(function()
  {
    console.log("sldk");
    $("#Add").modal('show');
  });

  $(function() 
  {
    $('.datepicker').datepicker( { dateFormat: "yy-mm-dd" } )

  });

  jQuery.validator.setDefaults
  ({
    debug: true,
    success: "valid"
  });

  $.validator.addMethod("deadline", function(value, element) 
  {
    return /(\d{4}\-\d{2}\-\d{2})/.test(value);
  },
  "Date is not valid.")

  $("#addProjectForm").validate
  ({
    rules : 
    {
      "project[name]": {required: true},
      "project[date_of_start]": {required: true, deadline: true},
      "project[deadline]": {required: true, deadline: true},
      "project[totally]": {required: true, digits: true},
      "project[paid]": {required: true, digits: true},
      "project[to_pay]": {required: true, digits: true},
      "project[comment]": {required: true} 
    }
  });

});

function call() 
{
    var msg = $('form#addProjectForm').serialize();
    msg = JSON.stringify(msg);
    console.log(msg);

}