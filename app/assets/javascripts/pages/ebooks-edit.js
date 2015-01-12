;(function($, window, document, undefined){
  window.App = window.App || {};
  var _this, $window;

  $(function(){
    if($('[data-ebook-edit-page]').length){
      EbookEdit.init();
    }
  });

  var EbookEdit = new function(){
    this.init = function(){
      _this = this;
      $window = $(window);
      console.log('ebook edit')
      this.initPjax();
    };
    this.initPjax = function(){
      console.log('init pjax and check for url params');

      // if url params, then we need to replace page with pjax
      // $.pjax({url: '/ebooks/1/edit?page_type=chapter_page&page_id=1', container: '#pjax-container', timeout: 5000 });
    };
  };

  window.App.EbookEdit = EbookEdit;

})(jQuery, window, document);