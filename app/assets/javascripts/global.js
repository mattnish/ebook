;(function($, window, document, undefined){
  window.App = window.App || {};
  var _this, $window;

  $(function(){
    App.init();
  });

  var App = {
    init: function(){
      _this = this;
      $window = $(window);

      //  Set underscore template settings
      _.templateSettings = {
        interpolate : /\{\{(.+?)\}\}/g
      };
    }
  };

  $.extend(window.App, App);

})(jQuery, window, document);