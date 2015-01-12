;(function($, window, document, undefined){
  window.App = window.App || {};
  var _this, $window;

  $(function(){
    if($('[data-home-page]').length){
      Home.init();
    }
  });

  var Home = new function(){
    this.init = function(){
      _this = this;
      $window = $(window);
      console.log('homepage')
    };
  };

  window.App.Home = Home;

})(jQuery, window, document);