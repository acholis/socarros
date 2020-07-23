
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("trix")
require("@rails/actiontext")

require("jquery")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


$(document).ready(function(){

    if ( $('div.alert.fade.in').length ) {

        $('div.alert.fade.in').addClass("box-notification");
        $('div.alert.fade.in').addClass("box-notification-sombra");
        $('div.alert.fade.in').addClass("animateOpen");
    
        $('button.close').addClass("hide");
    
        setTimeout(function(){
            $(".box-notification.box-notification-sombra").removeClass("animateOpen");
            $(".box-notification.box-notification-sombra").addClass("animateClose");
            $(".box-notification.box-notification-sombra").remove();
        }, 3000);
    }

})