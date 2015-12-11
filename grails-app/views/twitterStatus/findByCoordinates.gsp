<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <script src="http://maps.googleapis.com/maps/api/js"></script>
        <script>
        var map;
        var results = ${raw((results as grails.converters.JSON) as String)};

        function initialize() {
          var mapProp = {
            center:new google.maps.LatLng(41.389,2.1639),
            zoom:5,
            mapTypeId:google.maps.MapTypeId.ROADMAP
          };
          map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

          for(var i in results) {
            var myLatLng = {lat: results[i].coordinates[1], lng: results[i].coordinates[0]};

            var marker = new google.maps.Marker({
              map: map, title: results[i].screen_name, position: myLatLng
            });
            //map.setCenter(marker.getPosition())


            var content = '<div id="content">' + results[i].text + '</div>';
            var infowindow = new google.maps.InfoWindow()

            google.maps.event.addListener(marker,'click', (function(marker,content,infowindow){
              return function() {
                infowindow.setContent(content);
                infowindow.open(map,marker);
              };
            })(marker,content,infowindow));
          }
        }
        google.maps.event.addDomListener(window, 'load', initialize);

        </script>
    </head>
    <body>
      <div id="googleMap" style="width:100%;height:600px;"></div>


    </body>
</html>
