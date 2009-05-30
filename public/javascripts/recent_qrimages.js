/*jslint browser:true */
/*globals jQuery */

(function($) {

  $(document).ready(function() {

    var container = $('#recent-qrimages');

    if (container && container.length > 0) {

      $.getJSON('/recent.json', function(data) {
        var i, images = [];
        if (data && data.length > 0) {
          for (i = 0; i < data.length; i += 1) {
            images.push('<img src="' + data[i] + '"/>');
          }
          container.html(images.join(''));
        }
      });

    }

  });

})(jQuery);
