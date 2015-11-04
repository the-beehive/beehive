console.log("hello");
$(document).ready(function() {
  $('.profile-tabs > a').on('click', function(){
    var panelId = $(this).attr('href');

    $(this).add(panelId)
      .addClass('active')
    .siblings()
      .removeClass('active');

    }).filter('[href="#orders"]')
      .trigger('click');
});
