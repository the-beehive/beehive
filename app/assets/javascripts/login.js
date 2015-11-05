$(document).ready(function(){
  // LOGIN DROP-DOWN MENU
  $(".user-login > ul").hide();
  $('.login-register > .log').on('click', function(){
    if ($('.user-login > ul').is(':hidden')) {
      $('.user-login > ul').show();
    } else {
      $('.user-login > ul').hide();
    }
  });
});
