<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>

<div id="map-canvas" style="width: 100%; height: 100%"></div>

<script type="text/javascript">
	/* MAP */
	var map;
	function initialize() {
	  var mapOptions = {
	    zoom: 8
	  };
	  map = new google.maps.Map(document.getElementById('map-canvas'),
	      mapOptions);

	 	<g:each var="beach" in="${beachList}">
	 		var marker = new google.maps.Marker({
	      position: new google.maps.LatLng(${beach.latitude}, ${beach.longitude}),
	      map: map,
	      title: "${beach.name}"
	  	}); 

	  	google.maps.event.addListener(marker, 'click', function() {
		    window.location = "<g:createLink action="show" id="${beach.id}"/>"
		  });
		</g:each>

		// Try HTML5 geolocation
	  if(navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(function(position) {
	      var pos = new google.maps.LatLng(position.coords.latitude,
	                                       position.coords.longitude);

	      var infowindow = new google.maps.InfoWindow({
	        map: map,
	        position: pos,
	        content: 'Ubicacion actual'
	      });

	      map.setCenter(pos);
	    }, function() {
	      handleNoGeolocation(true);
	    });
	  } else {
	    // Browser doesn't support Geolocation
	    handleNoGeolocation(false);
	  }
	}

	function handleNoGeolocation(errorFlag) {
	  if (errorFlag) {
	    var content = 'Error: The Geolocation service failed.';
	  } else {
	    var content = 'Error: Your browser doesn\'t support geolocation.';
	  }

	  var options = {
	    map: map,
	    position: new google.maps.LatLng(-34.894677, -56.165075),
	    content: content
	  };

	  var infowindow = new google.maps.InfoWindow(options);
	  map.setCenter(options.position);
	}

	google.maps.event.addDomListener(window, 'load', initialize);

</script>