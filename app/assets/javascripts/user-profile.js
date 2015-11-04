console.log("hello");
$(document).ready(function() {

  // USER-PROFILE TABS AND PANELS
  $('.profile-tabs > a').on('click', function(){
    var panelId = $(this).attr('href');

    $(this).add(panelId)
      .addClass('active')
    .siblings()
      .removeClass('active');

    }).filter('[href="#orders"]')
      .trigger('click');

  // CURRENT ORDERS ACCORDION
  $('.order-details  > li').hide();
  $('.buyer-info > h4').on('click', function(){
    $('.order-details  > li').show();
  });
});
