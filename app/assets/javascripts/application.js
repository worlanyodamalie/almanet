// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var arr = [];
var url = "/organisations/send_email";

 function setCookies(cname,cvalue,exdays) {
      var d = new Date();
      d.setTime(d.getTime() + (exdays*24*60*60*1000));
      var expires = "expires=" + d.toGMTString();
      document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  }


         function getCookie(cname) {
       var name = cname + "=";
      var decodedCookie = decodeURIComponent(document.cookie);
      var ca = decodedCookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}



$(document).ready(function () {






       // $('#recipient_id').val(getCookie("email_token"));


        $('input[type=checkbox]').click(function(){
            var output = $('input[type=checkbox]:checked').map(function(){ return this.value; }).get();
            //arr = output;
            console.log(JSON.stringify(output));
            $('#email_id').attr("data" , JSON.stringify(output));
            setCookies("email_token",  JSON.stringify(output) , 6000);

        });
            $('#email_id').click(function(){
                 console.log($(this).attr("data"));
                 console.log(getCookie);
                $(location).attr('href',url);

                 $('#recipient_id').val($(this).attr("data"));
            } );

        //   console.log(arr);





    });
