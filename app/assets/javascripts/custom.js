var ready;
ready = function(){

	$(document).ready(function(){
		$(".slideme").hide();
		$(".expandbutton").on('click', function(){
	 		$(".slideme").fadeToggle(function(){
	 			$(".expandbutton").text(
	 				$(this).is(':visible') ? "Collapse (-)" : "Expand (+)")
	 		});
		});
	});

};

$(document).ready(ready);
$(document).on("page:load", ready);