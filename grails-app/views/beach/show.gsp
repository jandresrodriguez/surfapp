
<%@ page import="org.model.Beach" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'beach.label', default: 'Beach')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
	</head>
	<body>
		<div id="show-beach" class="content scaffold-show" role="main">
			<h1>${beachInstance?.name}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div id="map-canvas" style="width: 100%; height: 250px"></div>
			

			<div class="fieldcontain">
				<span class="property-value" aria-labelledby="shortDescription-label">
					<g:fieldValue bean="${beachInstance}" field="shortDescription"/>
				</span>
				
			</div>

			<div class="fieldcontain">
				<span class="property-value">
					<g:fieldValue bean="${beachInstance}" field="location"/>, <g:fieldValue bean="${beachInstance}" field="city"/>, <span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${beachInstance}" field="country"/></span>
				
			</div>
		</div>

	<script type="text/javascript">
		/* MAP */
		var map;
		function initialize() {
		  var mapOptions = {
		    zoom: 8
		  };
		  map = new google.maps.Map(document.getElementById('map-canvas'),
		      mapOptions);

			var marker = new google.maps.Marker({
				position: new google.maps.LatLng(${beachInstance?.latitude}, ${beachInstance?.longitude}),
				map: map,
				title: "${beachInstance?.name}"
			}); 


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

	</body>
</html>
