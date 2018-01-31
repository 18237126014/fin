$(function() {

				var $update = $( '#preview > span' );

				$( "#slider" ).pagination( {
					total : 100,
					onChange : function( value ) {
						$update.text( value );
					}
				} );

	});