$(document).ready(function() {

  // USER-PROFILE TABS AND PANELS
  $('.profile-tabs > a').on('click', function(){
    var panelId = $(this).attr('href');

    $(this).add(panelId)
      .addClass('active')
    .siblings()
      .removeClass('active');

    }).filter('[href="#orders"]')
      .trigger('click'); // END tabs

  // CURRENT ORDERS ACCORDION
  $('.order-details  > li').hide(); // hides on page load
  $('.buyer-info > h4').on('click', function(){
    if ($('.order-details > li').is(':hidden')) {
      $('.order-details > li').show();
    } else {
      $('.order-details > li').hide();
    }
  }); // END accordion
});
