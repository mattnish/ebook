;(function($, window, document, undefined){
  window.App = window.App || {};
  var _this, $window;

  $(function(){
    if($('[data-ebook-list-page]').length){
      EbookList.init();
    }
  });

  var EbookList = new function(){
    this.init = function(){
      _this = this;
      $window = $(window);
      console.log('ebook list')
      this.initEbookCreation();
    };
    this.initEbookCreation = function(){
      $("[data-new-ebook]:first").on("ajax:success", function(e, data, status, xhr){
        console.log('ebook created')
        // TODO: CLEAR FORM AFTER SUCCESS
      }).on("ajax:error", function(e, xhr, status, error){
        console.log('ebook creation error', error)
        // TODO: DISPLAY ERROR
      });
    };
  };

  window.App.EbookList = EbookList;

})(jQuery, window, document);