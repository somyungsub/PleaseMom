	$( ".airportSearch" ).autocomplete({
		source: function( request, response ) {
	        $.ajax({
	            dataType: "json",
	            type : 'POST',
	            url: 'search/airportSearch.jsp',
	            data: { value : request.term },
	            success: function(data) {
	                // hide loading image
	            	console.log(data)
	            	var array = data.error ? [] : $.map(data, function(m) {
						return{
							name : m.name,
							country : m.country,
							city : m.city
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
	    	$(this).val(ui.item.name);
	    	event.preventDefault();
		}
	}).data("ui-autocomplete")._renderItem = function(ul, item) {
		var $a = $("<a></a>");
		$("<span class='a-name'></span>").text(item.name).appendTo($a);
		$("<span class='a-country'></span>").text(item.country).appendTo($a);
		$("<span class='a-city'></span>").text(item.city).appendTo($a);
		return $("<li></li>").append($a).appendTo(ul);
	};
