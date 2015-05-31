window.init_redactor = function(){
	var csrf_token = $('meta[name=csrf-token]').attr('content');
	var csrf_param = $('meta[name=csrf-param]').attr('content');
	var params;
	if (csrf_param !== undefined && csrf_token !== undefined) {
		params = csrf_param + "=" + encodeURIComponent(csrf_token);
	}
	$('.redactor').not('.redactified').redactor({
		"buttons": ['formatting', 'bold', 'italic', 'deleted', 'link'],
		"path":"/assets/redactor-rails",
		"css":"style.css"
	}).addClass('redactified');
};

$(document).on( 'page:load page:change', window.init_redactor );
