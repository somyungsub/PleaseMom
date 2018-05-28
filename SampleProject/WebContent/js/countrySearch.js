	$( ".countrySearch" ).autocomplete({
		source: function( request, response ) {
	        $.ajax({
	            dataType: "json",
	            type : 'Get',
	            url: 'search/countrySearch.jsp',
	            data: { value : request.term },
	            success: function(data) {
	            	console.log(data);
	                // hide loading image
	            	var array = data.error ? [] : $.map(data, function(c) {
						return{
							country : c.country,
							location : c.location
						};
					});
	            	response(array);
	            }
	        });
	    },
	    focus: function( event, ui ) {
	    	event.preventDefault();
	    },
	    select: function(event, ui) {
	    	$(".countrySearch").val(ui.item.country);
	    	event.preventDefault();
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		var $a = $("<a></a>");
		$("<span class='c-country'></span>").text(item.country).appendTo($a);
		$("<span class='c-location'></span>").text(item.location).appendTo($a);
		return $("<li></li>").append($a).appendTo(ul);
	};
