$(document).on('turbolinks:load', function() {
  $(function() {
    $('.tab-menu li').click(function() {
      var index = $('.tab-menu li').index(this);
      $('.tab-menu li').removeClass('active');
      $(this).addClass('active'); 
      $('.contents ul').removeClass('show').eq(index).addClass('show'); 
    });
  });
});
