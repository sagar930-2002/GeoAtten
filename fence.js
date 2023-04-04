   window.onload = function () {
       var startPos;
       var startPosLat;
       var startPosLong;
       var distance;

       if (navigator.geolocation) {

           startPosLat = 22.5804288;
           startPosLong =  88.4473856;

           $("#startLat").text(startPosLat);
           $("#startLon").text(startPosLong);

           navigator.geolocation.getCurrentPosition(function (position) {
               $("#currentLat").text(position.coords.latitude);
               $("#currentLon").text(position.coords.longitude);

               distance = calculateDistance(startPosLat, startPosLong, position.coords.latitude, position.coords.longitude)
               $("#distance").text(distance);

               var modal = document.getElementById("myModal");
               var span = document.getElementsByClassName("close")[0];

               if (distance < .05) {
                    $("#message").text("Inside College");
                   document.getElementById("myBtn").disabled = false;
               } else if (distance > .05) {
                   document.getElementById("myBtn").disabled = true;
               }
               span.onclick = function () {
                   modal.style.display = "hidden";
               }
               window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "hidden";
  }
}
           });
       }
   };

   function calculateDistance(lat1, lon1, lat2, lon2) {
       var R = 6371; // km
       var dLat = (lat2 - lat1).toRad();
       var dLon = (lon2 - lon1).toRad();
       var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
           Math.cos(lat1.toRad()) * Math.cos(lat2.toRad()) *
           Math.sin(dLon / 2) * Math.sin(dLon / 2);
       var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
       var d = R * c;
       return d;
   }
   Number.prototype.toRad = function () {
       return this * Math.PI / 180;
   }
