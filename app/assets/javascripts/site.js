// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})


$(document).ready(function() {
  
  $('.book_code').keyup(function(){
  	var valNoSpaces = $(this).val().replace(/\s+/g, '');
  	$(this).val(valNoSpaces);
  });

  $('#quotes').sortable({
  	update: function(event, ui) {
  		$.post($(this).data('update-url'), $(this).sortable('serialize'));
  	}
  });

});

