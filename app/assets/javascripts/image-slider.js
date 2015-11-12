$(document).ready(function () {
  var display = $('.col-2-3 img').first().clone();
  $('.img-display').append(display);

  $('.col-2-3 img').on('click', function (){
    $('.img-display img').remove();
    var imgSelect = $(this).clone();
    $('.img-display').append(imgSelect);
  });

});
