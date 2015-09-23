<?php
/*
    Template Name: Contact
 */
get_header(); ?>
    <div class="breadcrumb">
        <div class="container">
            <h2>Contact Page</h2>
            <ul>
                <li><a href="#" title="Home">Home</a></li>
                <li><a href="#" title="Contact">Blog</a></li>
                <li>Standard Post</li>
            </ul>
        </div>
    </div>
       
    <div class="container">
        <div class="col-2-right-layout">
            <div class="main">
                <div class="col-main">
                    <div class="map" id="map" style="height: 308px;">
                    </div>

                    <div class="contact-info">
                        <h2>Contact infos</h2>

                        <form action="#" method="POST">
                            <div class="name">
                                <label for="name">Name (required)</label>
                                <input type="text" id="name" class="name">
                            </div>

                            <div class="email">
                                <label for="email">E-mail (required)</label>
                                <input type="text" id="email" class="email">
                            </div>

                            <div class="message">
                                <label for="message">Your Message</label>
                                <textarea name="message" id="message"></textarea>
                            </div>

                            <input type="submit" value="Send Now">
                        </form>

                        <ul class="info">
                            <li class="email"> 
                                <span>Email:</span> 
                                <a href="#" title="support@spiritstemplate.com">
                                    support@spiritstemplate.com
                                </a>
                            </li>
                            <li class="website"><span>Website:</span><a href="<?php echo esc_url( __( 'https://wordpress.org/', 'Spirits') ); ?>" title="pirate_dominic.com">Pirate_Dominic.com</a></li>
                            <li class="address"><span>Address:</span> Sheffield, Arundel Gate</li>
                        </ul>
                    </div>
                </div>
            </div>

            <?php get_sidebar(); ?>
        </div>
    </div>

    <!-- Google Map -->
    <script>
        var map;
        function initMap() {
          var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: -34.397, lng: 150.644},
            zoom: 16
          });
          var infoWindow = new google.maps.InfoWindow({map: map});
          
          // Try HTML5 geolocation.
          var pos;
          if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
               pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
              };
              infoWindow.setPosition(pos);
              infoWindow.setContent('Your current location.');
              map.setCenter(pos);

              // Add a marker at the center of the map.
              var marker = new google.maps.Marker({
                position: pos, 
                map: map,
                title: 'Hello World!'
              });

            }, function() {
              handleLocationError(true, infoWindow, map.getCenter());
            });
          } 

          else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
          }

          // This event listener calls addMarker() when the map is clicked.
          google.maps.event.addListener(map, 'click', function(event) {
            addMarker(event.latLng, map);
          });

        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
          infoWindow.setPosition(pos);
          infoWindow.setContent(browserHasGeolocation ?
                                'Error: The Geolocation service failed.' :
                                'Error: Your browser doesn\'t support geolocation.');
        }

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>

<?php get_footer(); ?>            